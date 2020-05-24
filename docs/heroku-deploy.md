docker build -t aspnetcore-activities .
docker tag aspnetcore-activities registry.heroku.com/activities-social-network/web
heroku login
heroku container:login
heroku container:push web -a activities-social-network
heroku container:release web -a activities-social-network
