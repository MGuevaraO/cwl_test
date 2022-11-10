cwlVersion: v1.0
class: CommandLineTool

baseCommand: ["python", "/home/mg254721/Dropbox/test_cwl/print_msg.py"]

arguments:
  - position: 1
    valueFrom: $(inputs.message)
  - position: 2
    valueFrom: $(inputs.workingDir)

stdout: $(inputs.outfile)    
    
inputs:
  message: string
  workingDir: string

  outfile:
    type: string
    default: log.txt
    
outputs:
  outfile:
    type: stdout    
