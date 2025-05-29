#!/bin/bash

# MMPO 360
epochs=(575 1150 1725 2300 2870)
logps=(yes no)
sizes=(360M)
main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/mmpo"

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0001-reward_eps_0.5-avg_logps_${logp}-v1-with-entropy/checkpoint-${epoch}
            run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0001-reward_eps_0.5-avg_logps_${logp}-v1-with-entropy_checkpoint-${epoch}
            sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
        done
    done
done

# No-entropy MMPO 360
epochs=(575 1150 1725 2300 2870)
logps=(yes no)
sizes=(360M)
main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/mmpo_no_entropy"

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0001-reward_eps_0.5-avg_logps_${logp}-v1-no-entropy/checkpoint-${epoch}
            run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0001-reward_eps_0.5-avg_logps_${logp}-v1-no-entropy_checkpoint-${epoch}
            sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
        done
    done
done


# DPO 360
epochs=(575 1150 1725 2296 2870)
logps=(yes no)
sizes=(360M)
main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/dpo_final"

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0007-avg_logps_${logp}-v1/checkpoint-${epoch}
            run_name=smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0007-avg_logps_${logp}-v1_checkpoint-${epoch}
            sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
        done
    done
done

# Simpo 360
epochs=(575 1150 1725 2296 2870)
logps=(yes no)
sizes=(360M)
main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/simpo_final"

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.2-avg_logps_${logp}-v1/checkpoint-${epoch}
            run_name=smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.2-avg_logps_${logp}-v1_checkpoint-${epoch}
            sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
        done
    done
done