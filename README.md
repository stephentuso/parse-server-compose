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

Open a terminal in the root of this repo and run `make start`. By default, the dashboard will be available on [port 4040](http://localhost:4040), with username and password both set to `admin`.

Run `make help` for info on all commands.