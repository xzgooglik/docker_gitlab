#how to run
Service gitlab-web, and gitlab-runner  (in docker)

# SERVICE GIRLAB-WEB
  docker-compose up (all services)
  docker-compose up -d gitlab-web
  docker-compose down gitlab-web
  docker-compose stop gitlab-web
  
  
# SERVICE GIRLAB-RUNNER  
  vim docker-compose.yml
  configure yor runner (name ...)
  #------------------------------
  docker-compose up -d gitlab-runner 
  vim gitlab-runner.sh 
  sh gitlab-runner.sh (register yor runner in gitlab)
  docker logs gitlab-runner
