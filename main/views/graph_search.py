from django.shortcuts import render
from django.views.generic import ListView

class GraphSearchView(ListView):
    template_name = "main.html"

    def get(self,request,*args,**kwargs):
        return render(request,self.template_name)

    def post(self, request, *args, **kwargs):
        pass
