cwlVersion: v1.0
class: CommandLineTool

baseCommand: python

inputs:
  message: 
    type: string
    inputBinding:
      position: 2

  script:
    type: File
    inputBinding:
      position: 1
    default:
      class: File
      location: print_msg.py
  

outputs:
  outfile1:
    type: File
    outputBinding:
      glob: "*"

  outfile2:
    type: File
    outputBinding:
      glob: "*"
