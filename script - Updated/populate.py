import random
import time
import os
from os import listdir

def showPath():
    path = os.getcwd()
    print("PATH: ")
    print(path + "\n")
    return path

#Shows files in current directory
def showFiles():
    files= os.listdir(path)
    print "FILES: "
    j=1
    for i in files:
        print str(j)+") "+i
        j=j+1
    print "\n"
    return files

#opens a file in current directory
def openFile(x):
    f = open(files[x-1], "r")
    contents=[f.read()]
    print "\nCurrent File-: "+files[x-1]
    f.close()
    return contents

#seperates items in file
def splitFile(contents):
    for line in contents:
        lines = line.split('\n')
    return lines    

path=showPath()

files=showFiles()

print "Choose two files to generate a first and last name \n"
first_names = input('Select a first file (First name) -> ')
last_names = input('Select a second file (Last name) -> ')

#first name
contents1= openFile(first_names)
#last name
contents2= openFile(last_names)

splitContent1= splitFile(contents1)
splitContent2= splitFile(contents2)


numOfCustomers = input('\nHow many users do you want to generate? ')

########################################
# user table
########################################
print "\n\t\tSQL data being created...."
#open SQL file
sql_file=open('DATABASE_PROJECT.sql', 'w+')

numOfUsers = 2*numOfCustomers
# generate semi-random user ids
id_list = []
for i in range(0,numOfUsers):
    id_list.append(3300000+i)

# save random user ids
user_file = open("user.txt","w")
for u in id_list:    
    user_file.write(str(u)+"\n")

#creating user table 
tables=open('InitializeTables.sql', 'r')

sql_file.write(tables.read())
sql_file.write("\n\n/*--User--*/\n\n")

def generateInsertUser():
    for c in range(0,len(id_list)-1):
        sql_file.write("insert into user(user_id) values(\n")
        sql_file.write(str(id_list[c])+");\n")
    #sql_file.write(str(id_list[c+1])+"\n")
    #sql_file.close()
    
generateInsertUser()

''''''
###########################################
# Account table
###########################################
fname=[]
lname=[]
email=[]
domain=["gmail","hotmail","live","yahoo","outlook","icloud","company","university","organization"]
cal_count = []
p_cals = []
password= []
number = '0123456789'
alpha = 'abcdefghijklmnopqrstuvwxyz'
print "\n\t\tGenerating id for each customer... \n"
#Random user data
for i in range (0,numOfCustomers+500):
        p_cals.append(25005+i)
        randomFname=splitContent1[random.randint(0, len(splitContent1)-1)]
        randomLname=splitContent2[random.randint(0, len(splitContent2)-1)]
        fname.append(randomFname)
        lname.append(randomLname)
        randomDomain=domain[random.randint(0, len(domain)-1)]
        email.append(randomFname+"."+randomLname+"@"+ randomDomain+".com")
        pword = ''
        for i in range(0,14):
            pword += random.choice(number)
            pword += random.choice(alpha)
        password.append(pword)
        
 
#creates (cus_id, f_name, l_name)
zippedCus=zip(id_list,p_cals, fname, lname, email, password)

#writes the above to a account file
account_file=open('account.txt', 'w+')
for cus in zippedCus:    
    account_file.write(str(cus)+"\n")
account_file.close()

#shows files in current directory    
files=showFiles()

print "\nOpen the Account file (A list of tuples with first and last name "
z = input('Select the Account file -> ')
customers= openFile(z)

splitCustomers=splitFile(customers)

sql_file.write("\n\n/*--Account--*/\n\n")

#generates inserts in sql for 100000 customers records
def generateInsertAccount():
    for c in range(0,numOfCustomers-1):
        sql_file.write("insert into account(account_id, preferred_calories, first_name, last_name, email,password_hash) values\n")
        sql_file.write(str(splitCustomers[c])+";\n")
    #sql_file.write(str(splitCustomers[c+1])+"\n")
    #sql_file.close()
    
generateInsertAccount()

#####################################
#   Food Item
#####################################
print "\nOpen the the ingredient file:  "
ing = input('Select the Ingredient file -> ')
ingr_file= openFile(ing)
sql_file.write("/*-- Food_Item--*/\n")
ingre_s = splitFile(ingr_file)
item_id = []
msrmt = []
clry =[]
itm_name = []
for i in range(0,500):#~500 ingredients
    item_id.append(888000+i)
    clry.append(444000+i)
    itm_name.append(ingre_s[i])
fitems = zip(item_id,clry,itm_name)
    
def generateFoodItem():
    for c in range(0,499):
        sql_file.write("insert into food_item(item_id, calories, item_name) values\n")
        sql_file.write(str(fitems[c])+";\n")
    #sql_file.write(str(fitems[c+1])+"\n")
generateFoodItem()
#######################################
#   Item Table
#######################################

#ingr_file = open("ingredients.txt","w+") # 537 entries
quantity = []
price = []
i_id = []

for i in range(0,250):
    i_id.append(ingre_s[random.randint(0, len(item_id)-1)])
    quantity.append(777000+i)
    price.append(555000.00+i)

zipedItems = zip(item_id,quantity,price)
sql_file.write("/*--Items--*/\n")
def generateInsertItem():
    for c in range(0,249):
        sql_file.write("insert into item(item_id, quantity, price) values")
        sql_file.write(str(zipedItems[c])+";\n")
    #sql_file.write(str(splitCustomers[c+1])+"\n")
    #sql_file.close()
generateInsertItem()


#####################################
#   Ingredient 
#####################################
sql_file.write("/*--Ingredient--*/\n")
recp = []
itm = []
for i in range(0,200):
    itm.append(item_id[random.randint(0, len(i_id)-1)])
    recp.append(0000000+i)

zippedI = zip(recp,itm)    
    
def generateIngredients():
    for i in range(0,199):
        sql_file.write("insert into ingredients(recipe_id, item_id) values\n")
        sql_file.write(str(zippedI[i])+";\n")
    #sql_file.write(str(zippedI[i+1])+"\n")
    #sql_file.close()
generateIngredients()

######################################
# create account
######################################
account_user = []
for c in range(numOfCustomers):
    print c
    account_user.append(id_list[c])
zippedCreated = zip(account_user,email)
def generateCreatedAccount():
    for i in range(numOfCustomers):
        sql_file.write("insert into created_account(user_id, email) values\n")
        sql_file.write(str(zippedCreated[i])+";\n")
    #sql_file.write(str(zippedI[i+1])+"\n")
    sql_file.close()
generateCreatedAccount()
time.sleep(5);
