from django.contrib import admin
from django.urls import path
from django.urls import include

urlpatterns = [
        path("",include("main.urls", namespace="main"))
        #path("admin/", admin.site.urls),
]
