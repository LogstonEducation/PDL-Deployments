import random

from django.views.generic.base import TemplateView


class IndexView(TemplateView):
    template_name = "app/index.html"

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['number'] = random.randint(1, 5)
        return context
