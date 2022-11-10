cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["python", "/home/mg254721/Bureau/test_cwl/print_msg.py"]

arguments:
  - position: 1
    valueFrom: $(inputs.message)

stdout: $(inputs.outfile)    
    
inputs:
  message: string

  outfile:
    type: string
    default: log.csv
    
outputs:
  outfile:
    type: stdout    
