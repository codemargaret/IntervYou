# _IntervYou Rails API_

#### _A website that allows a user to practice technical interview questions, 02.02.2017_

#### By _**Margaret Berry**_

## Database Schema
![Database Schema](./db_design.png?raw=true "Database Schema Design")

## Project Goals
_My goal was to create a Rails API that would communicate with a separate Angular application._

## Features
* _User authentication set up with the Devise Token Auth gem_
* _Cross-Origin Sharing Requests_
* _Serializers for Question and Answer models that transmit all necessary attributes to the UI_

## Setup/Installation Requirements
_This database is hosted [here](http://nameless-oasis-87770.herokuapp.com/)._

_To clone locally, run the following commands in Terminal:_

1. `$ git clone` [this repository](https://github.com/codemargaret/IntervYou.git)
2. `$ cd IntervYou`
3. `$ bundle install`
4. `$ rails db:create`
5. `$ rails db:migrate`
6. `$ rails db:test:prepare`
7. `$ rails db:seed`
8. _This API uses an Angular front end. Visit [this repository](https://github.com/codemargaret/IntervYou-UI.git) and follow the setup instructions there._
9. `$ rails s` _to start the server._

## Support and contact details
_If you have any updates, questions, or suggestions please contact [Margaret] or make a contribution._

[Margaret]: mailto:codeberry1@gmail.com

## Technologies Used
* _Ruby-on-Rails_
* _ActiveRecord_

### License
*This software is licensed under the MIT license.*

Copyright (c) 2017 **_Margaret Berry_**
