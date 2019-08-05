# load-test-artillery

### Build container image

```bash
docker build -t chzbrgr71/loadtest:v2.0 .
```

### Run test

```bash
docker run -d --name load-test1 -e "load_duration=-1" -e "load_rate=1" -e "load_url=104.40.29.56:3003/latest" chzbrgr71/loadtest:v2.0
```