build:
	docker compose exec hugo hugo build
up :
	docker compose up -d
serve:
	make up
	docker compose exec hugo hugo server -D -t hugo-geekdoc

#Usage: make new file=aaa/bbb.md
new:
	make up
	docker compose exec hugo hugo new $(file)

.PHONY: build up serve new
