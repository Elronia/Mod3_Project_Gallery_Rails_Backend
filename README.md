# Mod3_Project_Gallery_Rails_Backend
Art Gallery is a full-stack web application where you can browse around the gallery of famous artists' paintings. This app will help a person to get familiar with art/paintings.
## Getting Started
### Installing Backend
* Install [Homebrew](https://brew.sh/)  
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
* Install [Ruby](https://www.ruby-lang.org/en/)  
$ brew install ruby
* Install [Rails](https://rubyonrails.org/)  
$ gem install rails
* Install [PostreSQL](https://www.postgresql.org/)  
$ brew install postgresql
* Clone repo and cd into Gallery_Rails_Backend
* Install dependencies  
$ bundle install
* Create migration, migrate and seed  
$ rails db:create  
$ rails db:migrate  
$ rails db:seed   
* Start rails server  
$ rails s
### ActiveRecord Associations
* There are 4 models with `has_many`, `belongs_to` and `has_many through` associations
### Domain Model
<img src='app/db/ERD_image/Gallery_ERD.png'></img>
## Tech Stack
* Vanilla JavaScript (Frontend: https://github.com/Elronia/Mod3_Project_Javascript_Frontend)
* Ruby on Rails API (Backend)
* PostgreSQL
* HTML/CSS
* Active Record
## Tools
* [Rack CORS](https://github.com/cyu/rack-cors)
* [ActiveModel::Serializer](https://github.com/rails-api/active_model_serializers)
