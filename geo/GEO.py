import mysql.connector 
from countries import zyzyzx
from cities import city
from Continent import Con

print "Continent, Country or Railroad. To end enter 'end'"
ch = ""

while ch != "end":
    ch = raw_input("Enter Here: ")
    ch = ch.lower()
    
    if ch == "continent":
        print "You selected Continents. Choose a Contient: "
        w = zyzyzx()
        w.retCon()
    elif ch == "railroad":
        mode = raw_input("mult_track or electric: ")
        cont = raw_input("enter a continent: ")
        rr = Con()
        rr.railRoad(mode,cont)
    elif ch == "country":
        print "You selected Countries. Enter a country for all the cities within that country: "
        o = city()
        o.cityPrint()
    elif ch == "end":
        exit()
    else:
        exit()
