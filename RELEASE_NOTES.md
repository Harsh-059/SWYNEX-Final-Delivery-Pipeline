# Release Notes

## Version 1.0.0

### Release Overview

Initial release of the SWYNEX Final Delivery Pipeline.

### Features

- Bash calculator application
- Automated Bash syntax validation
- Automated application tests
- Docker image creation
- GitHub Actions CI/CD workflow
- Automated publishing to GHCR
- Docker image tags: latest and commit SHA

### Build and Test

GitHub Actions validates the application and runs
automated tests before Docker image publication.

### Deployment

The Docker image is published to GitHub Container
Registry after successful build and test execution.

### Documentation

Added project README and release notes.

### Status

Initial release.
