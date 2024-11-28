# tcl-nap-docker
Containerisation (portable runtime execution) of TCL (8.5) Environment with NAP (6.4) installed. Used for testing scientific libraries written in TCL with the NAP library.


## TCL with NAP (Network Analysis Package) Docker Environment

This Docker image provides a preconfigured environment for running TCL scripts with the NAP (Network Analysis Package) for network analysis and scientific computing. It includes the TCL 8.5 interpreter, the NAP package, and all necessary dependencies like libproj, netCDF, HDF5, and libcurl.

Key Features:
* TCL 8.5: A powerful, embeddable scripting language.
* NAP (Network Analysis Package): A set of TCL scripts for performing advanced network analysis.
* Dependencies: Includes essential libraries like libnetcdf, libproj, libhdf5, and more for working with geospatial data and scientific applications.
* Preconfigured: Ready-to-use environment with all dependencies set up, so you can start analyzing your network data immediately.

## Docker Image
A working version of the image is available on Docker Hub: https://hub.docker.com/r/aaronddino/tcl-nap
```
docker pull aaronddino/tcl-nap
```
Run instructions are available on the Docker Hub page.



## Self-Setup

### Build
```
docker build -t tcl-nap-env .
```

### Usage
To Run
```
docker run -it tcl-nap-env
```

To launch NAP Environment
```
source /usr/local/lib/init.tcl
nap "n = {2 2.4 3.5}"
$n
```

Expected output:
```
% source /usr/local/lib/init.tcl
% nap "n = {2 2.4 3.5}"
::NAP::13-13
% $n
2 2.4 3.5
```
