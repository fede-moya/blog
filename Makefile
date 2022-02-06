.PHONY: start-app app-server app-dependencies

app-server:
	rails s
app-dependencies:
	docker-compose up -d
psql: app-dependencies
	docker-compose exec postgres psql blog_development postgres
start-app: app-dependencies app-server
