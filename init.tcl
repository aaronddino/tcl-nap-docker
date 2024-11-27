# init.tcl -- TCL initialization script

# Add nap6.4 to the auto_path
lappend auto_path /usr/local/lib/nap6.4

# Require the nap package
package require nap

# Import the NAP namespace
namespace import ::NAP::*