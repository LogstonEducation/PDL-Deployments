# PDL-Deployments

## Outline

### Background

- Why do we need it?
- Why can't I just build on my local machine? 
- What is infrastructure?
- Where is it?

### Setup

- [Set up a GCP project](https://docs.google.com/document/d/10o6iFI4R4BacmHsIWn5lEKsJnRL9RG1zEJ4D2qlS8Qs)

```sh
gcloud auth login
gcloud config set project <YOUR PROJECT ID>
```

### Virtual Machine
- Create new VM, Allow http traffic!
- sudo python3 -m http.server 80
- ```sh
    sudo apt update
    sudo apt-get install -y python3-venv
    git clone https://github.com/LogstonEducation/PDL-Deployments.git
    cd pdl-deployments
    python3 -m venv env
    source env/bin/activate
    pip install -r requirements.txt
    ```

### GAE

- app.yaml
- main.py
- gcloud app deploy

### GKE

- First, let's dockerize the application
  - Dockerfile
  - uWSGI file

- Push to GCR
    - ```sh
        docker build -t gcr.io/pdl-deployments-pl2648/proj:v1 .
        gcloud auth configure-docker gcr.io
        docker push gcr.io/pdl-deployments-pl2648/proj:v1
        gcloud container clusters get-credentials --zone us-central1-a your-first-cluster-1 
        kubectl create deployment proj --image=gcr.io/pdl-deployments-pl2648/proj:v1
        kubectl get pods
        kubectl expose deployment proj --type=LoadBalancer --port 80 --target-port 8000
        kubectl get service
        ```
