# Poetry in Docker

## Overview
- This image will provide a minimally installed containerized version of Poetry
- This image is based on the current stable, slim version of Debian.
- This image is installing Poetry in a builder stage to eliminate intermediate files generated in downloading and creating Poetry. The final stage copies the poetry directory from the /opt in the builder stage to the final stage.

## How to build this image
- `docker build -t poetry .`

## How to use this image
Normally you would want to use this image referenced in another Dockerfile.
  - `FROM poetry` This will give you the installation, and you can use it however you need in your build.
If you have a desire to actually just run the poetry binary, running the Docker image will execute the poetry binary. You can simply call the image and pass in arguments.
- `docker run --rm --net host poetry <arguments for poetry>
