#!/bin/bash

# 360M
# model_list="smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_no-v2_checkpoint-1148 smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_no-v2_checkpoint-1723 smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_no-v2_checkpoint-2298 smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_no-v2_checkpoint-2870 smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_no-v2_checkpoint-575 smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_yes-v2_checkpoint-1150 smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_yes-v2_checkpoint-1725 smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_yes-v2_checkpoint-2300 smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_yes-v2_checkpoint-2870 smollm2-360M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_yes-v2_checkpoint-575 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-1148 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-1723 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-2298 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-2870 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-575 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-1150 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-1725 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-2300 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-2870 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-575 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-1150 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-1725 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-2296 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-2870 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-575 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-1150 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-1725 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-2300 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-2870 smollm2-360M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-575 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-1148 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-1723 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-2298 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-2870 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-575 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-1150 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-1725 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-2296 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-2870 smollm2-360M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-575"

# 135M
# model_list="smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_no-v2_checkpoint-1148 smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_no-v2_checkpoint-1723 smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_no-v2_checkpoint-2298 smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_no-v2_checkpoint-2870 smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_no-v2_checkpoint-575 smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_yes-v2_checkpoint-1150 smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_yes-v2_checkpoint-1725 smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_yes-v2_checkpoint-2300 smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_yes-v2_checkpoint-2870 smollm2-135M-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_yes-v2_checkpoint-575 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-1150 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-1725 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-2300 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-2870 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-no-entropy_checkpoint-575 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-1150 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-1725 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-2300 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-2870 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v2-with-entropy_checkpoint-575 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-1150 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-1725 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-2300 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-2870 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-no-entropy_checkpoint-575 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-1150 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-1725 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-2300 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-2870 smollm2-135M-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v2-with-entropy_checkpoint-575 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-1150 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-1725 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-2300 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-2870 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_no-v2_checkpoint-575 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-1150 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-1725 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-2300 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-2870 smollm2-135M-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_yes-v2_checkpoint-575"

# Llama 3.2 1b
model_list="llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_no-v9_checkpoint-1338 llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_no-v9_checkpoint-1784 llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_no-v9_checkpoint-2225 llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_no-v9_checkpoint-446 llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_no-v9_checkpoint-892 llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_yes-v9_checkpoint-1338 llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_yes-v9_checkpoint-1784 llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_yes-v9_checkpoint-2225 llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_yes-v9_checkpoint-446 llama3.2-1b-offline-dpo-beta_0.01-lr_0.0005-avg_logps_yes-v9_checkpoint-892 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-no-entropy_checkpoint-1338 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-no-entropy_checkpoint-1784 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-no-entropy_checkpoint-2225 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-no-entropy_checkpoint-446 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-no-entropy_checkpoint-892 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-with-entropy_checkpoint-1338 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-with-entropy_checkpoint-1784 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-with-entropy_checkpoint-2225 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-with-entropy_checkpoint-446 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_no-v9-with-entropy_checkpoint-892 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-no-entropy_checkpoint-1338 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-no-entropy_checkpoint-1784 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-no-entropy_checkpoint-2225 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-no-entropy_checkpoint-446 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-no-entropy_checkpoint-892 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-with-entropy_checkpoint-1338 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-with-entropy_checkpoint-1784 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-with-entropy_checkpoint-2225 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-with-entropy_checkpoint-446 llama3.2-1b-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_yes-v9-with-entropy_checkpoint-892 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_no-v9_checkpoint-1338 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_no-v9_checkpoint-1784 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_no-v9_checkpoint-2225 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_no-v9_checkpoint-446 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_no-v9_checkpoint-892 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_yes-v9_checkpoint-1338 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_yes-v9_checkpoint-1784 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_yes-v9_checkpoint-2225 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_yes-v9_checkpoint-446 llama3.2-1b-offline-simpo-beta_0.01-lr_0.0005-gamma-to-beta_1.0-avg_logps_yes-v9_checkpoint-892"

