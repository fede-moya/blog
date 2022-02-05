.PHONY: start-app app-server app-dependencies

app-server:
	rails s
app-dependencies:
	docker-compose up -d
start-app: app-dependencies app-server
