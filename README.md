# Darts
## Deployment
This chapter details how to create a deployment which can be run outside of Qt Creator.
### Prerequisites
Add Qt's `bin` to the `PATH` environment variable.
### Windows
Call `windeployqt` with the following arguments:
```
windeployqt --dir <destination_dir> --qmldir <project_dir> <app.exe>
```
Copy `<app.exe>` to `<destination_dir>` and run it.