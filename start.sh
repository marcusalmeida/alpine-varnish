#!/bin/ash
sed -i -e "s/{BACKEND_PORT}/${BACKEND_PORT}/" -e "s/{DISTRO}/${DISTRO}/" varnish.vcl

mkdir -p /var/lib/varnish/`hostname` && chown nobody /var/lib/varnish/`hostname`

varnishd -F -p default_ttl=$DEFAULT_TTL -p default_grace=$DEFAULT_GRACE -s malloc,$VARNISH_CACHE_SIZE -f $VARNISH_CONFIG

#sleep 1

#varnishncsa -a -F $VARNISHNCSA_LOGFORMAT -w /var/log/varnish/varnishncsa.log
