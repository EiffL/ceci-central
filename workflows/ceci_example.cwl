{
    "$graph": [
        {
            "arguments": [
                {
                    "loadContents": false,
                    "position": -1,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "-mceci_example"
                },
                {
                    "loadContents": false,
                    "position": 0,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "PZEstimationPipe"
                }
            ],
            "baseCommand": "python3",
            "class": "CommandLineTool",
            "id": "#PZEstimationPipe.cwl",
            "inputs": [
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--DM",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "DM",
                    "type": "File",
                    "id": "#PZEstimationPipe.cwl/DM"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--fiducial_cosmology",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "fiducial_cosmology",
                    "type": "File",
                    "id": "#PZEstimationPipe.cwl/fiducial_cosmology"
                }
            ],
            "label": "PZEstimationPipe",
            "outputs": [
                {
                    "doc": "Some results produced by the pipeline element",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "label": "photoz_pdfs",
                    "outputBinding": {
                        "glob": "photoz_pdfs.txt"
                    },
                    "type": "File",
                    "id": "#PZEstimationPipe.cwl/photoz_pdfs"
                }
            ]
        },
        {
            "arguments": [
                {
                    "loadContents": false,
                    "position": -1,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "-mceci_example"
                },
                {
                    "loadContents": false,
                    "position": 0,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "SourceSummarizer"
                }
            ],
            "baseCommand": "python3",
            "class": "CommandLineTool",
            "id": "#SourceSummarizer.cwl",
            "inputs": [
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--diagnostic_maps",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "diagnostic_maps",
                    "type": "File",
                    "id": "#SourceSummarizer.cwl/diagnostic_maps"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--photoz_pdfs",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "photoz_pdfs",
                    "type": "File",
                    "id": "#SourceSummarizer.cwl/photoz_pdfs"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--tomography_catalog",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "tomography_catalog",
                    "type": "File",
                    "id": "#SourceSummarizer.cwl/tomography_catalog"
                }
            ],
            "label": "SourceSummarizer",
            "outputs": [
                {
                    "doc": "Some results produced by the pipeline element",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "label": "source_summary_data",
                    "outputBinding": {
                        "glob": "source_summary_data.txt"
                    },
                    "type": "File",
                    "id": "#SourceSummarizer.cwl/source_summary_data"
                }
            ]
        },
        {
            "arguments": [
                {
                    "loadContents": false,
                    "position": -1,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "-mceci_example"
                },
                {
                    "loadContents": false,
                    "position": 0,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "SysMapMaker"
                }
            ],
            "baseCommand": "python3",
            "class": "CommandLineTool",
            "id": "#SysMapMaker.cwl",
            "inputs": [
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--DM",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "DM",
                    "type": "File",
                    "id": "#SysMapMaker.cwl/DM"
                }
            ],
            "label": "SysMapMaker",
            "outputs": [
                {
                    "doc": "Some results produced by the pipeline element",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "label": "diagnostic_maps",
                    "outputBinding": {
                        "glob": "diagnostic_maps.txt"
                    },
                    "type": "File",
                    "id": "#SysMapMaker.cwl/diagnostic_maps"
                }
            ]
        },
        {
            "arguments": [
                {
                    "loadContents": false,
                    "position": -1,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "-mceci_example"
                },
                {
                    "loadContents": false,
                    "position": 0,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "WLGCCov"
                }
            ],
            "baseCommand": "python3",
            "class": "CommandLineTool",
            "id": "#WLGCCov.cwl",
            "inputs": [
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--diagnostic_maps",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "diagnostic_maps",
                    "type": "File",
                    "id": "#WLGCCov.cwl/diagnostic_maps"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--fiducial_cosmology",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "fiducial_cosmology",
                    "type": "File",
                    "id": "#WLGCCov.cwl/fiducial_cosmology"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--shear_catalog",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "shear_catalog",
                    "type": "File",
                    "id": "#WLGCCov.cwl/shear_catalog"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--source_summary_data",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "source_summary_data",
                    "type": "File",
                    "id": "#WLGCCov.cwl/source_summary_data"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--tomography_catalog",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "tomography_catalog",
                    "type": "File",
                    "id": "#WLGCCov.cwl/tomography_catalog"
                }
            ],
            "label": "WLGCCov",
            "outputs": [
                {
                    "doc": "Some results produced by the pipeline element",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "label": "covariance",
                    "outputBinding": {
                        "glob": "covariance.txt"
                    },
                    "type": "File",
                    "id": "#WLGCCov.cwl/covariance"
                }
            ]
        },
        {
            "arguments": [
                {
                    "loadContents": false,
                    "position": -1,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "-mceci_example"
                },
                {
                    "loadContents": false,
                    "position": 0,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "WLGCRandoms"
                }
            ],
            "baseCommand": "python3",
            "class": "CommandLineTool",
            "id": "#WLGCRandoms.cwl",
            "inputs": [
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--diagnostic_maps",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "diagnostic_maps",
                    "type": "File",
                    "id": "#WLGCRandoms.cwl/diagnostic_maps"
                }
            ],
            "label": "WLGCRandoms",
            "outputs": [
                {
                    "doc": "Some results produced by the pipeline element",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "label": "random_catalog",
                    "outputBinding": {
                        "glob": "random_catalog.txt"
                    },
                    "type": "File",
                    "id": "#WLGCRandoms.cwl/random_catalog"
                }
            ]
        },
        {
            "arguments": [
                {
                    "loadContents": false,
                    "position": -1,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "-mceci_example"
                },
                {
                    "loadContents": false,
                    "position": 0,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "WLGCSelector"
                }
            ],
            "baseCommand": "python3",
            "class": "CommandLineTool",
            "id": "#WLGCSelector.cwl",
            "inputs": [
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--photoz_pdfs",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "photoz_pdfs",
                    "type": "File",
                    "id": "#WLGCSelector.cwl/photoz_pdfs"
                },
                {
                    "default": [
                        -5.0,
                        5.0
                    ],
                    "doc": "Some documentation about this parameter",
                    "inputBinding": {
                        "itemSeparator": ",",
                        "loadContents": false,
                        "prefix": "--ra_range=",
                        "separate": false,
                        "shellQuote": true
                    },
                    "label": "ra_range",
                    "type": {
                        "items": "float",
                        "type": "array"
                    },
                    "id": "#WLGCSelector.cwl/ra_range"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--shear_catalog",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "shear_catalog",
                    "type": "File",
                    "id": "#WLGCSelector.cwl/shear_catalog"
                },
                {
                    "doc": "Some documentation about this parameter",
                    "inputBinding": {
                        "itemSeparator": ",",
                        "loadContents": false,
                        "prefix": "--zbin_edges=",
                        "separate": false,
                        "shellQuote": true
                    },
                    "label": "zbin_edges",
                    "type": {
                        "items": "float",
                        "type": "array"
                    },
                    "id": "#WLGCSelector.cwl/zbin_edges"
                }
            ],
            "label": "WLGCSelector",
            "outputs": [
                {
                    "doc": "Some results produced by the pipeline element",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "label": "tomography_catalog",
                    "outputBinding": {
                        "glob": "tomography_catalog.txt"
                    },
                    "type": "File",
                    "id": "#WLGCSelector.cwl/tomography_catalog"
                }
            ]
        },
        {
            "arguments": [
                {
                    "loadContents": false,
                    "position": -1,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "-mceci_example"
                },
                {
                    "loadContents": false,
                    "position": 0,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "WLGCSummaryStatistic"
                }
            ],
            "baseCommand": "python3",
            "class": "CommandLineTool",
            "id": "#WLGCSummaryStatistic.cwl",
            "inputs": [
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--covariance",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "covariance",
                    "type": "File",
                    "id": "#WLGCSummaryStatistic.cwl/covariance"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--source_summary_data",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "source_summary_data",
                    "type": "File",
                    "id": "#WLGCSummaryStatistic.cwl/source_summary_data"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--twopoint_data",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "twopoint_data",
                    "type": "File",
                    "id": "#WLGCSummaryStatistic.cwl/twopoint_data"
                }
            ],
            "label": "WLGCSummaryStatistic",
            "outputs": [
                {
                    "doc": "Some results produced by the pipeline element",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "label": "wlgc_summary_data",
                    "outputBinding": {
                        "glob": "wlgc_summary_data.txt"
                    },
                    "type": "File",
                    "id": "#WLGCSummaryStatistic.cwl/wlgc_summary_data"
                }
            ]
        },
        {
            "arguments": [
                {
                    "loadContents": false,
                    "position": -1,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "-mceci_example"
                },
                {
                    "loadContents": false,
                    "position": 0,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "WLGCTwoPoint"
                }
            ],
            "baseCommand": "python3",
            "class": "CommandLineTool",
            "id": "#WLGCTwoPoint.cwl",
            "inputs": [
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--diagnostic_maps",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "diagnostic_maps",
                    "type": "File",
                    "id": "#WLGCTwoPoint.cwl/diagnostic_maps"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--random_catalog",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "random_catalog",
                    "type": "File",
                    "id": "#WLGCTwoPoint.cwl/random_catalog"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--shear_catalog",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "shear_catalog",
                    "type": "File",
                    "id": "#WLGCTwoPoint.cwl/shear_catalog"
                },
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--tomography_catalog",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "tomography_catalog",
                    "type": "File",
                    "id": "#WLGCTwoPoint.cwl/tomography_catalog"
                }
            ],
            "label": "WLGCTwoPoint",
            "outputs": [
                {
                    "doc": "Some results produced by the pipeline element",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "label": "twopoint_data",
                    "outputBinding": {
                        "glob": "twopoint_data.txt"
                    },
                    "type": "File",
                    "id": "#WLGCTwoPoint.cwl/twopoint_data"
                }
            ]
        },
        {
            "class": "Workflow",
            "inputs": [
                {
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "id": "#main/DM",
                    "label": "DM",
                    "type": "File"
                },
                {
                    "id": "#main/apply_flag@shearMeasurementPipe",
                    "label": "apply_flag",
                    "type": "boolean"
                },
                {
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "id": "#main/fiducial_cosmology",
                    "label": "fiducial_cosmology",
                    "type": "File"
                },
                {
                    "default": true,
                    "id": "#main/metacalibration@shearMeasurementPipe",
                    "label": "metacalibration",
                    "type": "boolean"
                },
                {
                    "default": [
                        -5.0,
                        5.0
                    ],
                    "id": "#main/ra_range@WLGCSelector",
                    "label": "ra_range",
                    "type": {
                        "items": "float",
                        "type": "array"
                    }
                },
                {
                    "id": "#main/zbin_edges@WLGCSelector",
                    "label": "zbin_edges",
                    "type": {
                        "items": "float",
                        "type": "array"
                    }
                }
            ],
            "outputs": [
                {
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "id": "#main/wlgc_summary_data",
                    "label": "wlgc_summary_data",
                    "outputSource": "#main/WLGCSummaryStatistic/wlgc_summary_data",
                    "type": "File"
                }
            ],
            "steps": [
                {
                    "id": "#main/PZEstimationPipe",
                    "in": [
                        {
                            "source": "#main/DM",
                            "id": "#main/PZEstimationPipe/DM"
                        },
                        {
                            "source": "#main/fiducial_cosmology",
                            "id": "#main/PZEstimationPipe/fiducial_cosmology"
                        }
                    ],
                    "out": [
                        "#main/PZEstimationPipe/photoz_pdfs"
                    ],
                    "run": "#PZEstimationPipe.cwl"
                },
                {
                    "id": "#main/SourceSummarizer",
                    "in": [
                        {
                            "source": "#main/SysMapMaker/diagnostic_maps",
                            "id": "#main/SourceSummarizer/diagnostic_maps"
                        },
                        {
                            "source": "#main/PZEstimationPipe/photoz_pdfs",
                            "id": "#main/SourceSummarizer/photoz_pdfs"
                        },
                        {
                            "source": "#main/WLGCSelector/tomography_catalog",
                            "id": "#main/SourceSummarizer/tomography_catalog"
                        }
                    ],
                    "out": [
                        "#main/SourceSummarizer/source_summary_data"
                    ],
                    "run": "#SourceSummarizer.cwl"
                },
                {
                    "id": "#main/SysMapMaker",
                    "in": [
                        {
                            "source": "#main/DM",
                            "id": "#main/SysMapMaker/DM"
                        }
                    ],
                    "out": [
                        "#main/SysMapMaker/diagnostic_maps"
                    ],
                    "run": "#SysMapMaker.cwl"
                },
                {
                    "id": "#main/WLGCCov",
                    "in": [
                        {
                            "source": "#main/SysMapMaker/diagnostic_maps",
                            "id": "#main/WLGCCov/diagnostic_maps"
                        },
                        {
                            "source": "#main/fiducial_cosmology",
                            "id": "#main/WLGCCov/fiducial_cosmology"
                        },
                        {
                            "source": "#main/shearMeasurementPipe/shear_catalog",
                            "id": "#main/WLGCCov/shear_catalog"
                        },
                        {
                            "source": "#main/SourceSummarizer/source_summary_data",
                            "id": "#main/WLGCCov/source_summary_data"
                        },
                        {
                            "source": "#main/WLGCSelector/tomography_catalog",
                            "id": "#main/WLGCCov/tomography_catalog"
                        }
                    ],
                    "out": [
                        "#main/WLGCCov/covariance"
                    ],
                    "run": "#WLGCCov.cwl"
                },
                {
                    "id": "#main/WLGCRandoms",
                    "in": [
                        {
                            "source": "#main/SysMapMaker/diagnostic_maps",
                            "id": "#main/WLGCRandoms/diagnostic_maps"
                        }
                    ],
                    "out": [
                        "#main/WLGCRandoms/random_catalog"
                    ],
                    "run": "#WLGCRandoms.cwl"
                },
                {
                    "id": "#main/WLGCSelector",
                    "in": [
                        {
                            "source": "#main/PZEstimationPipe/photoz_pdfs",
                            "id": "#main/WLGCSelector/photoz_pdfs"
                        },
                        {
                            "source": "#main/ra_range@WLGCSelector",
                            "id": "#main/WLGCSelector/ra_range"
                        },
                        {
                            "source": "#main/shearMeasurementPipe/shear_catalog",
                            "id": "#main/WLGCSelector/shear_catalog"
                        },
                        {
                            "source": "#main/zbin_edges@WLGCSelector",
                            "id": "#main/WLGCSelector/zbin_edges"
                        }
                    ],
                    "out": [
                        "#main/WLGCSelector/tomography_catalog"
                    ],
                    "run": "#WLGCSelector.cwl"
                },
                {
                    "id": "#main/WLGCSummaryStatistic",
                    "in": [
                        {
                            "source": "#main/WLGCCov/covariance",
                            "id": "#main/WLGCSummaryStatistic/covariance"
                        },
                        {
                            "source": "#main/SourceSummarizer/source_summary_data",
                            "id": "#main/WLGCSummaryStatistic/source_summary_data"
                        },
                        {
                            "source": "#main/WLGCTwoPoint/twopoint_data",
                            "id": "#main/WLGCSummaryStatistic/twopoint_data"
                        }
                    ],
                    "out": [
                        "#main/WLGCSummaryStatistic/wlgc_summary_data"
                    ],
                    "run": "#WLGCSummaryStatistic.cwl"
                },
                {
                    "id": "#main/WLGCTwoPoint",
                    "in": [
                        {
                            "source": "#main/SysMapMaker/diagnostic_maps",
                            "id": "#main/WLGCTwoPoint/diagnostic_maps"
                        },
                        {
                            "source": "#main/WLGCRandoms/random_catalog",
                            "id": "#main/WLGCTwoPoint/random_catalog"
                        },
                        {
                            "source": "#main/shearMeasurementPipe/shear_catalog",
                            "id": "#main/WLGCTwoPoint/shear_catalog"
                        },
                        {
                            "source": "#main/WLGCSelector/tomography_catalog",
                            "id": "#main/WLGCTwoPoint/tomography_catalog"
                        }
                    ],
                    "out": [
                        "#main/WLGCTwoPoint/twopoint_data"
                    ],
                    "run": "#WLGCTwoPoint.cwl"
                },
                {
                    "id": "#main/shearMeasurementPipe",
                    "in": [
                        {
                            "source": "#main/DM",
                            "id": "#main/shearMeasurementPipe/DM"
                        },
                        {
                            "source": "#main/apply_flag@shearMeasurementPipe",
                            "id": "#main/shearMeasurementPipe/apply_flag"
                        },
                        {
                            "source": "#main/metacalibration@shearMeasurementPipe",
                            "id": "#main/shearMeasurementPipe/metacalibration"
                        }
                    ],
                    "out": [
                        "#main/shearMeasurementPipe/shear_catalog"
                    ],
                    "run": "#shearMeasurementPipe.cwl"
                }
            ],
            "id": "#main"
        },
        {
            "arguments": [
                {
                    "loadContents": false,
                    "position": -1,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "-mceci_example"
                },
                {
                    "loadContents": false,
                    "position": 0,
                    "separate": true,
                    "shellQuote": true,
                    "valueFrom": "shearMeasurementPipe"
                }
            ],
            "baseCommand": "python3",
            "class": "CommandLineTool",
            "doc": "\n    This pipeline element is a template for a shape measurement tool\n    ",
            "id": "#shearMeasurementPipe.cwl",
            "inputs": [
                {
                    "doc": "Some documentation about the input",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--DM",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "DM",
                    "type": "File",
                    "id": "#shearMeasurementPipe.cwl/DM"
                },
                {
                    "doc": "Some documentation about this parameter",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--apply_flag",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "apply_flag",
                    "type": "boolean",
                    "id": "#shearMeasurementPipe.cwl/apply_flag"
                },
                {
                    "default": true,
                    "doc": "Some documentation about this parameter",
                    "inputBinding": {
                        "loadContents": false,
                        "prefix": "--metacalibration",
                        "separate": true,
                        "shellQuote": true
                    },
                    "label": "metacalibration",
                    "type": "boolean",
                    "id": "#shearMeasurementPipe.cwl/metacalibration"
                }
            ],
            "label": "shearMeasurementPipe",
            "outputs": [
                {
                    "doc": "Some results produced by the pipeline element",
                    "format": "file:///home/francois/repo/ceci/test/cwl/TextFile",
                    "label": "shear_catalog",
                    "outputBinding": {
                        "glob": "shear_catalog.txt"
                    },
                    "type": "File",
                    "id": "#shearMeasurementPipe.cwl/shear_catalog"
                }
            ]
        }
    ],
    "cwlVersion": "v1.0"
}