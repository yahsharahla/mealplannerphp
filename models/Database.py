import MySQLdb

class Database:
    'Create a MySQL database connection as an object'
    db = None
    cursor = None

    def __init__(self, hostname, user, password, dbname):
        """Initialize connection"""
        self.db = MySQLdb.connect(hostname, password, dbname)
        self.cursor = db.cursor()

    def query(self, sql):
        self.cursor.execute(sql)
        data = cursor.fetchall()
        return data

    def update(self, sql):
        try:
           self.cursor.execute(sql)
           self.db.commit()
        except:
           db.rollback()

    def __del__(self):
        self.cursor.close()
        del self.cursor
