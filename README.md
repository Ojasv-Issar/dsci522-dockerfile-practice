
# dsci522-dockerfile-practice

This repository contains my practice project for building Docker images with conda environments, completed as part of the **DSCI 522** course assignment.

## Project Overview

The goal of this project is to create a Docker image based on the **Jupyter minimal-notebook** that includes a **pinned conda environment** with Python 3.11 and essential data science packages. The Docker image can be built locally and is automatically published to Docker Hub via GitHub Actions.

---

## Repository Contents

| File / Directory | Description |
|-----------------|------------|
| `Dockerfile` | Extends `quay.io/jupyter/minimal-notebook:afe30f0c9ad8` and installs packages from the explicit conda lock file. |
| `environment.yml` | Defines a conda environment with Python 3.11, `pandas`, and `numpy` (version-pinned). |
| `conda-linux-64.lock` | Explicit lock file for Linux to ensure reproducible package installation. |
| `.github/workflows/docker-publish.yml` | GitHub Actions workflow that builds, tags, and pushes the Docker image to Docker Hub automatically when the Dockerfile or lock file is updated. |
| `LICENSE.md` | MIT license for this repository, including attribution for the GitHub Actions workflow copied from the original author. |
| `README.md` | Project description, instructions, and usage information. |

---

## Usage

1. **Clone the repository:**

```bash
   git clone https://github.com/Ojasv-Issar/dsci522-dockerfile-practice.git
   cd dsci522-dockerfile-practice
````

2. **Build the Docker image locally (optional):**

```bash
   docker build -t ojasvissar/dsci522-dockerfile-practice:local .
```

3. **Run the Docker container with port forwarding:**

```bash
   docker run -p 8888:8888 ojasvissar/dsci522-dockerfile-practice:local start-notebook.sh
```

4. **Access JupyterLab in your browser:**
   Open [http://localhost:8888](http://localhost:8888) and use the token printed in the terminal.

---

## Automation

The GitHub Actions workflow automatically:

* Builds the Docker image.

* Tags it with the git commit SHA and `latest`.

* Pushes it to Docker Hub whenever the Dockerfile or lock file is updated.

* **Docker Hub image:** [https://hub.docker.com/r/ojasvissar/dsci522-dockerfile-practice](https://hub.docker.com/r/ojasvissar/dsci522-dockerfile-practice)

* **GitHub repository:** [https://github.com/Ojasv-Issar/dsci522-dockerfile-practice](https://github.com/Ojasv-Issar/dsci522-dockerfile-practice)

---

## License

This repository is licensed under the **MIT License**. See `LICENSE.md` for details, including attribution for the GitHub Actions workflow.

---

> This README provides clear instructions for building, running, and using the Docker image while explaining the automation workflow and licensing.

```
