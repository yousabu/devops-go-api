FROM golang:1.18-alpine AS build

RUN apk update && apk upgrade

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN CGO_ENABLED=0 go build -o main .


FROM alpine:3.14

RUN apk update && apk upgrade

WORKDIR /app

COPY --from=build /app/main .

RUN addgroup -S myapi && adduser -S -G myapi myapiuser

USER myapiuser

EXPOSE 9090

CMD ["./main"]
