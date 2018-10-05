import mysql.connector

class Con:
    def continentlist(self):
        cnx1 = mysql.connector.connect(user='david', password='12345', database='geography')
        cursor1 = cnx1.cursor()
        query1 = "SELECT continent FROM countries group by continent;"
        cursor1.execute(query1)
        
        for country1 in cursor1:
            x1 = str(country1)
            f = x1[3:-3]
            print f

    def railRoad(self, mode, cont):
        cnx2 = mysql.connector.connect(user='david', password='12345', database='geography')
        cursor2 = cnx2.cursor()
        query2 = "SELECT count(%s) FROM railroads where continent = '%s';" % (mode, cont)
        cursor2.execute(query2)
        
        for i in cursor2:
            x2 = str(i)
            f2 = x2[3:-3]
            print f2 
