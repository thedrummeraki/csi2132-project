# CSI2132 - Class Project
#### Databases - University of Ottawa

[e-Hotels](https://csi2132-e-hotels.herokuapp.com)

### What is it?
This is a course project. The goal is to develop a hotels management system in order to learn the following:
- Basic database concepts such as `CREATE`, `INSERT`, `UPDATE`, etc.
- More advanced concepts such as `JOIN`, `HAVING`, etc.

### Where is it hosted?
The project is hosted at [https://csi2132-e-hotels.herokuapp.com](https://csi2132-e-hotels.herokuapp.com).

### Where is the SQL?
The database structure can be found at [csi2132-project/db/structure.sql]
(https://github.com/thedrummeraki/csi2132-project/tree/master/db/structure.sql).

### Where is the Database?
The database uses a [Heroku database](https://devcenter.heroku.com/articles/heroku-postgresql)
[plugin](https://elements.heroku.com/addons/heroku-postgresql). A valid Heroku account that has access to the
project `csi2132-e-hotels` will be necessary to project's database. See below for more info.

### System requirements
- Ruby version 2.6.1
- Rails version 5.2.2
- Heroku
- PostgreSQL

### How do I install the requirements?
It is preferable to run a Unix-based machine. Please understand that setting up this project on a Windows
will require [Windwos Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/install-win10).

#### Install RMV (skip this step if you have RVM installed a.k.a. if `rvm` prints a help message):
```
sudo apt-get update
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
sudo apt-get install libpq-dev

gpg --keyserver hkp://keys.gnupg.net:80 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
```

#### Install ruby 2.6.1 (skip this step if `ruby -v` shows `2.6.1`):
```
rvm install 2.6.1
rvm use 2.6.1
```

#### Install Ruby on Rails 5.2.2 (skip this if `rails -v` outputs `5.2.2`):
```
gem install rails -v 5.2.2
```

#### Install Heroku
Please make sure to [sign up](https://signup.heroku.com/) for an free account if you don't have Heroku.
Please visit [Heroku CLI's official documentation](https://devcenter.heroku.com/articles/heroku-cli) for installing
`heroku`.

Once installed, please login:
```
heroku login -i
```

### How do I run this project?
First of all, please clone and CD into the directory. Install all package by
running `bundle`.
```
git clone git@github.com:thedrummeraki/csi2132-project.git
cd csi2132-project/
bundle
```

Then please setup these environment variables by creating a `.env` file.
Put this file on the project's root folder.
```
E_HOTELS_DB_USER=<your PostgreSQL DB username (default: user)>
E_HOTELS_DB_PASSWORD=<your PostgreSQL DB password (default: password)>
E_HOTELS_DB_HOST=<your PostgreSQL DB host (default: localhost)>
E_HOTELS_DB_PORT=<your PostgreSQL DB port (default: 5432)>
```

Then finally:
```
rails db:set
rails s
```

### I want to access the (production) database
> Please note that you will not be able to access the DBMS if you have not been added to the Heroku project.
That's very simple. All you need to do is:
```
heroku psql -a csi2132-e-hotels
```
This will open a PostgreSQL command interface in which you will be able to run basic PostgreSQL commands.

> Please note that connecting to a PostgreSQL database on the University of Ottawa will not work. The connection will simply timeout.

Since Heroku uses PostgreSQL hosted on Amazon AWS, you can use PG Admin. Please view this
[link](https://stackoverflow.com/questions/11769860/connect-to-a-heroku-database-with-pgadmin) for additional help.
