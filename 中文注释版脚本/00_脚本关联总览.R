# ==================== 综合总览（开头） ====================
# 本文件用于帮助初学者理解 Trajectory 项目全部脚本之间的关系。
# 研究主题：心代谢疾病（CMD）与癌症（CA）的多状态转移轨迹，
# 并进一步结合多组学（基因/代谢/蛋白）寻找标志物并构建预测模型。
#
# 【整体分析主线】
# 1) DataPreparation：把原始临床事件数据清洗成“可建模的转移数据”（CMD_CA.csv）
# 2) MainAnalysis：进行多状态模型、生存分析、多组学标志物筛选与预测评估
# 3) Figures/Tables：把关键结果可视化并输出论文图表
#
# 【脚本依赖关系（按执行思路）】
# Disease_ICD10_Code.R -> Impute_Corv_Data.R -> UKB_Disease_Trajectory_Analysis.R
# -> Subgroup_Definition.R -> Transition_Probability_Calculation.R / KM_Plot...
# -> Multiomics_Signatures_Identification.R -> KEGG_GO.R / Principal_Component.R
# -> LASSO_Model_For_Prediction.R -> ROC_Performance.R
# 最后由 Figures 与 Tables 脚本生成图与表。
#
# 【统计学亮点】
# - 多状态模型（mstate + Cox）：刻画“健康->CMD/CA->共病->死亡”的完整路径
# - RMST：比单纯HR更直观地比较不同轨迹的生存获益/损失
# - 多重插补（MICE）：处理协变量缺失，减少因删失带来的偏倚
# - 多组学联合预测（PRS/代谢/蛋白）：比较不同层面的风险预测能力
#
# 【初学者如何阅读本注释版】
# - 先读 DataPreparation 再读 MainAnalysis
# - 每个脚本都提供：输入-处理-输出、统计方法、代码逻辑、易错点
# - 建议对照原脚本逐段阅读（本文件夹不改原逻辑，只做讲解）
# ==================== 综合总览（结尾） ====================
# 项目核心价值：
# 1) 不只看“是否患病”，而是看“疾病如何按时间顺序演化”；
# 2) 把临床轨迹与多组学标志物结合，增强机制解释与预测能力；
# 3) 用多种图表把复杂结果转化为可解释证据链。
