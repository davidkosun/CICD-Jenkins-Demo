# Docker Test

## Build Test Docker Image
```bash
docker build -t cicd-jenkins-demo-test --target test .
```

## Run Test Docker Image
```bash
docker run -it --rm --name cicd-jenkins-demo-test cicd-jenkins-demo-test
```

# Docker Image Production

## Build Production Docker Image
```bash
docker build -t cicd-jenkins-demo .
```

Testing 2
