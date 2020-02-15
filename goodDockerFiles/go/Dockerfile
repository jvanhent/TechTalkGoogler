FROM gcr.io/cloud-builders/go as builder

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . ./
RUN go build -o /ref

FROM alpine
EXPOSE 8080
ENTRYPOINT ["/ref"]
COPY --from=builder /ref /