# SWYNEX Final Delivery Pipeline

## Project Overview

This project demonstrates an automated CI/CD pipeline
using GitHub Actions and Docker.

The pipeline automatically checks, tests, builds and
publishes a Docker image to GitHub Container Registry.

## Technologies Used

- Ubuntu
- Bash
- Git and GitHub
- GitHub Actions
- Docker
- GitHub Container Registry (GHCR)

## Application Features

The Bash calculator supports:

- Addition
- Subtraction
- Multiplication
- Division

## Pipeline Workflow

1. Developer pushes code to GitHub.
2. GitHub Actions checks Bash syntax.
3. Automated application tests are executed.
4. Docker image is built.
5. Deployment job waits for successful tests.
6. Docker image is published to GHCR.
7. Image is tagged as latest and with its commit SHA.

Pull requests targeting main run build and test,
but do not publish an image.

## Repository Structure

- app.sh: Bash calculator application
- test.sh: Automated application tests
- Dockerfile: Docker image instructions
- .dockerignore: Files excluded from build context
- .github/workflows/pipeline.yml: CI/CD workflow
- README.md: Project documentation
- RELEASE_NOTES.md: Release information

## Run Locally

Check Bash syntax:

    bash -n app.sh
    bash -n test.sh

Run automated tests:

    bash test.sh

Build Docker image:

    docker build -t swynex-final-delivery .

Run the application:

    docker run --rm swynex-final-delivery

## Published Docker Image

Registry: GitHub Container Registry (GHCR)

Image:

    ghcr.io/harsh-059/swynex-final-delivery-pipeline:latest

Pull the image:

    docker pull ghcr.io/harsh-059/swynex-final-delivery-pipeline:latest

Run the published image:

    docker run --rm ghcr.io/harsh-059/swynex-final-delivery-pipeline:latest

The image is available after a successful deployment
and publication by GitHub Actions.

## Deployment Conditions

- Push to main: Build, test and publish.
- Pull request to main: Build and test only.
- Deployment runs only after the build-and-test job succeeds.

## Learning Outcomes

- CI/CD pipeline creation
- Automated testing
- Docker image building
- Container registry publishing
- Pipeline documentation
- Release management

## Author

SWYNEX Internship Project
