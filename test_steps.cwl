#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow

inputs:
  message: string
outputs:
  result:
    type: File
    outputSource: helloworld/example_out

steps:
  helloworld:
    run: cwl-python2.cwl
    in:
      message: message
    out: example_out

