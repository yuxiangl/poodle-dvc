### Build Docker image
```bash
docker build -t dvc_operator:0.1 -f docker/dvc_operator_2.Dockerfile docker
```

### Run model
```bash
docker run -it --rm dvc_operator:0.1
```
