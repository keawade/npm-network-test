# npm + Network Test

## Prerequisites

- npm
  - Bundled with Node
    - Install LTS version from <https://nodejs.org/>
- Docker Desktop
  - Download from <https://www.docker.com/products/docker-desktop/>

## Steps to reproduce on bare metal

Run the following command

```bash
npm install
```

Expectation: Command should exit without error within 5-10 minutes.

## Steps to reproduce in Docker

This version experiences the same issue but much more acutely than on bare
metal.

Run the following command

```bash
docker build . -t npm-network-test
```

Expectation: Command should exit without error within 5-10 minutes. I also
configured it to print out a celebratory message if it works successfully.
