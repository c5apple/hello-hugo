build:
	docker compose build
up :
	docker compose up -d
serve:
	make up
	# docker compose exec hugo hugo server -D
	docker compose exec hugo hugo server

#Usage: make new file=aaa/bbb.md
new:
	make up
	docker compose exec hugo hugo new $(file)

.PHONY: build up serve new
