# Mod3_Project_Gallery_Rails_Backend

[Video Demo](https://youtu.be/v3zCUFD8sTQ) | [Live Demo](https://elronia.github.io/interactive-art-gallery-ui/)

Art Gallery is a full-stack web application where you can browse around the gallery of famous artists' paintings. This app will help a person to get familiar with art/paintings.  

[Link to Frontend](https://github.com/Elronia/Mod3_Project_Javascript_Frontend)
## Table of Contents
* [Getting Started](#getting-started)
* [CRUD Operations](#crud-operations)
* [ActiveRecord Associations](#active-record)
* [Domain Model](#domain-model)
* [Tech Stack](#tech-stack)
* [Tools](#tools)
* [Creators](#creators)

<a name="getting-started"/>

## Getting Started
### Installing Backend
* Install [Homebrew](https://brew.sh/)  
```$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"```
* Install [Ruby](https://www.ruby-lang.org/en/)  
```$ brew install ruby```
* Install [Rails](https://rubyonrails.org/)  
```$ gem install rails```
* Install [PostreSQL](https://www.postgresql.org/)  
```$ brew install postgresql```
* Clone repo and cd into Gallery_Rails_Backend
* Install dependencies  
```$ bundle install```
* Create migration, migrate and seed  
```$ rails db:create``` 
```$ rails db:migrate```  
```$ rails db:seed```   
* Start rails server  
```$ rails s```

<a name="crud-operations"/>

## CRUD Operations
* User is able to enter the name and the username
* User is able to add paintings to their favorites 
* User can click on a Painting and either see more information about it or add it to their favorites 
* User can remove paintings from favorites
* User is able to learn more about a particular artist that drew the painting that they clicked 


<a name="active-record"/>

### ActiveRecord Associations
* There are 4 models with `has_many`, `belongs_to` and `has_many through` associations

<a name="domain-model"/>

### Domain Model
<img src='./image/Gallery_ERD.png'> </img>


<a name="tech-stack"/>

## Tech Stack
* Vanilla JavaScript (Frontend: https://github.com/Elronia/Mod3_Project_Javascript_Frontend)
* Ruby on Rails API (Backend)
* PostgreSQL
* HTML/CSS
* Active Record

<a name="tools"/>

## Tools
* [Rack CORS](https://github.com/cyu/rack-cors)
* [ActiveModel::Serializer](https://github.com/rails-api/active_model_serializers)


<a name="creators"/>

## Creators
* [Ekaterina Zarudnaya](https://github.com/Elronia)
* [Patrick Pierre](https://github.com/pierrewebdev)
