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
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\r\n@SuperSteps(no)\r\n\r\n\r\ninterface:\r\n    in event EV_BTN_PRESSED\r\n    in event EV_BTN_RELEASED\r\n    out event EV_SYS_BTN_UP\r\n    out event EV_SYS_BTN_DOWN\r\n\r\n    var tick: integer\r\n    var DEL_BTN_DEBOUNCE: integer"
          }
        },
        "z": 1
      },
      {
        "position": {
          "x": 222.5,
          "y": 130
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "type": "Entry",
        "entryKind": "Initial",
        "attrs": {},
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 2,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
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
          "x": 222.5,
          "y": 145
        },
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 3,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
      },
      {
        "position": {
          "x": 400,
          "y": 200
        },
        "size": {
          "width": 94,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_FALL",
            "fontSize": 11
          }
        },
        "id": "cee27f7d-3ae0-4b24-8418-c5886489d033",
        "z": 9,
        "embeds": [
          "04ade29b-0ad7-49b3-b8d8-b14e65e833fb"
        ]
      },
      {
        "position": {
          "x": 159,
          "y": 202
        },
        "size": {
          "width": 103,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_UP",
            "fontSize": 11
          }
        },
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 10
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
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
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 11
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "cee27f7d-3ae0-4b24-8418-c5886489d033",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "26.667%",
              "dy": "50%",
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
                "text": "EV_BTN_PRESSED / tick = 0"
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
        "id": "2141e713-2e58-4a0a-adc9-9606b7cb77a2",
        "z": 12,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 400,
          "y": 352
        },
        "size": {
          "width": 86,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_DOWN",
            "fontSize": 11
          }
        },
        "id": "a6800679-c3c8-4030-82e7-7322483798d2",
        "z": 14
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cee27f7d-3ae0-4b24-8418-c5886489d033"
        },
        "target": {
          "id": "a6800679-c3c8-4030-82e7-7322483798d2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "60%",
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
                "text": "[tick >= DEL_BTN_DEBOUNCE] / raise EV_SYS_BTN_DOWN"
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
        "id": "88e4f77e-91ea-474c-b788-96c1a9994aeb",
        "z": 15,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cee27f7d-3ae0-4b24-8418-c5886489d033"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "95%",
              "dy": "78.333%",
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
                "text": "EV_BTN_RELEASED"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "0bebb69f-cad1-476e-bae2-f5640244bfc8",
        "z": 21,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "position": {
          "x": 155,
          "y": 352
        },
        "size": {
          "width": 93,
          "height": 60
        },
        "type": "State",
        "attrs": {
          "name": {
            "text": "ST_BTN_RISING",
            "fontSize": 11
          }
        },
        "id": "c3cd53be-f9ad-4e37-814c-db6f878c0986",
        "z": 22,
        "embeds": [
          "03fbcf81-55f7-4727-a5f6-3316130e9528"
        ]
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "a6800679-c3c8-4030-82e7-7322483798d2"
        },
        "target": {
          "id": "c3cd53be-f9ad-4e37-814c-db6f878c0986",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "90%",
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
                "text": "EV_BTN_RELEASED / tick = 0"
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
        "id": "4dbcf936-cee7-47d4-853f-7872d9bcaa11",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c3cd53be-f9ad-4e37-814c-db6f878c0986"
        },
        "target": {
          "id": "a6800679-c3c8-4030-82e7-7322483798d2",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "20%",
              "dy": "23.333%",
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
                "text": "EV_BTN_PRESSED"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
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
        "id": "aa7e6a7f-533e-415f-93b1-7ddb3045516a",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c3cd53be-f9ad-4e37-814c-db6f878c0986"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "43.333%",
              "dy": "80%",
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
                "text": "[tick >= DEL_BTN_DEBOUNCE] / raise EV_SYS_BTN_UP"
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
        "id": "e666ff1a-eb5c-4a18-8fa4-e64e9ae922d8",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": []
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "c3cd53be-f9ad-4e37-814c-db6f878c0986"
        },
        "target": {
          "id": "c3cd53be-f9ad-4e37-814c-db6f878c0986",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "20%",
              "dy": "81.667%",
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
            "position": {}
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
        "id": "03fbcf81-55f7-4727-a5f6-3316130e9528",
        "z": 23,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 152,
            "y": 442
          }
        ],
        "parent": "c3cd53be-f9ad-4e37-814c-db6f878c0986"
      },
      {
        "type": "Transition",
        "attrs": {},
        "source": {
          "id": "cee27f7d-3ae0-4b24-8418-c5886489d033"
        },
        "target": {
          "id": "cee27f7d-3ae0-4b24-8418-c5886489d033",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": "91.489%",
              "dy": "91.667%",
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
            "position": {}
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
        "id": "04ade29b-0ad7-49b3-b8d8-b14e65e833fb",
        "z": 24,
        "router": {
          "name": "orthogonal"
        },
        "vertices": [
          {
            "x": 452,
            "y": 169
          },
          {
            "x": 523,
            "y": 169
          }
        ],
        "parent": "cee27f7d-3ae0-4b24-8418-c5886489d033"
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
          "moduleName": "SensorStatechart",
          "statemachinePrefix": "sensorStatechart",
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