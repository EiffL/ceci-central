#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_example}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: WLGCTwoPoint}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: WLGCTwoPoint
inputs:
  diagnostic_maps:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --diagnostic_maps, separate: true,
      shellQuote: true}
    label: diagnostic_maps
    type: File
  random_catalog:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --random_catalog, separate: true,
      shellQuote: true}
    label: random_catalog
    type: File
  shear_catalog:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --shear_catalog, separate: true, shellQuote: true}
    label: shear_catalog
    type: File
  tomography_catalog:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --tomography_catalog, separate: true,
      shellQuote: true}
    label: tomography_catalog
    type: File
label: WLGCTwoPoint
outputs:
  twopoint_data:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: twopoint_data
    outputBinding: {glob: twopoint_data.txt}
    type: File
