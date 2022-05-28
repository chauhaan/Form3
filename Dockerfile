FROM golang:1.18.2-stretch

COPY ./ /src
WORKDIR /src
RUN go install github.com/form3tech/innsecure/cmd/innsecure

EXPOSE 8080

ENTRYPOINT innsecure
