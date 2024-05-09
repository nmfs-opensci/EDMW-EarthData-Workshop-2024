# Rocker verse with conda notebook environment; 
# rstudio user with /home/jovyan home dir
FROM --platform=linux/amd64 ghcr.io/nmfs-opensci/container-images/py-rocket-geospatial:latest

USER root

# install the Python geospatial libraries
COPY environment.yml environment.yml
RUN conda env update -n notebook -f environment.yml \
    && conda clean --all \
    && rm environment.yml

# Set user dir
WORKDIR /home/jovyan

# Map directory into container
ADD . ./EDMW-EarthData-Workshop-2024