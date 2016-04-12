import Account

class User:
    'User class - not much to see here'
    userId = ''
    account = None
    
    def __init__(self):
        self.userId = ''

    def createaccount(self, fname, lname, email, password):
        self.account = Account(fname, lname, email, password)

    #def createmeal(self):
        #Implement here

    
