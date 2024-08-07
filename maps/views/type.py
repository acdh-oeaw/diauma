from django.conf import settings
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import redirect, render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import DeleteView, UpdateView
from django_tables2 import RequestConfig

from maps.forms.type import TypeForm
from maps.model.type import Type
from maps.tables import TypeRelatedTable


@login_required
def index(request):
    roots = Type.objects.all().filter(parent=None)
    nav_tabs = ""
    for root in roots:
        nav_tabs += (
            '<li><a href="#'
            + root.name
            + '" data-toggle="tab">'
            + root.name
            + "</a></li>"
        )
    return render(
        request, "maps/type/index.html", {"roots": roots, "nav_tabs": nav_tabs}
    )


@login_required
def detail(request, pk):
    node = Type.objects.get(pk=pk)
    table = TypeRelatedTable(node.get_related_items())
    RequestConfig(
        request, paginate={"per_page": settings.TABLE_ITEMS_PER_PAGE}
    ).configure(table)
    ancestors = node.get_ancestors()
    root = ancestors[0] if ancestors else node
    return render(
        request,
        "maps/type/detail.html",
        {
            "node": node,
            "node_root": root,
            "descendants": node.get_descendants(),
            "table": table,
        },
    )


@login_required
def create(request, pk):
    parent = Type.objects.get(pk=pk)
    form = TypeForm(request.POST or None, initial={"parent": parent})
    if request.method == "POST" and form.is_valid():
        node = Type.objects.create(
            name=form["name"].data,
            info=form["info"].data,
            parent=Type.objects.get(pk=form["parent"].data),
        )
        return redirect("maps:type-detail", pk=node.id)
    return render(request, "maps/type/create.html", {"parent": parent, "form": form})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Type
    template_name = "maps/type/update.html"
    form_class = TypeForm
    success_message = "An entry has been updated."

    def get_success_url(self):
        return reverse("maps:type-detail", kwargs={"pk": self.object.pk})

    def post(self, request, *args, **kwargs):
        request.POST = request.POST.copy()
        node = self.get_object()
        parent = Type.objects.get(pk=request.POST["parent"])

        # Make some tests to avoid recursive connections
        if parent in node.get_descendants():
            message = "A type may not be made a child of any of its descendants."
            messages.error(self.request, message)
            return super(Update, self).get(request, *args, **kwargs)
        if parent == node:
            message = "A node may not be made a child of itself."
            messages.error(self.request, message)
            return super(Update, self).get(request, *args, **kwargs)
        return super(Update, self).post(request, *args, **kwargs)


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Type
    success_message = "An entry has been deleted."

    def get_success_url(self):
        ancestors = Type.objects.get(pk=self.object.pk).get_ancestors()
        if not ancestors:
            return reverse_lazy("maps:type")
        parent = ancestors.reverse()[0]
        return reverse("maps:type-detail", kwargs={"pk": parent.id})

    def delete(self, request, *args, **kwargs):
        node = self.get_object()
        if node.get_related_items() or node.get_descendants():
            messages.error(
                request,
                "A type can't be deleted if there are related entities or sub types.",
            )
            return redirect("maps:type-detail", pk=node.id)
        messages.success(self.request, self.success_message)
        return super(Delete, self).delete(request, *args, **kwargs)
