all: www

www/i.nakidai.ru:
	mkdir -p $@

www: www/i.nakidai.ru
	env WEBROOT="$$(realpath www)" make -C services
	env WEBROOT="$$(realpath www)" make -C beretvrot

run:
	caddy start

reload:
	caddy reload

.PHONY: all www www/i.nakidai.ru
