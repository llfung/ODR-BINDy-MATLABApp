# MATLAB GUI App for ODR-BINDy

## Install instruction
While this app does not require a MATLAB license or the full MATLAB software to run, it does require the [MATLAB RunTime](https://uk.mathworks.com/products/compiler/matlab-runtime.html).

To install the app AND the MATLAB RunTime, simply download and run [ODRBINDy3D.install](./ODRBINDy3D.install) on your Linux machine, or [ODRBINDy3D.exe](./ODRBINDy3D.exe) for Windows, or the ODRBINDy2D if you want to process 2D signals instead of 3D.
The interface will guide you through the process of installing MATLAB RunTime and the GUI application at the same time. 
When prompt with the install location, please specify a location of install. The default location requires administrative access.
(For Windows user: you will have to install the RunTime in ProgramFile).

## Run instruction (Linux)
Once installed, run the app by calling
```
sh run_ODR_BINDy_3D.sh <MATLAB_RUNTIME_FOLDER>
```
where `<MATLAB_RUNTIME_FOLDER>` is the path to the folder where the MATLAB RunTime is.

For example, the RunTime may be installed in a folder named `R2024b` in the parent directory, in which case, run
```
sh run_ODR_BINDy_3D.sh ../R2024b
```

## Run instruction (Windows)
Once installed, run the app from the start menu. The app is located in %AppData%.

## Data loading
You can load whatever time-series data into the app. The application currently only works for 2 or 3 Dimensional System that is equi-temporally sampled. 

The file is expected to be a `.mat` file with the following variables
- `Data`: a $$N \times 3$$ (or $$N \times 2$$) array containing the time-series data, corrputed by measurement noise
- `dt`: the $$\Delta t$$ of the time-series
- `eps_x`: the noise standard deviation.

The MAT files in the repo gives some examples for one to try.

## Development
This is an alpha software meant for the commuity to try out the new method. The goal is to eventually open-source the code. Currently, we are hard at work to write some publications on the new method.
Stay tune!
