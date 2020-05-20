# Facebook clone
Facebook clone is a web application that i tried making for my school project.

## Installation
Use git to clone the repository.

git clone https://github.com/ErvinGaric/ersbook-rails
Afterwards run:

- bundle install
- yarn install

Next you'll need to modify the username and password to your postgres database in /config/database.yml file. Once done, create your database and run migrations:

- rails db:create
- rails db:migrate

## Usage

All that's left is to run the server:

- rails s
