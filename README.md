# npm + Network Test

This is a reproduction repo of a very baffling issue I've been experiencing on a
specific macOS device.

## Prerequisites

- npm
  - Bundled with Node
    - Install LTS version from <https://nodejs.org/>
- Docker Desktop
  - Download from <https://www.docker.com/products/docker-desktop/>
- Clone this repo
  - `git clone https://github.com/keawade/npm-network-test.git`

## Steps to reproduce on bare metal

Run the following command in the cloned repo

```bash
npm install --cache /tmp/empty-cache
```

Expectation: Command should exit without error within 5-10 minutes.

If any files were created during a test run, run
`rm -rf node_modules/ package-lock.json /tmp/emtpy-cache` to reset the
environment.

## Steps to reproduce in Docker

This version experiences the same issue but much more acutely than on bare
metal.

Run the following command in the cloned repo

```bash
docker build . -t npm-network-test
```

Expectation: Command should exit without error within 5-10 minutes. I also
configured it to print out a celebratory message if it works successfully.
