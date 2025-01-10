#!/bin/bash

# Check for correct number of arguments
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <kernel_name>"
    exit 1
fi

A=$1

directory_legacy="results/${A}_LEGACY"
directory_ftd="results/${A}_FTD"

# Check if directory exists
if [ ! -d "$directory_legacy" ]; then
    echo "Error: Directory $directory_legacy does not exist."
    exit 1
fi

# Check if directory exists
if [ ! -d "$directory_ftd" ]; then
    echo "Error: Directory $directory_ftd does not exist."
    exit 1
fi

# -----------------------------------------------------

if [ -f "$directory_legacy/transcript_report.txt" ]; then
    time_value=$(grep "Time: " "$directory_legacy/transcript_report.txt" | tail -n1 | awk '{for (i=1; i<=NF; i++) if ($i ~ /^[0-9]+(\.[0-9]+)?$/) {print $i; exit}}')
    if [ -n "$time_value" ]; then
        echo "LEGACY Time divided by 4: $(echo "$time_value / 4" | bc -l)"
    else
        echo "Time value not found."
    fi
else
    echo "Error: transcript_report.txt not found."
fi

if [ -f "$directory_ftd/transcript_report.txt" ]; then
    time_value=$(grep "Time: " "$directory_ftd/transcript_report.txt" | tail -n1 | awk '{for (i=1; i<=NF; i++) if ($i ~ /^[0-9]+(\.[0-9]+)?$/) {print $i; exit}}')
    if [ -n "$time_value" ]; then
        echo "FTD Time divided by 4: $(echo "$time_value / 4" | bc -l)"
    else
        echo "Time value not found."
    fi
else
    echo "Error: transcript_report.txt not found."
fi

# -----------------------------------------------------

if [ -f "$directory_legacy/timing.rpt" ]; then
    slack_value=$(grep "^Slack" "$directory_legacy/timing.rpt" | awk '{for (i=1; i<=NF; i++) if ($i ~ /^-?[0-9]+(\.[0-9]+)?(ns)?$/) {gsub("ns", "", $i); print $i; exit}}' | head -n1)
    if [ -n "$slack_value" ]; then
        echo "LEGACY 4 - Slack: $(echo "4 - $slack_value" | bc -l)"
    else
        echo "Slack value not found."
    fi
else
    echo "Error: timing.rpt not found."
fi

if [ -f "$directory_ftd/timing.rpt" ]; then
    slack_value=$(grep "^Slack" "$directory_ftd/timing.rpt" | awk '{for (i=1; i<=NF; i++) if ($i ~ /^-?[0-9]+(\.[0-9]+)?(ns)?$/) {gsub("ns", "", $i); print $i; exit}}' | head -n1)
    if [ -n "$slack_value" ]; then
        echo "FTD 4 - Slack: $(echo "4 - $slack_value" | bc -l)"
    else
        echo "Slack value not found."
    fi
else
    echo "Error: timing.rpt not found."
fi

# -----------------------------------------------------

if [ -f "$directory_legacy/utilization.rpt" ]; then
    slice_registers=$(grep "Slice Registers" "$directory_legacy/utilization.rpt" | head -n1 | awk '{for (i=1; i<=NF; i++) if ($i ~ /^[0-9]+$/) {print $i; exit}}')
    if [ -n "$slice_registers" ]; then
        echo "LEGACY Slice Registers: $slice_registers"
    else
        echo "Slice Registers value not found."
    fi
else
    echo "Error: utilization.rpt not found."
fi

if [ -f "$directory_ftd/utilization.rpt" ]; then
    slice_registers=$(grep "Slice Registers" "$directory_ftd/utilization.rpt" | head -n1 | awk '{for (i=1; i<=NF; i++) if ($i ~ /^[0-9]+$/) {print $i; exit}}')
    if [ -n "$slice_registers" ]; then
        echo "FTD Slice Registers: $slice_registers"
    else
        echo "Slice Registers value not found."
    fi
else
    echo "Error: utilization.rpt not found."
fi


# -----------------------------------------------------

if [ -f "$directory_legacy/utilization.rpt" ]; then
    slice_luts=$(grep "Slice LUTs" "$directory_legacy/utilization.rpt" | head -n1 | awk '{for (i=1; i<=NF; i++) if ($i ~ /^[0-9]+$/) {print $i; exit}}')
    if [ -n "$slice_luts" ]; then
        echo "LEGACY Slice LUTs: $slice_luts"
    else
        echo "Slice LUTs value not found."
    fi
else
    echo "Error: utilization.rpt not found."
fi

if [ -f "$directory_ftd/utilization.rpt" ]; then
    slice_luts=$(grep "Slice LUTs" "$directory_ftd/utilization.rpt" | head -n1 | awk '{for (i=1; i<=NF; i++) if ($i ~ /^[0-9]+$/) {print $i; exit}}')
    if [ -n "$slice_luts" ]; then
        echo "FTD Slice LUTs: $slice_luts"
    else
        echo "Slice LUTs value not found."
    fi
else
    echo "Error: utilization.rpt not found."
fi


