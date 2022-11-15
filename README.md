# README

## Introduction
This README would normally document whatever steps are necessary to get the
application up and running.

## Requirments
* Ruby version - 3.0.2

* System dependencies 
	- For full list see Gemfile and package.json
	- Rails - 6.1.7
	- Posgresql - 1.1
	- Puma - 5.0
	- SCSS for rails - 6.0.0
	- Webpacker - 5.0
	- Turbolinks -5
	- JBuilder - 2.7
	- Bootstrap
	- JQuery
	- Devise
	- OmniAuth
	- Pundit
## External Deps
* Docker - Download latest version at https://www.docker.com/products/docker-desktop

* Heroku CLI - Download latest version at https://devcenter.heroku.com/articles/heroku-cli

* Git - Downloat latest version at https://git-scm.com/book/en/v2/Getting-Started-Installing-Git

* Database creation
	- Scaffolding with Rails into Posgresql

* Database initialization
	- Pre-established on Rails/Heroku
## Installation
Download this code repository by using git:

`git clone [https://github.com/your_github_here.git](https://github.com/AM030842/EPSO_team431.git)`

## Execute Code
-Run Docker
-`bundle install`
- `rails webpacker:install `
- `rails db:create`
- `rails db:migrate`
- `rails server --binding=0.0.0.0`
- Open http://127.0.0.1:3000 in browser

## Test
An RSpec test suite is available and can be ran using:

`respec spec/`

## Services (job queues, cache servers, search engines, etc.)


## Deployment
* Deployment Instruction
	- Push to github
		- function branch, or test
	- If on function branch
		- merge request to test
	- If on test - will do testing deployment on heroku
		- [Insert Link]
	- If working on test and satisfactory
		- Merge to main
		- Will automatically deploy to production
		- [Insert Link]
## CI/CD
TBD

## Support
Admins looking for support should first look at the application help page. Users looking for help seek out assistance from the customer.
