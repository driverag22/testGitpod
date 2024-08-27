# Introduction
Example of gitpod for the use of [waterproof-vscode](https://github.com/impermeable/waterproof-vscode/).

To run it, simply click the "gitpod" button below:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/driverag22/testGitpod)

# Config
The configuration of gitpod depends on three files:
```bash
.
├── .vscode/
│   ├── settings.json
├── .gitpod.Dockerfile
└── .gitpod.yml
```

The `metric_spaces_blue.mv` file is simply an example file to edit from gitpod.

The `.gitpod.Dockerfile` defines the docker container for the gitpod workspace, which handles the dependencies (`coq`, `coq-waterproof` and `coq-lsp`).

The `.gitpod.yml` file simply defines the path of the `.gitpod.Dockerfile` file, and the vscode plugins (in this case, only `waterproof-tue.waterproof`).
The installation of the dependencies can also be done through this file. An attempt at this can be found in the [yamlFileApproach](https://github.com/driverag22/testGitpod/blob/yamlFileApproach) branch.

Lastly, the `.vscode/settings.json` file defines the settings for vscode to follow. For us, this is only the Waterproof.path setting, pointing to the `coq-lsp` binary.
