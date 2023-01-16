from django.http import HttpResponse

def main_view(request):
    return HttpResponse('<h1>I am hello word</h1>')

def main_bye(request):
    return HttpResponse('<h1>Bye</h1>')