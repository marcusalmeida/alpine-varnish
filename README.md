# alpine-varnish

A Varnish cache Docker container based on Alpine Linux.

## Environment variables
* `VARNISH_CACHE_SIZE` - how much memory Varnish can use for caching. Defaults to 128M.
* `VARNISH_CONFIG` - Varnsih config file path.  Defaults to /opt/varnish.vcl
* `BACKEND_PORT` -  TCP port of your backend.  Defaults to 80.
* `DEFAULT_TTL`  -  TTL for objects on Varnish cache. Defaults to 60.
* `DEFAULT_Grace`  -  Grace for objects on Varnish cache. Defaults to 60.

## Quick start

Run with defaults:

```bash
docker run -d --name=varnish marcusalmeida/alpine-varnish
```

Specify your backend configuration:

```bash
docker run -e VARNISH_BACKEND_PORT=nn -ti --name=varnish marcusalmeida/alpine-varnish
```

Build image locally:

```bash
git clone git@github.com:marcusalmeida/alpine-varnish.git
cd alpine-varnish
docker build -t alpine-varnish .
```

## Software
* [Varnish 4.1](https://www.varnish-cache.org/docs/4.1/)
* [Alpine Linux 3.3](http://www.alpinelinux.org/posts/Alpine-3.3.3-released.html)
