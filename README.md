README
=====

This is a Yelp clone project using rails 4.0 with postgresql v9.4. Users can 'like' businesses and leave reviews, can also view profiles and reviews of other users. Currently a work in progress.

```bash
# Get the latest snapshot
git clone https://github.com/therahl/yelp_clone.git

cd yelp_clone

# Install gems
bundle install

# Create and migrate database
rake db:create
rake db:migrate

# Optional: Seed database
rake db:seed

# Run rails server
rails server
```



