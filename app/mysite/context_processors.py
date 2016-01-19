# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

from django.contrib.sites.models import Site

def site(request):
    return {
        'site': Site.objects.get_current()
    }
