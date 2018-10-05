import mysql.connector
from Continent import Con

class zyzyzx:
    def retCon(self):
        # connect to mysql
        cnx = mysql.connector.connect(user='david', password='12345', database='geography')
        # Uncomment to check if your connection is working
        # print "Success"
        
        cl = Con()
        print cl.continentlist()
        
        cont = raw_input("Enter a continent: ")
        c = cont.lower()
            
        try:
            cursor = cnx.cursor()
            # SQL db from FreeGeoDB   
            query = "SELECT name FROM geography.countries where continent = '%s';" % c
            cursor.execute(query)
            print '******************************************************'    
            for country in cursor:
                x = str(country)
                # clear out all of the extraneous characters
                final = x[3:-3]
                print final
            print '*******************************************************'
        except:
		print "Start Panicking! You Couldn't Connect." 
