FROM golang as builder

WORKDIR /app

COPY main.go .

RUN go build main.go

FROM scratch

COPY --from=builder /app/main /app/main

CMD ["/app/main"]

