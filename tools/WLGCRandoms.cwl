#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_example}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: WLGCRandoms}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: WLGCRandoms
inputs:
  diagnostic_maps:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --diagnostic_maps, separate: true,
      shellQuote: true}
    label: diagnostic_maps
    type: File
label: WLGCRandoms
outputs:
  random_catalog:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: random_catalog
    outputBinding: {glob: random_catalog.txt}
    type: File
