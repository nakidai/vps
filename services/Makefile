all: nakidai.ru pwn3t.ru

nakidai.ru pwn3t.ru:
	env WEBROOT="${WEBROOT}/$@" make -C "$@" clean install

.PHONY: all nakidai.ru pwn3t.ru
