all: www beretvrot/www

www/i.nakidai.ru:
	mkdir -p $@

services:
	env WEBROOT="$$(realpath www)" make -C $@

beretvrot/www:
	make -C beretvrot

www: www/i.nakidai.ru services

run:
	caddy start

reload:
	caddy reload

.PHONY: all www services www/i.nakidai.ru
