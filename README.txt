This package contains a resource repository of multi-focus image fusion, which is associated with the following invited survey paper submitted to Information Fusion:


Yu Liu, Lei Wang, Juan Cheng, Chang Li, Xun Chen, "Multi-focus image fusion: A survey of the state of the art," submitted to Information Fusion, 2020.


The repository involve all the resources including 30 pairs of commonly-used source images, 8 objective metrics and fusion results of 18 methods. It can actually act as a benchmark for the study of multi-focus image fusion.


A brief introduction of the repository is given as follows.


1) Source images
The source images are divided into two datasets: a grayscale one and a color one. The grayscale dataset contains 10 pairs of classical multi-focus images such as the "clock", "pepsi", "lab", etc. The color dataset contains 20 pairs of color source images from the Lytro multi-focus image dataset created by Dr. Mansour Nejati et al. [1] at https://mansournejati.ece.iut.ac.ir/content/lytro-multi-focus-dataset. 

[1] M. Nejati, S. Samavi, S. Shirani, Multi-focus image fusion using dictionary-based sparse representation, Information Fusion 25 (2015) 72¨C84.



2) Objective metrics
Prof. Zheng Liu et al. [2] classified image fusion metrics into four categories: the information theory based ones, the image feature based ones, the image structural similarity based ones, and the human perception inspired ones. In this repository, for each category, two metrics that are widely used in multi-focus image fusion are involved, i.e., QMI, QNCIE, QG, QP, QE, QY, QCB, QCV. Please refer to [2] and the "Readme.txt" in the "evaluation/objective_metrics" folder for the detailed information of these metrics. Prof. Zheng Liu released a MATLAB toolbox of objective fusion metrics at https://github.com/zhengliu6699/imageFusionMetrics. In our survey work, this toolbox was adopted for objective evaluation (a few small bugs were corrected by us after a careful verification).

[2] Z. Liu, E. Blasch, Z. Xue, J. Zhao, R. Laganiere, W. Wu, Objective assessment of multiresolution image fusion algorithms for context enhancement in night vision: a comparative study, IEEE Transactions on Pattern Analysis and Machine Intelligence 34 (1) (2012) 94¨C109.



3) Fusion results
The results of 18 representative multi-focus image fusion methods are provided in the "Results" folder. These methods include 9 transform domain methods (DWT, DTCWT, NSCT, GFF, SR, ASR, MWGF, ICA and NSCT-SR), 7 spatial domain methods (SSSDI, QUADTREE, DSIFT, SRCF, GFDF, BRW and MISF) and 2 deep learning methods (CNN and MADCNN). More detailed information (the references and the source code links) of these methods are given in the survey paper. 



In the "evaluation" folder, we provide the source code which can reproduce the results (Table 6, Table 7, Figure 5 and Figure 6) in our survey paper.
evaluate_grayscale.m --- perform objective evaluation on the grayscale image dataset
evaluate_color.m --- perform objective evaluation on the color image dataset
plot_grayscale.m --- plot Figure 5
plot_color.m --- plot Figure 6



We would like to thank Dr. Mansour Nejati, Prof. Zheng Liu and all the related authors who proposed the above metrics and methods for their great contributions to this field.


Don't hesitate to contact me if you meet any problems when using this repository.


Yu Liu                                                            
Email: yuliu@hfut.edu.cn
Homepage1: http://www.escience.cn/people/liuyu1
Homepage2: https://sites.google.com/site/yuliu316316
          


