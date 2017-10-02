import bottle
from bottle import run, route, template, request, error

import pymongo
from pymongo import MongoClient

import datetime

from bson.objectid import ObjectId

client = MongoClient('localhost', 27017)


db = client.serverdb
si = db.serverinfo

plinks = client.linktest

maps = client.maps

languages = {"C++","Python","C#","HTML","Java"}


# LINKS -------------------------------------------------------

@route('/links_view')
def links_view():
    temp = client.data.links.find()
    return template('links_view', dict(name = temp))
	
@route('/links_add')
def links_add():
    temp = client.data.links.find()
    return template('links_add', dict(name = temp))
	
@route('/links_view/<tag>')
def links_view_tag(tag):
	temp = client.data.links.find({"tags": tag})
	return template('links_view', dict(name = temp))
	
@route('/links_insert', method='POST')
def links_insert():
	name = bottle.request.forms.get("name")
	url = bottle.request.forms.get("url")
	desc = bottle.request.forms.get("desc")
	tags = bottle.request.forms.get("tags")
	split_tags = tags.split(',')
	new_tags= map(str.strip, split_tags)
	
	newData = {'name':name,'url':url, 'desc':desc,'tags':new_tags}
	client.data.links.insert(newData)
	bottle.redirect('/links_view')
	
@route('/links_edit/<id>')
def links_edit(id):
	editObj = client.data.links.find_one({"_id": ObjectId(id)})
	return template('links_linkedit', dict(name = editObj))
	
@route('/links_update/<id>', method='POST')
def links_update(id):
	name = bottle.request.forms.get("name")
	url = bottle.request.forms.get("url")
	desc = bottle.request.forms.get("desc")
	tags = bottle.request.forms.get("tags")
	split_tags = tags.split(',')
	new_tags= map(str.strip, split_tags)
	newData = {'name':name,'url':url,'desc':desc,'tags':new_tags}
	client.data.links.update({"_id": ObjectId(id) },newData)
	bottle.redirect('/links_view')
	
@route('/links_delete/<id>')
def links_delete(id):
	client.data.links.delete_one({"_id": ObjectId(id)})
	bottle.redirect('/links_view')	
	


# END LINKS ---------------------------------------------------




# SNIPPETS -----------------------------------------------------

@route('/snippets_view')
def snippets_view():
    temp = client.data.snippets.find()
    return template('snippets_view', dict(name = temp))
	
@route('/snippets_add')
def snippets_add():
    temp = client.data.snippets.find()
    return template('snippets_add', dict(name = temp), lang = languages)
	
@route('/snippets_view/<tag>')
def snippets_view_tag(tag):
	temp = client.data.snippets.find({"tags": tag})
	return template('snippets_view', dict(name = temp))
	
@route('/snippets_edit/<id>')
def snippets_edit(id):
	editObj = client.data.snippets.find_one({"_id": ObjectId(id)})
	return template('snippets_snipedit', dict(name = editObj))
	

@route('/snippets_insert', method='POST')
def snippets_insert():
	name = bottle.request.forms.get("name")
	desc = bottle.request.forms.get("desc")
	lang = bottle.request.forms.get("lang")
	code = bottle.request.forms.get("code")
	tags = bottle.request.forms.get("tags")
	split_tags = tags.split(',')
	new_tags= map(str.strip, split_tags)
	newData = {'name':name,'desc':desc,'lang':lang,'code':code,'tags':new_tags}
	client.data.snippets.insert(newData)
	bottle.redirect('/snippets_view')
	
@route('/snippets_update/<id>', method='POST')
def snippets_update(id):
	name = bottle.request.forms.get("name")
	desc = bottle.request.forms.get("desc")
	lang = bottle.request.forms.get("lang")
	code = bottle.request.forms.get("code")
	tags = bottle.request.forms.get("tags")
	split_tags = tags.split(',')
	new_tags= map(str.strip, split_tags)
	newData = {'name':name,'desc':desc,'lang':lang,'code':code,'tags':new_tags}
	client.data.snippets.update({"_id": ObjectId(id) },newData)
	bottle.redirect('/snippets_view')
	
