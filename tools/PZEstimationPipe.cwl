#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_example}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: PZEstimationPipe}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: PZEstimationPipe
inputs:
  DM:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --DM, separate: true, shellQuote: true}
    label: DM
    type: File
  fiducial_cosmology:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --fiducial_cosmology, separate: true,
      shellQuote: true}
    label: fiducial_cosmology
    type: File
label: PZEstimationPipe
outputs:
  photoz_pdfs:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: photoz_pdfs
    outputBinding: {glob: photoz_pdfs.txt}
    type: File
