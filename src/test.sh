for resume_path in blend_FGSM_0.03137_model_063.pth  surrogate_FGSM_0.03137_model_062.pth std_training_model_062.pth no_surrogate_FGSM_0.03137_model_120.pth adv_training_PGD_0.03137_model_116.pth adv_training_FGSM_0.03137_model_089.pth
do
python main.py  --json-config configs/linf.json  --resume_path checkpoint/$resume_path | tee log/0.00784/$resume_path.txt
done
