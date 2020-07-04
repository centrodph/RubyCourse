# Rails

- use MVC



## check command line tools

$ xcode-select -p

$ gcc -v

$ clang -v

$ node -v

$ yarn -v

## editor

- atom

- vscode

## RVM

- https://rvm.io/

- rvm list known # to show the known versions

- rvm --default use x.x.x

## rails

- gem install bundler

- gem install webpacker   # https://github.com/rails/webpacker

- gem install rails -v x.x.x

- gem list rails # to show the installed versions


- rails new XXXXX # to create a new application


## Model, View, Controller and Rails App Structure - Text references
## MVC - Model, View, Controller

### General flow of Rails application:

-> Request made at browser

-> Request received at router of rails application

-> Request routed to appropriate action in a controller

-> Controller#action either renders a view template or communicates with model

-> Model communicates with database

-> Model sends back information to controller

-> Controller renders view