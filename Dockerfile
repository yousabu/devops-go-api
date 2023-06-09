FROM golang:1.18-alpine AS build

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 go build -o main .

FROM alpine:3.14

WORKDIR /app

COPY --from=build /app/main .

EXPOSE 9090

CMD ["./main"]
