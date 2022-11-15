#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow

inputs:
  message: string
  
outputs:
  outfiles:
    type: File
    outputSource: helloworld/outfile

steps:
  helloworld:
    run: cwl-python2.cwl
    in:
      message: message
    out: 
     - outfile


