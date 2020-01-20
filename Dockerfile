FROM nvidia/cuda
 
# Install basic utilities
RUN apt-get update && apt-get install -y \
                build-essential \
                cmake \
                curl \
                ca-certificates \
                g++ \
                wget \
                bzip2 \
                libx11-6 \
                git \
                vim \
                tmux \
                cmake \
                openssh-client

RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Anaconda3 Install
RUN wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
RUN bash Anaconda3-2019.10-Linux-x86_64.sh -b
RUN rm Anaconda3-2019.10-Linux-x86_64.sh
ENV PATH /root/anaconda3/bin:$PATH

# Updating Anaconda packages
RUN conda update conda
RUN conda update anaconda
RUN conda update --all

# Install pytorch and opencv
RUN conda install pytorch torchvision cudatoolkit=10.1 -c pytorch
RUN conda install -c conda-forge opencv
RUN apt-get update && apt-get install libgl1-mesa-glx

CMD [ "/bin/bash" ]

