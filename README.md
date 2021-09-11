# runtime-binary
A Docker image that execute the binary obtained from S3.

## Run
```sh
$ export S3_ACCESS_KEY=xxx
$ export S3_SECRET_KEY=xxx
$ export BUCKET=xxx
$ export TARGET=xxx
$ docker run -d --rm -p 8080:8080 -e S3_ACCESS_KEY -e S3_SECRET_KEY -e BUCKET -e TARGET ryutoyasugi/runtime-binary

$ curl localhost:8080
Hello, World
```

## Build and upload sample application
```sh
$ GOOS=linux go build main.go
$ aws s3 cp main s3://$BUCKET
```

## Build and push image
```sh
$ docker build -t ryutoyasugi/runtime-binary .
$ docker push ryutoyasugi/runtime-binary
```
