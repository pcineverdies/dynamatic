run_buffer_placement() {
    if [ -z "$1" ]; then
        echo "Usage: run_buffer_placement <input_string>"
        return 1
    fi

    local input_string="$1"

    python3 buffer_placement_heur.py ~/dynamatic/ "$input_string" no

    rm -rf "results/${input_string}_LEGACY"
    mkdir "results/${input_string}_LEGACY"
    cp -r "integration-test/$input_string/out/comp" "results/${input_string}_LEGACY"
    cp -r "integration-test/$input_string/out/sim/HLS_VERIFY/transcript" "results/${input_string}_LEGACY/transcript_report.txt"
    cp -r "integration-test/$input_string/out/synth/utilization_post_pr.rpt" "results/${input_string}_LEGACY/utilization.rpt"
    cp -r "integration-test/$input_string/out/synth/timing_post_pr.rpt" "results/${input_string}_LEGACY/timing.rpt"
    
    python3 buffer_placement_heur.py ~/dynamatic/ "$input_string" yes

    rm -rf "results/${input_string}_FTD"
    mkdir "results/${input_string}_FTD"
    cp -r "integration-test/$input_string/out/comp" "results/${input_string}_FTD"
    cp -r "integration-test/$input_string/out/sim/HLS_VERIFY/transcript" "results/${input_string}_FTD/transcript_report.txt"
    cp -r "integration-test/$input_string/out/synth/utilization_post_pr.rpt" "results/${input_string}_FTD/utilization.rpt"
    cp -r "integration-test/$input_string/out/synth/timing_post_pr.rpt" "results/${input_string}_FTD/timing.rpt"
}

run_buffer_placement "kernel_3mm"
