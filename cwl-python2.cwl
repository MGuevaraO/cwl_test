cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["python", "/home/mg254721/Dropbox/test_cwl/print_msg.py"]

arguments:
  - position: 1
    valueFrom: $(inputs.message)

    
inputs:
  message: string

    
outputs:
  outfile:
    type: File
    outputBinding:
      glob: out_python.txt