# # # DPO 135m
# # epochs=(575 1148 1723 2298 2870)
# # logps=(no)
# # sizes=(135M)

# # for size_i in ${!sizes[@]};
# # do
# #     size=${sizes[$size_i]}
# #     for logps_i in ${!logps[@]};
# #     do
# #         logp=${logps[$logps_i]}
# #         for epoch_i in ${!epochs[@]};
# #         do
# #             epoch=${epochs[$epoch_i]}
# #             run_name=smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_${logp}-v2_checkpoint-${epoch}
# #             model_list="${model_list}${run_name} "
# #         done
# #     done
# # done

# # epochs=(575 1150 1725 2300 2870)
# # logps=(yes)
# # sizes=(135M)

# # for size_i in ${!sizes[@]};
# # do
# #     size=${sizes[$size_i]}
# #     for logps_i in ${!logps[@]};
# #     do
# #         logp=${logps[$logps_i]}
# #         for epoch_i in ${!epochs[@]};
# #         do
# #             epoch=${epochs[$epoch_i]}
# #             run_name=smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.0001-avg_logps_${logp}-v2_checkpoint-${epoch}
# #             model_list="${model_list}${run_name} "
# #         done
# #     done
# # done

# # # SimPO 135m
# # epochs=(575 1150 1725 2300 2870)
# # logps=(yes no)
# # sizes=(135M)

# # for size_i in ${!sizes[@]};
# # do
# #     size=${sizes[$size_i]}
# #     for logps_i in ${!logps[@]};
# #     do
# #         logp=${logps[$logps_i]}
# #         for epoch_i in ${!epochs[@]};
# #         do
# #             epoch=${epochs[$epoch_i]}
# #             run_name=smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_${logp}-v2_checkpoint-${epoch}
# #             model_list="${model_list}${run_name} "
# #         done
# #     done
# # done


# # # MMPO 135m
# # epochs=(575 1150 1725 2300 2870)
# # logps=(yes no)
# # sizes=(135M)

# # for size_i in ${!sizes[@]};
# # do
# #     size=${sizes[$size_i]}
# #     for logps_i in ${!logps[@]};
# #     do
# #         logp=${logps[$logps_i]}
# #         for epoch_i in ${!epochs[@]};
# #         do
# #             epoch=${epochs[$epoch_i]}
# #             run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-no-entropy_checkpoint-${epoch}
# #             model_list="${model_list}${run_name} "
# #         done
# #     done
# # done

# # DPO 360
# epochs=(575 1148 1723 2298 2870)
# logps=(no)
# sizes=(360M)

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_${logp}-v2_checkpoint-${epoch}
#             model_list="${model_list}${run_name} "
#         done
#     done
# done

# epochs=(575 1150 1725 2300 2870)
# logps=(yes)
# sizes=(360M)

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-dpo-beta_0.01-lr_0.00005-avg_logps_${logp}-v2_checkpoint-${epoch}
#             model_list="${model_list}${run_name} "
#         done
#     done
# done

# # SimPO 360M
# epochs=(575 1148 1723 2298 2870)
# logps=(no)
# sizes=(360M)

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_${logp}-v2_checkpoint-${epoch}
#             model_list="${model_list}${run_name} "
#         done
#     done
# done

# # SimPO 360M
# epochs=(575 1150 1725 2296 2870)
# logps=(yes)
# sizes=(360M)

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-simpo-beta_0.01-lr_0.0001-gamma-to-beta_1.6-avg_logps_${logp}-v2_checkpoint-${epoch}
#             model_list="${model_list}${run_name} "
#         done
#     done
# done

# # MMPO 135m
# epochs=(575 1148 1723 2298 2870)
# logps=(no)
# sizes=(360M)

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-no-entropy_checkpoint-${epoch}
#             model_list="${model_list}${run_name} "
#         done
#     done
# done

