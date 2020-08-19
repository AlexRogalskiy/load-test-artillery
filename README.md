# load-test-artillery

### Build container image

```bash
docker build -t chzbrgr71/loadtest:v2.1 .

docker build -t chzbrgr71/loadgen-aksworkshop:v1.21 .
```

### Run test

```bash
docker run -d --name load-test1 -e "load_duration=-1" -e "load_rate=1" -e "load_url=104.40.29.56:3003/latest" chzbrgr71/loadtest:v2.0
```

```bash
docker run -d --name test1 -e "LOAD_DURATION=-1" -e "LOAD_RATE=1" -e "URL=http://104.42.208.191:80/v1/order" chzbrgr71/loadgen-aksworkshop:v1.21
```

### Kubernetes

Set the environment variables in the yaml file. 
* ```load_url``` is the URL test target
* Use -1 for ```load_duration``` to continuously run test
* ```load_rate``` is the arrival rate as defined in the quick test here. https://artillery.io/docs/cli-reference 

```bash
kubectl apply -f k8s-deploy.yaml
```