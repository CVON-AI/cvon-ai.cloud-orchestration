# docker pull pytorch/torch # :latest ??
FROM pytorch/pytorch:latest

# prepare later git version (> 2.8)
RUN sudo apt-get update
RUN sudo add-apt-repository ppa:git-core/ppa
RUN sudo apt-get update
RUN sudo apt-get install git

# clone the git trianing repository
mkdir ~/cvon-ai.predict
RUN git clone https://<USER>:<TOKEN>@github.com/CVON-AI/cvon-ai.predict.git ~/cvon-ai.predict
cd ~/cvon-ai.predict/PytorchTemplate/

# install the latest requirements
RUN pip install -r requirements.txt

# copy the template to a new folder, start editing, store in cloud bucket
# run training from <SOURCE> with