@route('/snippets_delete/<id>')
def snippets_delete(id):
	client.data.snippets.delete_one({"_id": ObjectId(id)})
	bottle.redirect('/snippets_view')

	
	
	
	


# END SNIPPETS ------------------------------------------------





@route('/')
def index():
    return template('index', name='phil')
	
	
@route('/login')
def login():
    return template('login', name='phil')
	
	

@route('/maps')
def login():
	data = client.maps.fixedmaps.find()
	return template('maps', dict(name = data))
	
@route('/start')
def start():
    return template('start')

@route('/list_databases')
def list_databases():
    data = client.database_names()
    return template('list_databases', dict(name = data))

@route('/list_databases/<datab>')
def list_databases_collect(datab):
    data = client[datab]
    te = data.collection_names()
    return template('list_collections', dict(name = te), n2 = datab)


@route('/list_databases/<datab>/<collect>')
def list_databases_collect(datab,collect):
    data = client[datab]
    te = data[collect]
    t4 = te.find()
    return template('list_data', dict(name = t4), n2 = datab, n3 = collect)
	
@route('/maps_insert')
def links():
    data = db.maps.fixedmaps.find()
    return template('add_map', dict(x = data))





@route('/links')
def links():
    data = db.linktest.fixedlinks.find()
    return template('links', dict(x = data))
	
@route('/insert_maps')	
def insert_maps():
    data = maps.fixedmaps.find()
    return template('insert_maps', dict(x = data))

@route('/bootstrap')
def bootstrap():
    data = plinks.links.find()
    return template('bootstrap', dict(x = data))

#@route('/links/add', method='POST')
#def links_add():
#	name = bottle.request.forms.get("name")
#	url = bottle.request.forms.get("url")
#	desc = bottle.request.forms.get("desc")
#	tags = bottle.request.forms.get("tags")
#	split_tags = tags.split(',')
#	newData = {'name':name,'url':url, 'desc':desc,'tags':split_tags}
#	plinks.fixedlinks.insert(newData)
#	bottle.redirect('/list_databases/linktest/fixedlinks')
	
@route('/maps/add', method='POST')
def maps_add():
	company = bottle.request.forms.get("company")
	phone = bottle.request.forms.get("phone")
	address = bottle.request.forms.get("address")
	latitude = bottle.request.forms.get("latitude")
	longitude = bottle.request.forms.get("longitude")
	newData = {'company':company,'phone':phone, 'address':address,'latitude':latitude,'longitude':longitude}
	maps.fixedmaps.insert(newData)
	bottle.redirect('/maps')

@route('/register')
def register():
    return '<h1>on register</h1>'

@route('/user/<name>')
def user(name):
    return '<h1>You are ' + name + '</h1>'

@route('/posted', method='POST')
def posted():
    return '<h1>Posted</h1>'


@route('/jsondata')
def jsondata():
    return {"name" : "jsondata", "myList" : [1,2,3,4,5]}

@route('/querytest')
def querytest():
    param1 = request.query.param1
    param2 = request.query.param2
    return 'Param1 is ' + param1 + ' Param 2 is' +param2

@error(404)
def error404(error):
    return '<h2>404 Page does not exist</h2>'

@route('addData')
def addData():
    myList = si.find()
    return bottle.template('index', dict(myNames = mynames_list))

@route('/enterdata', method='POST')
def enterdata():
    name = bottle.request.forms.get("name")
    maxplayers = bottle.request.forms.get("maxplayers")
    currentplayers  = bottle.request.forms.get("currentplayers")
    ipaddress = bottle.request.forms.get("ipaddress")
    maps = bottle.request.forms.get("map")
    gametype = bottle.request.forms.get("gametype")
    serverdata.insert(name,maxplayers,currentplayers,ipaddress,maps,gametype)



run(host='0.0.0.0', port=80, debug=True, reloader=True)
