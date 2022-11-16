#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow

inputs:
  message: string
  
outputs:
  outfiles:
    type: File
    outputSource: helloworld/outfile
  outfiles2:
    type: File
    outputSource: helloworld/outfile2

steps:
  helloworld:
    run: cwl-python2.cwl
    in:
      message: message
    out: 
     - outfile
     - outfile2


