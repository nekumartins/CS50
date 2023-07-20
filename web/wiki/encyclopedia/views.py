from django.shortcuts import render

from . import util

from markdown import Markdown


def convert(title):
    md = Markdown()
    if title :
        return md.convert(title)
    else :
        return None
    


def index(request):
    return render(request, "encyclopedia/index.html", {
        "entries": util.list_entries()
    })
 
def title(request, TITLE):
    content = convert(util.get_entry(TITLE))
    entry = TITLE
    if content :
        return render(request, "encyclopedia/titles.html", {
        "entry" : entry,
        "entries" : content
        })
    else :
        return render(request,"encyclopedia/errors.html",{
            "entry": entry,
        } )
