all: www

www/i.nakidai.ru:
	mkdir -p $@

services:
	env WEBROOT="$$(realpath www)" make -C $@

www: www/i.nakidai.ru services

run:
	caddy start

reload:
	caddy reload

.PHONY: all www services www/i.nakidai.ru