# epochs=(575 1150 1725 2296 2870)
# logps=(yes)
# sizes=(360M)

# for size_i in ${!sizes[@]};
# do
#     size=${sizes[$size_i]}
#     for logps_i in ${!logps[@]};
#     do
#         logp=${logps[$logps_i]}
#         for epoch_i in ${!epochs[@]};
#         do
#             epoch=${epochs[$epoch_i]}
#             run_name=smollm2-${size}-orca_bin_ultra-offline-mmpo-beta_0.01-lr_0.0005-reward_eps_0.9-avg_logps_${logp}-v2-no-entropy_checkpoint-${epoch}
#             model_list="${model_list}${run_name} "
#         done
#     done
# done

# python gen_judgment.py --mode pairwise-baseline \
#     --bench-name mt_bench \
#     --baseline-model smollm2_360M_sft_checkpoint-28758 \
#     --judge-model gpt-4o-mini-2024-07-18 \
#     --model-list ${model_list} \
#     --parallel=24

# python gen_judgment.py --mode pairwise-baseline \
#     --bench-name arena_hard_bench \
#     --baseline-model smollm2_135M_sft_checkpoint-14378 \
#     --judge-model gpt-4o-mini-2024-07-18 \
#     --model-list ${model_list} \
#     --parallel=24

# python gen_judgment.py --mode pairwise-baseline \
#     --bench-name arena_hard_bench \
#     --baseline-model smollm2_360M_sft_checkpoint-28758 \
#     --judge-model gpt-4o-mini-2024-07-18 \
#     --model-list ${model_list} \
#     --parallel=24

# python gen_judgment.py --mode pairwise-baseline \
#     --bench-name mt_bench \
#     --baseline-model llama3.2-1b-sftdatasetv3-sft-checkpoint-111000 \
#     --judge-model gpt-4o-mini-2024-07-18 \
#     --model-list ${model_list} \
#     --parallel=24

# python gen_judgment.py --mode pairwise-baseline \
#     --bench-name arena_hard_bench \
#     --baseline-model llama3.2-1b-sftdatasetv3-sft-checkpoint-111000 \
#     --judge-model gpt-4o-mini-2024-07-18 \
#     --model-list ${model_list} \
#     --parallel=24

python show_result.py --mode pairwise-baseline \
    --bench-name arena_hard_bench \
    --judge-model gpt-4o-mini-2024-07-18 \
    --model-list ${model_list} \
    --baseline-model llama3.2-1b-sftdatasetv3-sft-checkpoint-111000 > arena_hard_bench_pairwise_scores_llama_1b.txt

# python show_result.py --mode pairwise-baseline \
#     --bench-name arena_hard_bench \
#     --judge-model gpt-4o-mini-2024-07-18 \
#     --model-list ${model_list} \
#     --baseline-model smollm2_360M_sft_checkpoint-28758 > arena_hard_bench_pairwise_scores_smollm360.txt


# python show_result.py --mode pairwise-baseline \
#     --bench-name mt_bench \
#     --judge-model gpt-4o-mini-2024-07-18 \
#     --model-list ${model_list} \
#     --baseline-model llama3.2-1b-sftdatasetv3-sft-checkpoint-111000 > mt_bench_pairwise_scores_llama3.2_1b.txt

# python show_result.py --mode pairwise-baseline \
#     --bench-name arena_hard_bench \
#     --judge-model gpt-4o-mini-2024-07-18 \
#     --model-list ${model_list} \
#     --baseline-model smollm2_135M_sft_checkpoint-14378 > arena_hard_bench_pairwise_scores_smollm_135m.txt

# python show_result.py --mode pairwise-baseline \
#     --bench-name mt_bench \
#     --judge-model gpt-4o-mini-2024-07-18 \
#     --model-list ${model_list} \
#     --baseline-model smollm2_360M_sft_checkpoint-28758 > mt_bench_pairwise_scores_smollm_360m.txt