{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "type": "Statechart",
        "id": "00ffb6d1-d225-4bc0-8b73-7df9987f57b7",
        "attrs": {
          "name": {
            "text": "actuator_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface:\n    in event EV_COIL_ON\n    in event EV_COIL_OFF\n    in event EV_BTN_DOWN\n    \n    out event EV_ACT_WELCOME\n    out event EV_ACT_PRINT_TICKET\n    out event EV_ACT_BARRIER_UP\n    out event EV_ACT_BARRIER_DOWN\n    out event EV_ACT_REGISTER"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": -412,
          "y": -12
        },
        "size": {
          "width": 119,
          "height": 63
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_NO_HAY_AUTO",
            "fontSize": 11
          }
        },
        "id": "24b52900-afe0-4f33-9b7b-5060da1a0049",
        "z": 2
      },
      {
        "position": {
          "x": -594,
          "y": 9
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "0fd85ad2-cf5a-447b-8c42-08be22ce63c6",
        "z": 4,
        "embeds": [
          "b42d9df7-221b-4aef-83b8-b235dd525c5a"
        ]
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": -594,
          "y": 24
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "b42d9df7-221b-4aef-83b8-b235dd525c5a",
        "z": 5,
        "parent": "0fd85ad2-cf5a-447b-8c42-08be22ce63c6"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "0fd85ad2-cf5a-447b-8c42-08be22ce63c6"
        },
        "target": {
          "id": "24b52900-afe0-4f33-9b7b-5060da1a0049",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "13.333%",
              "dy": "48.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "508760be-4ab5-4e71-a362-c1f031c0b014",
        "z": 6,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 187,
          "y": -15
        },
        "size": {
          "width": 127,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_WELCOME",
            "fontSize": 11
          }
        },
        "id": "c902a2bf-33d9-4576-be97-711c1955483e",
        "z": 9
      },
      {
        "position": {
          "x": 191,
          "y": 144
        },
        "size": {
          "width": 154,
          "height": 73
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BARRIER_UP",
            "fontSize": 11
          }
        },
        "id": "ee35ccfd-f325-45ff-b6b8-fb14a2a49cf0",
        "z": 13
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c902a2bf-33d9-4576-be97-711c1955483e"
        },
        "target": {
          "id": "ee35ccfd-f325-45ff-b6b8-fb14a2a49cf0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "50.833%",
              "dy": "18.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_DOWN \n/  raise EV_ACT_PRINT_TICKET; \n    raise EV_ACT_BARRIER_UP"
              }
            },
            "position": {
              "distance": 0.5505050505050505,
              "offset": -89.9999987792969,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "b82b1e04-c218-4ccd-adea-65d81c2f915f",
        "z": 14,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "24b52900-afe0-4f33-9b7b-5060da1a0049"
        },
        "target": {
          "id": "c902a2bf-33d9-4576-be97-711c1955483e",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "7.874%",
              "dy": "53.333%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_COIL_ON \n/ raise EV_ACT_WELCOME"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "1b16482c-851d-482d-af3d-c2a7296ecf7f",
        "z": 36,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "ee35ccfd-f325-45ff-b6b8-fb14a2a49cf0"
        },
        "target": {
          "id": "24b52900-afe0-4f33-9b7b-5060da1a0049",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "41.176%",
              "dy": "96.825%",
              "rotate": true
            }
          },
          "priority": true
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_COIL_OFF \n/ raise EV_ACT_BARRIER_DOWN;\n  raise EV_ACT_REGISTER"
              }
            },
            "position": {
              "distance": 0.4735315876961191,
              "offset": -29,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          },
          {
            "attrs": {}
          },
          {
            "attrs": {}
          }
        ],
        "id": "a3cca143-f6de-4616-8e78-515f74e64d49",
        "z": 37,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      }
    ]
  },
  "genModel": {
    "generator": {
      "type": "create::c",
      "features": {
        "Outlet": {
          "targetProject": "",
          "targetFolder": "",
          "libraryTargetFolder": "",
          "skipLibraryFiles": "",
          "apiTargetFolder": ""
        },
        "LicenseHeader": {
          "licenseText": ""
        },
        "FunctionInlining": {
          "inlineReactions": false,
          "inlineEntryActions": false,
          "inlineExitActions": false,
          "inlineEnterSequences": false,
          "inlineExitSequences": false,
          "inlineChoices": false,
          "inlineEnterRegion": false,
          "inlineExitRegion": false,
          "inlineEntries": false
        },
        "OutEventAPI": {
          "observables": false,
          "getters": false
        },
        "IdentifierSettings": {
          "moduleName": "ActuatorStatechart",
          "statemachinePrefix": "actuatorStatechart",
          "separator": "_",
          "headerFilenameExtension": "h",
          "sourceFilenameExtension": "c"
        },
        "Tracing": {
          "enterState": false,
          "exitState": false,
          "generic": false
        },
        "Includes": {
          "useRelativePaths": false,
          "generateAllSpecifiedIncludes": false
        },
        "GeneratorOptions": {
          "userAllocatedQueue": false,
          "metaSource": false
        },
        "GeneralFeatures": {
          "timerService": false,
          "timerServiceTimeType": ""
        },
        "Debug": {
          "dumpSexec": false
        }
      }
    }
  }
}