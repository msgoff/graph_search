from django.shortcuts import render
from django.views.generic import ListView

class GraphView(ListView):

    def get(self,request,*args,**kwargs):
        pass

    def post(self, request, *args, **kwargs):
        pass
