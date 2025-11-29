FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

# Copy lock file
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

# Install packages using conda (NOT mamba)
RUN conda install --yes --file /tmp/conda-linux-64.lock \
    && conda clean --all -f -y
