FROM python:3.6

MAINTAINER Ted Liefeld <jliefeld@cloud.ucsd.edu>

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

COPY common/container_scripts/runS3OnBatch.sh /usr/local/bin/runS3OnBatch.sh
COPY common/container_scripts/runLocal.sh /usr/local/bin/runLocal.sh
RUN chmod ugo+x /usr/local/bin/runS3OnBatch.sh && \ 
    chmod ugo+x /usr/local/bin/runLocal.sh

RUN mkdir /build

RUN mkdir /conda && \
    cd /conda && \
    wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    bash Miniconda3-latest-Linux-x86_64.sh -b -p /opt/conda
    
ENV PATH="/opt/conda/bin:${PATH}"

ADD requirements.txt /build/requirements.txt
RUN pip install -r /build/requirements.txt
RUN conda install R==3.3.2
RUN conda install rpy2
RUN pip install sklearn && \
    pip install awscli && \
    pip install cuzcatlan ccal 




CMD [ "/usr/local/bin/runS3OnBatch.sh"]
