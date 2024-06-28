# app-validation-tool

This repo contains the server configuration of the validation tool. As this project does not contain a distinct backend.
The stack simply contains an identifier, dispatcher and frontend service

## Running the project

To run the project locally or on a server, simply clone the project and build it using docker

```sh
git clone https://github.com/lblod/app-validation-tool.git && cd app-validation-tool
```

To build it you can run:  

```sh
docker-compose up -d 
```  

or if you'd like to use dev overrides for local development.  

```sh
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d   
```
