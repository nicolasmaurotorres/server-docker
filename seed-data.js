db.createCollection("users")
// defaults users only for testing
db.users.insert({"category":2,"email":"admin","password":"admin"})
db.users.insert({"category":1,"email":"pladema","password":"pladema"})
db.users.insert({"category":0,"email":"doctor","password":"doctor"})
db.users.insert({"category":0,"email":"doctor1@doctor1.com","password":"doctor"})
db.users.insert({"category":0,"email":"doctor2@doctor2.com","password":"doctor"})
