# Use jupyter minimal-notebook base image
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8

USER root

# Copy lock file into container
COPY conda-linux-64.lock /tmp/conda-linux-64.lock

# Install the environment via conda (or mamba) using the lockfile
RUN conda create --copy --prefix /opt/conda-env --file /tmp/conda-linux-64.lock && \
    conda clean --all -f -y

# (Optional) set PATH so environment is default
ENV PATH="/opt/conda-env/bin:${PATH}"

# Switch back to notebook user if needed
USER $NB_UID
