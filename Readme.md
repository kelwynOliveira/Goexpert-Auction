# Auction

Goexpert postgraduation project

## Lab project Description

> **Objective**: Add a new feature to the existing project so that the auction closes automatically after a defined time.
>
> Clone the following repository: [Click to access the repository](https://github.com/devfullcycle/labs-auction-goexpert).
>
> The entire auction and bidding creation routine is already developed. However, the cloned project needs improvement: adding the automatic closing routine based on a time limit.
>
> For this task, you will use Go routines and should focus on the auction creation process. The validation of whether the auction is open or closed in the bidding routine is already implemented.
>
> ### You must develop:
>
> - A function that calculates the auction time based on parameters previously defined in environment variables;
> - A new Go routine that checks for the existence of an expired auction (whose time has run out) and updates it by closing the auction;
> - A test to validate whether the closing is happening automatically;
>
> ### Tips:
>
> - Focus on the file `internal/infra/database/auction/create_auction.go`, you must implement the solution in this file;
> - Remember that we are working with concurrency, so implement a solution that addresses this:
> - Check how the interval calculation to verify if the auction is still valid is being handled in the bidding creation routine;
> - For more information on how a goroutine works, click here to access our Multithreading module in the Go Expert course;
>
> ### Delivery:
>
> - The complete source code of the implementation.
> - Documentation explaining how to run the project in a development environment.
> - Use docker/docker-compose so we can test your application.

## How to run

Set `AUCTION_EXPIRE=` at `cmd/auction/.env`

Run `docker-compose up --build -d` or `make up`

### How to test

Up the database - run `docker-compose up --build -d` or `make up`

Then test:

`go test -v internal/infra/database/auction/create_auction_test.go` or `make test`
