#!/bin/bash


# DPO
# epochs=(446 892 1338 1784 2225)
# epochs=(892)
# logps=(yes no)
# main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/llama-3.2-1b-dpo-v9"

# for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             model_dir=${main_path}/llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_${logp}-v9/checkpoint-${epoch}
#             run_name=llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_${logp}-v9_checkpoint-${epoch}
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
#             # sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench
#     done
# done

# # SimPO
# epochs=(446 892 1338 1784 2225)
# logps=(yes no)
# epochs=(892 1784)
# logps=(no)
# main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/llama-3.2-1b-simpo-v9"

# for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             model_dir=${main_path}/llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_${logp}-v9/checkpoint-${epoch}
#             run_name=llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_${logp}-v9_checkpoint-${epoch}
#             # sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
#             sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench
#     done
# done


# # MMPO
# epochs=(446 892 1338 1784 2225)
epochs=(446 892)
logps=(yes no)
main_path="/home/saeednjf/projects/def-afyshe-ab/saeednjf/checkpoints/llama-3.2-1b-mmpo-v9"

for logps_i in ${!logps[@]};
    do
        logp=${logps[$logps_i]}
        for epoch_i in ${!epochs[@]};
        do
            epoch=${epochs[$epoch_i]}
            # model_dir=${main_path}/llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v9-no-entropy/checkpoint-${epoch}
            # run_name=llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v9-no-entropy_checkpoint-${epoch}
            # sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
            # sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench

            model_dir=${main_path}/llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v9-with-entropy/checkpoint-${epoch}
            run_name=llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v9-with-entropy_checkpoint-${epoch}
            sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=mt_bench
            sbatch run_gen_model_answer.slrm MODEL_PATH=${model_dir} MODEL_ID=${run_name} BENCH_NAME=arena_hard_bench
    done
done