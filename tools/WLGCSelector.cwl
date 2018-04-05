#!/usr/bin/env cwl-runner

arguments:
- {loadContents: false, position: -1, separate: true, shellQuote: true, valueFrom: -mceci_example}
- {loadContents: false, position: 0, separate: true, shellQuote: true, valueFrom: WLGCSelector}
baseCommand: python3
class: CommandLineTool
cwlVersion: v1.0
id: WLGCSelector
inputs:
  photoz_pdfs:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --photoz_pdfs, separate: true, shellQuote: true}
    label: photoz_pdfs
    type: File
  ra_range:
    default: [-5.0, 5.0]
    doc: Some documentation about this parameter
    inputBinding: {itemSeparator: ',', loadContents: false, prefix: --ra_range=, separate: false,
      shellQuote: true}
    label: ra_range
    type: {items: float, type: array}
  shear_catalog:
    doc: Some documentation about the input
    format: TextFile
    inputBinding: {loadContents: false, prefix: --shear_catalog, separate: true, shellQuote: true}
    label: shear_catalog
    type: File
  zbin_edges:
    doc: Some documentation about this parameter
    inputBinding: {itemSeparator: ',', loadContents: false, prefix: --zbin_edges=,
      separate: false, shellQuote: true}
    label: zbin_edges
    type: {items: float, type: array}
label: WLGCSelector
outputs:
  tomography_catalog:
    doc: Some results produced by the pipeline element
    format: TextFile
    label: tomography_catalog
    outputBinding: {glob: tomography_catalog.txt}
    type: File
