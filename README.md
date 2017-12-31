# parse-server-compose

> *Run mongodb, parse-server, and parse-dashboard locally with docker-compose*

This is intended for testing/expirementation only and should not be used in production.

## Requirements

- Docker engine >= 1.13.0
- `docker-compose`
- `make`

## Usage

Clone this repo, [parse-server](https://github.com/parse-community/parse-server), and [parse-dashboard](https://github.com/parse-community/parse-dashboard) into the same parent folder:

```
projects
├── parse-dashboard
├── parse-server
└── parse-server-compose
```

Checkout the latest release of `parse-dashboard`, there is an issue with a recent commit that breaks the docker container build: 

```
cd parse-dashboard
git checkout 1.1.2
```

Open a terminal in the root of this repo and run `make start`. By default, the dashboard will be available on [port 4040](http://localhost:4040), with username and password both set to `admin`.

Run `make help` for info on all commands.

Data is persisted in a docker volume. Run `make clean` to clear it.

## Options

Options can be overriden with env vars, which can be put in a `.env` file. Defaults shown below.

```
#!/usr/bin/env bash

COMPOSE_NAME=ps_test
MONGO_PORT=27017
PARSE_SERVER_PORT=1337
PARSE_SERVER_APPLICATION_ID=parse-server-test
PARSE_SERVER_MASTER_KEY=abcd1234
PARSE_DASHBOARD_PORT=4040
PARSE_DASHBOARD_USER_ID=admin
PARSE_DASHBOARD_USER_PASSWORD=admin
```