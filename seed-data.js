db.createCollection("users")
// defaults users only for testing
db.users.insert({"category":2,"email":"admin","password":"admin"})
db.users.insert({"category":1,"email":"technician","password":"technician"})
db.users.insert({"category":0,"email":"specialist","password":"specialist"})
db.users.insert({"category":0,"email":"specialist1@specialist1.com","password":"specialist"})
db.users.insert({"category":0,"email":"specialist2@specialist2.com","password":"specialist"})
