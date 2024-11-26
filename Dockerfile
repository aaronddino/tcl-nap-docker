# Base Image: Ubuntu 18.04
FROM amd64/ubuntu:18.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive
ENV PATH="/usr/bin:/usr/local/bin:$PATH"
ENV TCLLIBPATH="/usr/local/lib/nap6.4:$TCLLIBPATH"
ENV LD_LIBRARY_PATH="/usr/local/lib:$LD_LIBRARY_PATH"

# Install dependencies required for libnap6.4.so and TCL, including missing libraries
RUN apt-get update && apt-get install -y \
    build-essential \
    tcl8.5 \
    tcl8.5-dev \
    libtcl8.5 \
    libnetcdf-dev \
    libhdf5-serial-dev \
    libproj-dev \
    libcurl4-openssl-dev \
    libjpeg-dev \
    libpthread-stubs0-dev \
    zlib1g-dev \
    libssl-dev \
    libffi-dev \
    libgssapi-krb5-2 \
    libsasl2-dev \
    libldap2-dev \
    libkrb5-dev \
    liblzma-dev \
    libnetcdf13 \
    libhdf4-0-alt \
    software-properties-common \
    && apt-get clean

# Add the PROJ repository to get the correct PROJ version
RUN add-apt-repository ppa:ubuntugis/ppa && apt-get update && \
    apt-get install -y libproj-dev libproj13

# Symlink for tclsh
RUN ln -s /usr/bin/tclsh8.5 /usr/bin/tclsh

# Copy NAP files into the container
COPY lib/nap6.4 /usr/local/lib/nap6.4

# Debug: Output the pkgIndex.tcl file to verify its presence
RUN cat /usr/local/lib/nap6.4/pkgIndex.tcl

# Copy libnap6.4.so into the container
COPY lib/libnap6.4.so /usr/local/lib/libnap6.4.so

# Set working directory
WORKDIR /app

# Default command to run TCLSH
CMD ["tclsh"]
