#!/usr/bin/env cwl-runner

class: Workflow
cwlVersion: v1.0
inputs:
  DM: {format: TextFile, id: DM, label: DM, type: File}
  apply_flag@shearMeasurementPipe: {id: apply_flag@shearMeasurementPipe, label: apply_flag,
    type: boolean}
  fiducial_cosmology: {format: TextFile, id: fiducial_cosmology, label: fiducial_cosmology,
    type: File}
  metacalibration@shearMeasurementPipe: {default: true, id: metacalibration@shearMeasurementPipe,
    label: metacalibration, type: boolean}
  ra_range@WLGCSelector:
    default: [-5.0, 5.0]
    id: ra_range@WLGCSelector
    label: ra_range
    type: {items: float, type: array}
  zbin_edges@WLGCSelector:
    id: zbin_edges@WLGCSelector
    label: zbin_edges
    type: {items: float, type: array}
outputs:
  wlgc_summary_data: {format: TextFile, id: wlgc_summary_data, label: wlgc_summary_data,
    outputSource: WLGCSummaryStatistic/wlgc_summary_data, type: File}
steps:
  PZEstimationPipe:
    id: PZEstimationPipe
    in: {DM: DM, fiducial_cosmology: fiducial_cosmology}
    out: [photoz_pdfs]
    run: PZEstimationPipe.cwl
  SourceSummarizer:
    id: SourceSummarizer
    in: {diagnostic_maps: SysMapMaker/diagnostic_maps, photoz_pdfs: PZEstimationPipe/photoz_pdfs,
      tomography_catalog: WLGCSelector/tomography_catalog}
    out: [source_summary_data]
    run: SourceSummarizer.cwl
  SysMapMaker:
    id: SysMapMaker
    in: {DM: DM}
    out: [diagnostic_maps]
    run: SysMapMaker.cwl
  WLGCCov:
    id: WLGCCov
    in: {diagnostic_maps: SysMapMaker/diagnostic_maps, fiducial_cosmology: fiducial_cosmology,
      shear_catalog: shearMeasurementPipe/shear_catalog, source_summary_data: SourceSummarizer/source_summary_data,
      tomography_catalog: WLGCSelector/tomography_catalog}
    out: [covariance]
    run: WLGCCov.cwl
  WLGCRandoms:
    id: WLGCRandoms
    in: {diagnostic_maps: SysMapMaker/diagnostic_maps}
    out: [random_catalog]
    run: WLGCRandoms.cwl
  WLGCSelector:
    id: WLGCSelector
    in: {photoz_pdfs: PZEstimationPipe/photoz_pdfs, ra_range: ra_range@WLGCSelector,
      shear_catalog: shearMeasurementPipe/shear_catalog, zbin_edges: zbin_edges@WLGCSelector}
    out: [tomography_catalog]
    run: WLGCSelector.cwl
  WLGCSummaryStatistic:
    id: WLGCSummaryStatistic
    in: {covariance: WLGCCov/covariance, source_summary_data: SourceSummarizer/source_summary_data,
      twopoint_data: WLGCTwoPoint/twopoint_data}
    out: [wlgc_summary_data]
    run: WLGCSummaryStatistic.cwl
  WLGCTwoPoint:
    id: WLGCTwoPoint
    in: {diagnostic_maps: SysMapMaker/diagnostic_maps, random_catalog: WLGCRandoms/random_catalog,
      shear_catalog: shearMeasurementPipe/shear_catalog, tomography_catalog: WLGCSelector/tomography_catalog}
    out: [twopoint_data]
    run: WLGCTwoPoint.cwl
  shearMeasurementPipe:
    id: shearMeasurementPipe
    in: {DM: DM, apply_flag: apply_flag@shearMeasurementPipe, metacalibration: metacalibration@shearMeasurementPipe}
    out: [shear_catalog]
    run: shearMeasurementPipe.cwl
