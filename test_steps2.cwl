#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow

inputs:
  message: string
  
outputs:
  outfile1:
    type: File
    outputSource: helloworld/outfile1
  outfile2:
    type: File
    outputSource: helloworld/outfile2

steps:
  helloworld:
    run: cwl-python2.cwl
    in:
      message: message
    out: [outfile1, outfile2]


