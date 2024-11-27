# tcl-nap-docker
Containerisation (portable runtime execution) of TCL (8.5) Environment with NAP (6.4) installed. Used for testing scientific libraries written in TCL with the NAP library.

## Docker Image
A working version of the image is available on Docker Hub:
```
docker pull aaronddino/tcl-nap
```


## Self-Setup

To Build
```
docker build -t tcl-nap-env .
```

## Start
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
