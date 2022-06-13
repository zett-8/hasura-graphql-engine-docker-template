console:
	docker-compose exec graphql-engine hasura-cli console --no-browser --endpoint http://localhost:8080 --address 0.0.0.0 --admin-secret dev

migrate:
	docker-compose exec graphql-engine hasura-cli migrate apply --admin-secret dev --all-databases
	docker-compose exec graphql-engine hasura-cli metadata apply --admin-secret dev

seed:
	docker-compose exec graphql-engine sh -c "echo | hasura-cli seed apply --admin-secret dev"

