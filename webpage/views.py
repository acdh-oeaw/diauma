import requests
from django.conf import settings
from django.contrib.auth import logout
from django.shortcuts import redirect, render
from django.views.generic import TemplateView


def user_logout(request):
    logout(request)
    return redirect("/login")


def handler404(request, exception):
    return render(request, "webpage/404-error.html")


def index(request):
    return render(request, "webpage/index.html")


class ImprintView(TemplateView):
    template_name = "maps/imprint.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        language = self.request.LANGUAGE_CODE
        redmine_id = settings.REDMINE_ID
        if language in ["en", "de"]:
            imprint_url = (
                f"https://imprint.acdh.oeaw.ac.at/{redmine_id}?locale={language}"
            )
        else:
            imprint_url = f"https://imprint.acdh.oeaw.ac.at/{redmine_id}"

        r = requests.get(imprint_url)

        if r.status_code == 200:
            context["imprint"] = "{}".format(r.text)
        else:
            context[
                "imprint"
            ] = """
            On of our services is currently not available.\
            Please try it later or write an email to\
            acdh@oeaw.ac.at; if you are service provide,\
            make sure that you provided ACDH_IMPRINT_URL and REDMINE_ID
            """
        return context
