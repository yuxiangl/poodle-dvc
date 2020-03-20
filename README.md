### Build Docker image
```bash
docker build -t dvc_operator:0.1 -f docker/dvc_operator.Dockerfile docker
```

### Run model
```bash
docker run -it --rm -e IN_FILE_NAME='gs://genomics-public-data/simons-genome-diversity-project/reports/Simons_Genome_Diversity_Project_sample_reference_results.csv' -v $(pwd)/data:/data dvc_operator:0.1
```
