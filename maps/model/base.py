from django.db.models import DateTimeField, Model


class BaseModel(Model):
    created_date = DateTimeField(auto_now_add=True)
    modified_date = DateTimeField(auto_now=True)

    class Meta:
        abstract = True
        ordering = ["name"]
