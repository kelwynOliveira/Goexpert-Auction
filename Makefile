up:
	docker-compose up --build -d

down:
	docker-compose down

test:
	go test -v internal/infra/database/auction/create_auction_test.go