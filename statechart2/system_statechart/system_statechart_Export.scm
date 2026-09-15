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
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "attrs": {
          "name": {
            "text": "system_statechart Export Export"
          },
          "specification": {
            "text": "@EventDriven\r\n@SuperSteps(no)\r\n\r\n\r\ninterface:\r\n    in event EV_SYS_CAMERA_ON\r\n    in event EV_SYS_BTN_DOWN\r\n    in event EV_NO_HAY_AUTO\r\n    \r\n    in event EV_TICK\r\n    \r\n    out event EV_SYS_BARRIER_UP\r\n    out event EV_SYS_BARRIER_DOWN\r\n\r\n    var tick: integer\r\n    var DEL_BARRIER_DEBOUNCE: integer = 5000"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 131,
          "y": 263
        },
        "size": {
          "height": 60,
          "width": 152
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_NO_HAY_AUTO",
            "fontSize": 11
          }
        },
        "id": "8b658042-c71c-4631-a7d9-ccc80bd1edfe",
        "z": 29
      },
      {
        "position": {
          "x": 29,
          "y": 284
        },
        "size": {
          "height": 18,
          "width": 18
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "aa0fa2fd-0649-4f5a-af30-97b16edea87c",
        "z": 31,
        "embeds": [
          "e61cd7bd-0990-4203-9824-ccead83d8b30"
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
          "x": 29,
          "y": 299
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "e61cd7bd-0990-4203-9824-ccead83d8b30",
        "z": 32,
        "parent": "aa0fa2fd-0649-4f5a-af30-97b16edea87c"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "aa0fa2fd-0649-4f5a-af30-97b16edea87c"
        },
        "target": {
          "id": "8b658042-c71c-4631-a7d9-ccc80bd1edfe",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "3.289%",
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
        "id": "7894b918-2aa9-4883-967c-741fa428132c",
        "z": 33,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 420,
          "y": 264
        },
        "size": {
          "height": 60,
          "width": 208
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_HAY_AUTO",
            "fontSize": 11
          }
        },
        "id": "9e257d4f-118a-4fc3-b1b2-35c4fe5c5e36",
        "z": 36
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "8b658042-c71c-4631-a7d9-ccc80bd1edfe"
        },
        "target": {
          "id": "9e257d4f-118a-4fc3-b1b2-35c4fe5c5e36",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "5.769%",
              "dy": "36.667%",
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
                "text": "EV_SYS_CAMERA_ON"
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
        "id": "c2b3f3f7-3fcf-4336-b9c2-85c885afef49",
        "z": 37,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 960,
          "y": 260
        },
        "size": {
          "height": 64,
          "width": 162
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BARRIER_UP",
            "fontSize": 11
          }
        },
        "id": "7abc91bf-af65-4f39-867d-8622f73dc3d3",
        "z": 59,
        "embeds": [
          "c93d066e-dac5-4938-86c2-1dabd7f7ff4a"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "9e257d4f-118a-4fc3-b1b2-35c4fe5c5e36"
        },
        "target": {
          "id": "7abc91bf-af65-4f39-867d-8622f73dc3d3",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "8.025%",
              "dy": "43.75%",
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
                "text": "EV_SYS_BTN_DOWN\n/ raise EV_SYS_BARRIER_UP ;\n  tick = 0"
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
        "id": "0a7fcd9e-71e9-4a74-a7fb-50d0c9bb69e6",
        "z": 60,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7abc91bf-af65-4f39-867d-8622f73dc3d3"
        },
        "target": {
          "id": "7abc91bf-af65-4f39-867d-8622f73dc3d3",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "19.753%",
              "dy": "20.313%",
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
                "text": "every 1 ms / tick++"
              }
            },
            "position": {
              "distance": 0.5192640336901292,
              "offset": 14,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
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
        "id": "c93d066e-dac5-4938-86c2-1dabd7f7ff4a",
        "z": 60,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 1101,
            "y": 167
          },
          {
            "x": 1093,
            "y": 127
          },
          {
            "x": 1056,
            "y": 127
          }
        ],
        "parent": "7abc91bf-af65-4f39-867d-8622f73dc3d3"
      },
      {
        "position": {
          "x": 963,
          "y": 481
        },
        "size": {
          "height": 72,
          "width": 157
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BARRIER_DOWN",
            "fontSize": 11
          }
        },
        "id": "3823e1f8-4b14-49d8-be81-2c36871cdc50",
        "z": 61
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "3823e1f8-4b14-49d8-be81-2c36871cdc50"
        },
        "target": {
          "id": "8b658042-c71c-4631-a7d9-ccc80bd1edfe",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "48.684%",
              "dy": "58.333%",
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
                "text": "EV_NO_HAY_AUTO"
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
        "id": "f127fd42-8a12-46e1-b460-d4cb77597999",
        "z": 63,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "7abc91bf-af65-4f39-867d-8622f73dc3d3"
        },
        "target": {
          "id": "3823e1f8-4b14-49d8-be81-2c36871cdc50",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "52.229%",
              "dy": "15.278%",
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
                "text": "[tick >= DEL_BARRIER_DEBOUNCE] / raise EV_SYS_BARRIER_DOWN"
              }
            },
            "position": {
              "distance": 0.43630573248407645,
              "offset": -174,
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
        "id": "3c3ad3d9-9c97-41c2-a231-f2365bd5d2a1",
        "z": 64,
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
          "moduleName": "SystemStatechartExport",
          "statemachinePrefix": "systemStatechartExport",
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