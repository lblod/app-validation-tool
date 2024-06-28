<p align="center">
  <img src="https://ui.vlaanderen.be/3.latest/icons/app-icon/icon-highres-precomposed.png" width="100" alt="project-logo">
</p>
<p align="center">
    <h1 align="center">APP VALIDATION TOOL</h1>
</p>
<p align="center">
 <img src="https://img.shields.io/github/last-commit/lblod/app-validation-tool?style=default&logo=git&logoColor=white&color=0080ff" alt="last-commit">
 <img src="https://img.shields.io/github/languages/top/lblod/app-validation-tool?style=default&color=0080ff" alt="repo-top-language">
 <img src="https://img.shields.io/github/languages/count/lblod/app-validation-tool?style=default&color=0080ff" alt="repo-language-count">
<p>

<br><!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary><br>

- [Overview](#overview)
- [Running the project](#running-the-project)

</details>
<hr>

## Overview

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
