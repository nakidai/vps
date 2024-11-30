all: nakidai.ru pwn3t.ru beruvrot.rf

nakidai.ru pwn3t.ru beruvrot.rf:
	env WEBROOT="${WEBROOT}/$@" make -C "$@" clean install

.PHONY: all nakidai.ru pwn3t.ru beruvrot.rf
