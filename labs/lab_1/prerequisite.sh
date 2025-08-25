#!/bin/bash

# system information
systeminfo
wmic computersystem get TotalPhysicalMemory
wmic logicaldisk get size, freespace, caption
