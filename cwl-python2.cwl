cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["python", "/home/mg254721/Bureau/test_cwl/print_msg.py"]

arguments:
  - position: 1
    valueFrom: $(inputs.message)

inputs:
  message: string
    
outputs:
  example_out:
    type: string
    outputBinding:
      glob: hello.txt
    
