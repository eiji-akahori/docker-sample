#! /bin/sh
docker run --rm --name sample_admin -v $(pwd)/project:/home/docker/project:rw -i -t sample/admin /bin/bash --login
