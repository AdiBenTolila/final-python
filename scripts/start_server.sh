#!/bin/bash
docker kill final-python
docker rm final-python
docker run --name final-python -d -p 80:5000 adibentolila/final-python
