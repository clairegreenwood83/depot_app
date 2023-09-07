# Depot Application

## Description
This is a web based shopping cart application called Depot. I have built this application incrementally, through completing the tasks in the book 'Agile Web Development with Rails 7', in order to improve my knowledge and understanding of both Ruby and Ruby on Rails.

The homepage of this application can be seen in the image below:

![localhost_3000_](https://github.com/clairegreenwood83/depot_app/assets/118351853/aa405765-48d8-48ad-91b8-b2b4e1de6b53)

Customers can browse products, add them to a shopping cart, checkout and enter their details to allow an order to be made for delivery of their product. The administration user can manage and review orders via a login in page and also view and edit the products they sell. Administration users are also able to receive and respond to support emails via Action Mailbox. 

## Getting Started
Once you have cloned the repository to your system, follow these steps to open and run the application:

### Prerequisites

*Still to be added*

### Launching the Application
1. Navigate to the root directory of the cloned repository using your terminal.
2. To use Docker to build the image for the web service run: docker compose build
3. To start the Docker database and web containers run the following command: docker compose up
4. To create the database, run the migrations and load the seed data run: docker compose exec web bin/rails db:create db:migrate db:seed
5. Once the command completes the application should be running and accessible in your web browser. Simply open your preferred web browser and navigate to http://localhost:8001/, this 
   will take you to the homepage of the application. 

## Deployment

The Depot web application has been deployed to nginx, using PostGreSQL. 



