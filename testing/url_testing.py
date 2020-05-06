import urllib3

def test_home():
    http = urllib3.PoolManager()
    r = http.request('GET', "http://elb/petclinic")
    assert r.status == 200

def test_welcome():
    http = urllib3.PoolManager()
    r = http.request('GET', "http://elb/petclinic/welcome")
    assert r.status == 200

def test_all_owners():
    http = urllib3.PoolManager()
    r = http.request('GET', "http://elb/petclinic/owners")
    assert r.status == 200

def test_all_vets():
    http = urllib3.PoolManager()
    r = http.request('GET', "http://elb/petclinic/vets")
    assert r.status == 200

def test_all_pet_types():
    http = urllib3.PoolManager()
    r = http.request('GET', "http://elb/petclinic/pettypes")
    assert r.status == 200

def test_specialities():
    http = urllib3.PoolManager()
    r = http.request('GET', "http://elb/specialties")
    assert r.status == 200

