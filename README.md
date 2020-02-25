# What is a deployment?
Why do we need it? Why can't I just build on my local machine? 
What is infrastructure? Where is it?

Set up virtual machine.
https://docs.google.com/document/d/10o6iFI4R4BacmHsIWn5lEKsJnRL9RG1zEJ4D2qlS8Qs
Allow http traffic!



    sudo apt update
    sudo apt-get install -y python3-venv
    git clone https://bitbucket.org/LogstonEducation/pdl-deployments.git
    cd pdl-deployments
    python3 -m venv env
    source env/bin/activate
    pip install -r requirements.txt


sudo python3 -m http.server 80

# GAE

gcloud app deploy


# GKS


