# Couchapp for Docker
Or "how to use [couchapp python tool](https://github.com/couchapp/couchapp) without installing python"

# Prerequisites

* docker

# Install

```sh
docker pull benel/couchdb
```

# Use

* List commands and options

```sh
docker run --rm benel/couchapp
```

* Convert the `app` directory into `app.json`:

```sh
docker run --rm -v "$(pwd)"/app:/app benel/couchapp push --export >app.json
```

* Push the `app` directory as a design document of the `db` database of the `couchdb1` running container:

```sh
docker run --rm -v "$(pwd)"/app:/app --link couchdb1:couchdb -e URI=http://couchdb:5984/ benel/couchapp push .
```
