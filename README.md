# README

This README would normally document whatever steps are necessary to get the
application up and running.

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

* Database creation
	- Scaffolding with Rails into Posgresql

* Database initialization
	- Pre-established on Rails/Heroku

* Setting up test suite
	- Run Docker
	- `bundle install`
	- `rails db:create`
	- `rails db:migrate`
	- `rails server --binding=0.0.0.0`
	- Open http://127.0.0.1:3000 in browser

* Services (job queues, cache servers, search engines, etc.)
	-

* Deployment instructions
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

