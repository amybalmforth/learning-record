## WEEK 4 - DATABASES

### Weekly goals

1. Build a simple web app with a database
2. Follow an effective debugging process for database applications
3. Explain the basics of how databases work (e.g. tables, SQL, basic relationships)

***********************************************************

### DAILY GOALS

* Blog post on last week topics *DONE*
* Upload current notes to Github *DONE*
* Record screen doing coin changer kata and send to a coach - Or do a process workshop. *DONE PROCESS WORKSHOP*
* Tuesday: Complete the first 5 exercises on SQLZOO *DONE*
* Wednesday: Explain to peer group members about CRUD/REST *DONE*
* Friday: Explain to peer group what Rake is *DONE*
* ORM: what is Datamapper?

***********************************************************

### WHAT IS A DATABASE?

A database is system of storing data - optimised for use with software applications. Built for volume - lots of requests and queries. Made up of 1) Data 2) Database management system/software (built in a language) - allows us to read from and write to data.

Database table - kind of like a spreadsheet.

Postgres - A database management system (like MySql)

Relational databases - a group of tables (row and columns) - columns = properties, rows = entries in table. Entries/records can be associated with each other. Non relational database = no tables...

SQL = Structured Query Language. (DSL) Language used for querying/interacting with databases.

Example of a query: SELECT * FROM persons WHERE title="coach";

ORM = Object Relational Mapper. Software tool to map records in a database to objects in your code. (E.g. Activerecord for Rails)

Database lives on a physical drive - database can live locally on server on computer or on a cloud server.

Cloud = server running somewhere physically that you can access from outside (upload/download). Extend/augment your computer's power with a remote machine. (Rent some space on someone else's computer - Trade privacy for convenience)

***********************************************************

### REST - Representational state transfer

Architectural style which provides standards between computer systems on the web. REST compliant (or RESTful systems) are stateless and separate the concerns of the client and the server.

Implementation of client and implementation of server and be done independently - meaning code can be changed on either side without affecting the operation of client or server.

Stateless - meaning the server does not need to know anything about what state the client is in and vice versa. Enforced through use of resources not commands. Resources: describe any object you may need to store or send to other services.

Components can be managed/updated without affecting the system as a whole.

REST requires that clients send requests to server to retrieve/modify resources - servers send responses to these requests. (HTTP request verbs and response codes)

For each HTTP verb sent by a client, there are expected status codes a server should return upon success:

GET — return 200 (OK)
POST — return 201 (CREATED)
PUT — return 200 (OK)
DELETE — return 204 (NO CONTENT)

***********************************************************

### CRUD

When building an API, the model should be able to perform 4 basic kinds of functionality in order to be considered complete:

- Be able to CREATE resources
- Be able to READ resources
- Be able to UPDATE resources
- Be able to DELETE resources

(CRUD)

This provides a memorable framework for constructing complete models.

E.g. a system for keeping track of library books:

Create : A function to allow you to add a new book to the catalogue (with a tag/ID)
Read : A function allowing you to see all books in current catalogue
Update : A function to call when information about a book needs to be changed (i.e. the author)
Delete : A function that allows you to remove a book from the catalogue

In a REST environment, CRUD often corresponds to the HTTP methods POST, GET, UPDATE and DELETE. These are the fundamental elements of a successful storage system.

CREATE = POST
READ = GET
UPDATE = PATCH
DELETE = DELETE

***********************************************************

### Q & A WEDNESDAY

ORM = Object Relational Mapper (e.g. Datamapper)

Class Bookmark

@@ conn = PGConnection

<!-- def initialize(url, desc)
  @url = url
  @desc = desc
end -->

def self.all
  res = @@conn.exec("SELECT * FROM bookmarks")
  res.values
  self.new(url, desc)
end

def self.create(url, desc)
  @@conn.exec("INSERT INTO bookmarks (url, desc) VALUES = (url, desc)")
  self.new(url, desc)
end

Bookmark.create

Instance of Bookmark class corresponds to entry in Bookmarks table.
Define a class that maps to the database - nice to use class methods to indicate additions to the table.

POSTGRES = The database
PSQL = Database client, command line tool allowing us to interact with the database
Tableplus = Database client, also allow us to interact with database (but through GUI)

***********************************************************

### RAKE

Rake is a native tool for Ruby.
Allows you to use ruby code to define "tasks" or commands that can be run in the command line.
Tasks get defined/stored in a Rakefile that you add to your project.
You can write your own rake tasks, specific to your application. There are rake tasks natively built into Ruby and Rails that perform common functions.
Rake is a Domain Specific Language (DSL...like Rspec) written in Ruby - so you can only use it for things related to Ruby.
You can use it for database migrations.
Rake can be downloaded and included in ruby projects as a ruby gem.
Rake comes with some libraries (sometimes called a build tool) that make it easy to do tasks common during build/deploy process, i.e. create/delete/rename/move files.

***********************************************************

### DEBUGGING 2 WORKSHOP

Using P to get visibility is extremely useful (logging)

Capybara - launchy - save_and_open_page

Devtools can be useful as debugger (esp with Rails where things are hidden)

***********************************************************

### RETRO

Analysis step 11 of bookmarks database

Aiming to represent an item from the database table as an instance of the bookmark class.
Set up methods to access its properties (i.e. title, url)

If we have a constructor method (initialize) and 2 objects (url and title) to access via reader methods. Send SQL query to database. Take url and title. For each pair, pass them into bookmark.new. End up with an array of bookmark instances. Class methods on bookmark class that allow us to query the database. Also have instances of bookmark class which represent a row of the database. With properties url / title that allow us to access those properties.

^ MAKING A SIMPLE ORM - a nice way to interact with databases in your ruby code

For switching between environment:

connection = PG.connect(dbname: ENV['DB_NAME'])
^ Env variable set i.e. in spec helper as test database name, and declared in e.g. dotenv

Anything returned from PG gem is represented as an array of hashes (and should be accessed like that i.e. [0]['url'])

INSTEAD OF PERSISTED DATA

class Bookmark

def self.get(id)
  result = connection.query("SELECT * FROM bookmarks WHERE id = #{id}")
  Bookmark.new(id = result[0]['id'])
end

end
