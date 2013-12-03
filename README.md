# Vot.io LIVE

This is the Faye server for Vot.io. It runs with [suite_api](https://github.com/cremalab/suite_api) and [engagement-ring](https://github.com/cremalab/engagement-ring)

## Run in development

`rackup private_pub.ru -s thin -E production`


## Deploying

Update the config/deploy.rb file to the location of the server you want.

Run `cap deploy:setup`

Run `cap deploy:run`

Now you are up and running!

## Resources

Based off of Rails Casts #133 Revised, #335, and #337.

Also the best practice guide from https://github.com/faye/faye/wiki/Deploy-Best-Practices
