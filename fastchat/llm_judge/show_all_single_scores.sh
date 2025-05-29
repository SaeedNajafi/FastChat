#!/bin/bash

model_list="135-sft "

# MMPO 135
epochs=(575 1150 1725 2300 2870)
logps=(yes no)
sizes=(135M)
for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0001-reward_eps_0.5-avg_logps_${logp}-v1-with-entropy_checkpoint-${epoch}
            model_list="${model_list}${run_name} "
        done
    done
done

# No-entropy MMPO
epochs=(575 1150 1725 2300 2870)
logps=(yes no)
sizes=(135M)

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0001-reward_eps_0.5-avg_logps_${logp}-v1-no-entropy_checkpoint-${epoch}
            model_list="${model_list}${run_name} "
        done
    done
done


# DPO 135
epochs=(575 1150 1725 2300 2870)
logps=(yes no)
sizes=(135M)

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            run_name=smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0007-avg_logps_${logp}-v1_checkpoint-${epoch}
            model_list="${model_list}${run_name} "
        done
    done
done

# Simpo
epochs=(575 1150 1725 2300 2870)
logps=(yes no)
sizes=(135M)

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            run_name=smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.2-avg_logps_${logp}-v1_checkpoint-${epoch}
            model_list="${model_list}${run_name} "
        done
    done
done

# MMPO 360
epochs=(575 1150 1725 2300 2870)
logps=(yes no)
sizes=(360M)
for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0001-reward_eps_0.5-avg_logps_${logp}-v1-with-entropy_checkpoint-${epoch}
            model_list="${model_list}${run_name} "
        done
    done
done

# No-entropy MMPO
epochs=(575 1150 1725 2300 2870)
logps=(yes no)
sizes=(360M)

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0001-reward_eps_0.5-avg_logps_${logp}-v1-no-entropy_checkpoint-${epoch}
            model_list="${model_list}${run_name} "
        done
    done
done


# DPO 360
epochs=(575 1150 1725 2296 2870)
logps=(yes no)
sizes=(360M)

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            run_name=smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0007-avg_logps_${logp}-v1_checkpoint-${epoch}
            model_list="${model_list}${run_name} "
        done
    done
done

# Simpo
epochs=(575 1150 1725 2296 2870)
logps=(yes no)
sizes=(360M)

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            run_name=smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.2-avg_logps_${logp}-v1_checkpoint-${epoch}
            model_list="${model_list}${run_name} "
        done
    done
done

model_list=${model_list}360-sft
python show_result.py --mode=single \
    --bench-name mt_bench \
    --judge-model gpt-4.1-mini \
    --model-list ${model_list} \
    --output-file single_scores > single_scores.txt