#!/bin/bash

script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

cd ${script_dir}
docker run --rm -it -v workspace:/workspace -v $(pwd)/source:/source:ro --name mull mull-workshop

