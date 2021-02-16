# load-test-artillery

### Build container image

```bash
docker build -t chzbrgr71/loadtest:v3.1 .
docker push chzbrgr71/loadtest:v3.1
```

### Run test

```bash

artillery quick -d -1 -r 2 http://52.154.63.0:3012/latest

docker run -d --name load-test1 -e "LOAD_DURATION=-1" -e "LOAD_RATE=2" -e "URL=http://52.154.63.0:3012/latest" chzbrgr71/loadtest:v3.1
```

### Kubernetes

Set the environment variables in the yaml file. 
* ```URL``` is the URL test target
* Use -1 for ```LOAD_DURATION``` to continuously run test
* ```LOAD_RATE``` is the arrival rate as defined in the quick test here. https://artillery.io/docs/cli-reference 

```bash
kubectl apply -f k8s-deploy.yaml
```