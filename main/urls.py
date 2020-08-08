from django.urls import path
from django.urls import include

from main.views import graph_search

app_name = "main"

urlpatterns = [
        path("",graph_search.GraphSearchView.as_view())
        ]
