# Apikey

## Setup

### Config and data directory
Create data directory at `/data/apikey` and populate as below (it is easiest to symlink the config files to the ones in this repo):
```
mats@xps-13:/data/apikey$ tree
.
└── config
    └── apikey-config.yml -> /home/mats/src/biodiversitydata-se/apikey/sbdi/data/config/apikey-config.yml
```

### Database
An empty database will be created the first time the application starts. You can then export the database from production using `mysqldump` and import it.

## Usage
Run locally:
```
make run
```

Build and run in Docker (using Tomcat). This requires a small change in the config file to work. See comment in Makefile.
```
make run-docker
```

Make a release. This will create a new tag and push it. A new Docker container will be built on Github.
```
mats@xps-13:~/src/biodiversitydata-se/apikey (master *)$ make release

Current version: 1.0.1. Enter the new version (or press Enter for 1.0.2): 
Updating to version 1.0.2
Tag 1.0.2 created and pushed.
```
