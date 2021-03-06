FROM continuumio/anaconda3
MAINTAINER Kompouras Athanasios <tomkom1999@gmail.com>

RUN apt-get -y update
RUN apt-get -y upgrade

RUN apt-get install -y build-essential git wget unzip graphviz libgraphviz-dev pkg-config swig libx11-dev libgsl0-dev libopenblas-dev liblapacke-dev samtools mafft muscle raxml tabix

RUN conda update -n base -c defaults conda --force
RUN conda update -y --all
RUN conda config --add channels bioconda
RUN conda install -y pip ipython
RUN conda install -y -c conda-forge biopython


EXPOSE 9875
CMD jupyter-notebook --ip=0.0.0.0 --no-browser --allow-root --port=9875