# stage de build
FROM golang:latest AS build

ENV CGO_ENABLED 0
ENV GO111MODULE on
ENV GOOS linux

WORKDIR /app

COPY . /app

RUN go mod download

RUN go build -o main cmd/app/main.go

# stage imagem final
FROM scratch

WORKDIR /app

COPY --from=build /app/main ./

EXPOSE 8000

CMD [ "./main" ]