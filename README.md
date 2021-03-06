# Open Source Learning Project

Share learning resources and build curricula!

## Using OSLP
1. Visit 
[https://opensourcelearning.herokuapp.com/](https://opensourcelearning.herokuapp.com/) (May take ~20 seconds to load - Heroku Hobby Dev)
2. Sign up for an account
3. Share learning resources that you've found helpful
4. Build a curriculum using shared resources
5. Keep track of your progress as you study
6. Search and discover existing resources and curricula submitted by other users
7. Provide feedback on resources and curricula:
  1. Approval rating
  2. Difficulty
  3. Completion Time
  4. Comments

## Running OSLP
1. Fork this repo
2. Clone the fork to your machine
3. Bundle install all gems `$ bundle install`
4. Install Elasticsearch
  * [Ubuntu 14.04 instructions](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-elasticsearch-on-ubuntu-14-04)
  * [Ubuntu 16.04 instructions](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-elasticsearch-on-ubuntu-16-04)
5. Setup database
  1. `$ rails db:create`
  2. `$ rails db:migrate`
  3. `$ rails db:seed`
6. Start a Rails server `$ rails s`

## Technical Overview
1. Used Elasticsearch for multi-threaded and asynchronous searching
2. Created complex ActiveRecord queries to aggregate user submitted feedback
3. Developed polymorphic models to maintain abstraction in codebase
