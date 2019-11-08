
# FROM defines the base layer for the container, in this case, 
#a version of Ubuntu with Node.js installed
FROM node:8 

#RUN executes npm install inside the container
RUN npm i

# ADD It only lets you copy in a local file or directory from your host  into the Docker image itself.
ADD app.js /app.js

# ENTRYPOINT configures a container that will run as an executable.
ENTRYPOINT [ "node", "app.js" ]
