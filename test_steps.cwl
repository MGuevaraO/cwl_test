#!/usr/bin/env cwl-runner
cwlVersion: v1.0
class: Workflow

inputs:
  message: string
  workingDir : string
  
outputs:
  outfiles:
    type: File
    outputSource: helloworld/outfile

steps:
  helloworld:
    run: cwl-python2.cwl
    in:
      message: message
      workingDir: workingDir
    out: 
     - outfile

