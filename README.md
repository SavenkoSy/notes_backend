# Notes Backend - Simple Application

Simple backend service for a **note-taking application** using **Ruby on Rails**, focusing on API development, data storage, and background processing.

## Setup & Local development

Requirded **Ruby Version** `3.3.0`

 - Prepare environment:
	```bash
	bundle install
	cp env.example .env
	```

- Run **Rails Server**:
	```bash
	bundle exec rails s
	```
- Run **Sidekiq Server**:
	```bash
	bundle exec sidekiq
	```

## Run via Docker

> build an image

```bash
docker-compose build
```

> run the server
```bash
docker-compose up -d
```

Server will be running on:

``localhost:3300``


## File Structure

> Major folders of the project

    ├── ...
    ├── app                    # Application folder
    │   └── contracts          # Validation of request parameters and model attributes
    │   └── controllers        # Endpoints
    │   └── events             # Business logic that works with database (CRUD)
    │   └── jobs               # Parallel workers
    │   └── models             # Database presentational data
    │   └── queries            # Queries to the database
    │   └── serializers        # JSON Serialization of ActiveRecord object
    │   └── services           # Business logic that works with 3rd party
    ├── config                 # Configuration and initialization files
    ├── swagger                # API Documentation (APIDoc)
    ├── spec                   # Test files
    ├── ...



## API Documentation

While the server is running visit:

[Swagger API DOC](http://localhost:3300/api-docs/index.html) – *localhost/api-docs/index.html*

<img width="537" alt="image" src="https://github.com/SavenkoSy/notes_backend/assets/9272724/c88664c1-e71e-4f86-8eca-c63319393ca5">


## Testing

Run Unit Test (RSpec):
```bash
bundle exec rspec
```
Run Swagger Test:
```bash
bundle exec rswag
```



## Usage

NodeJS

 ```typescript
#TODO 
 ```

## UML diagrams

```
#TODO
```
