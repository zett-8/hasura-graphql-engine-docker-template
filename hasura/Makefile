migrate:
	docker-compose exec hasura-cli migrate apply --all-database --admin-secret dev
	docker-compose exec hasura-cli metadata apply --all-database --admin-secret dev

seed:
	docker-compose exec hasura-cli seed apply --all-database --admin-secret dev

