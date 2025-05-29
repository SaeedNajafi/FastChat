#!/bin/bash

# # DPO 135M
# epochs=(575 1148 1150 1723 1725 2300 2298 2296 2870)
# logps=(yes no)
# sizes=(135M)
# main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/v2-runs"

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_${logp}-v2/checkpoint-${epoch}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_${logp}-v2_checkpoint-${epoch}
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench
#         done
#     done
# done


# # DPO 360M
# epochs=(575 1148 1150 1723 1725 2300 2298 2296 2870)
# logps=(yes no)
# sizes=(360M)
# main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/v2-runs"

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_${logp}-v2/checkpoint-${epoch}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_${logp}-v2_checkpoint-${epoch}
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench
#         done
#     done
# done

# # SimPO 135M
# epochs=(575 1148 1150 1723 1725 2300 2298 2296 2870)
# logps=(yes no)
# sizes=(135M)
# main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/v2-runs"

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_${logp}-v2/checkpoint-${epoch}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_${logp}-v2_checkpoint-${epoch}
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench
#         done
#     done
# done

# SimPO 360M
# epochs=(575 1148 1150 1723 1725 2300 2298 2296 2870)
epochs=(1148)
# logps=(yes no)
logps=(no)
sizes=(360M)
main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/v2-runs"

for size_i in ${!sizes[@]};
do
    size=${sizes[$size_i]}
    for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_${logp}-v2/checkpoint-${epoch}
            run_name=smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_${logp}-v2_checkpoint-${epoch}
            sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
            sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench
        done
    done
done

# # MMPO 135M
# epochs=(575 1148 1150 1725 2300 1723 2298 2870 2296)
# logps=(yes no)
# sizes=(135M)
# main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/v2-runs"

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-no-entropy/checkpoint-${epoch}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-no-entropy_checkpoint-${epoch}
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench

#             model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-with-entropy/checkpoint-${epoch}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-with-entropy_checkpoint-${epoch}
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench
#         done
#     done
# done

# # MMPO 360M
# epochs=(575 1148 1150 1725 2300 1723 2298 2870 2296)
# logps=(yes no)
# sizes=(360M)
# main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/smollm2/v2-runs"

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-no-entropy/checkpoint-${epoch}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-no-entropy_checkpoint-${epoch}
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench

#             model_dir=${main_path}/smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-with-entropy/checkpoint-${epoch}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-with-entropy_checkpoint-${epoch}
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench
#         done
#     done
# done