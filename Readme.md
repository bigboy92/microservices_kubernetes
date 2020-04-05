## Project Overview: Operationalize a machine learning microservice API 
**CircleCI Public Status:** [![CircleCI](https://app.circleci.com/pipelines/github/KruthigaGopalan/microservices_kubernetes/1/workflows/cb101bc2-7a4f-46af-9ccf-cbe8e40a0c84/jobs/29)

{https://app.circleci.com/pipelines/github/KruthigaGopalan/microservices_kubernetes}

### Running locally `app.py`

1. Create an environment: `virtualenv ~/.devops`
2. Set your environment: `source ~/.devops/bin/activate`
3. Install dependencies: `make install` or `pip install -r requirements.txt`
4. Run app:  `python app.py`

### Running with Docker

1. Install Docker
2. Execute the script: `sh ./run_docker.sh`
3. Application will be expose on port 80

### Running with Kubernetes (MiniKube)

1. Install or activate MiniKube
2. Execute the script: `sh ./run_kubernetes.sh`
3. Application will be expose on port 80

### Testing Housing Princing Model

After application is running you can do calls to the housing pricing model with the next script:

`sh ./make_prediction.sh`

Github account
https://github.com/KruthigaGopalan/microservices_kubernetes
