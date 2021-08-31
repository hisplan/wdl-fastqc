#!/usr/bin/env bash

java -jar ~/Applications/womtool.jar \
    validate \
    FastQC.wdl \
    --inputs ./config/template.inputs.json
