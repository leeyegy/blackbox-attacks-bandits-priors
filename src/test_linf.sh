for resume_path in blend_FGSM_0.03137_model_063.pth  surrogate_FGSM_0.03137_model_062.pth std_training_model_062.pth no_surrogate_FGSM_0.03137_model_120.pth adv_training_PGD_0.03137_model_116.pth adv_training_FGSM_0.03137_model_089.pth
do
for epsilon in 0.00784 0.03137 0.06275
do 
python main.py --fd-eta 0.1 --max-queries 20 --image-lr 0.005 --mode linf --online-lr 100 --exploration 0.01 --epsilon $epsilon --batch-size 500 --gradient-iters 1  --resume_path checkpoint/$resume_path | tee log/$epsilon/$resume_path.txt
done
done
