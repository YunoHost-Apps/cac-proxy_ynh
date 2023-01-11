* For now, any user that can log to your server will have admin access to all your Mongo databases !
    * Single-sign on or LDAP are not integrated
    * It's strongly recommanded you don't enable public access to the application

* It doesn't backup Mongo databases
    * As mongo-express doesn't require any database by itself, it doesn't backup or restore any of them
    * However, yYou can view / edit other applications databases with Mongo-Express
    * It will just reinstall the Mongo server if you installed it with this script 
    * Any yunohost applications using Mongo databases should manage the backup and restore
