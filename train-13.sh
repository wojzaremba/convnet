export LD_LIBRARY_PATH=/usr/local/pkg/cuda/4.2/cuda/lib64:$LD_LIBRARY_PATH
export CUDA_DEVICE=0

python convnet.py --data-path=/scratch/sainaa/cifar-10/train --save-path=/scratch/cifar-10/tmp --test-range=6 --train-range=1-5 --layer-def=./example-layers/layers-18pct.cfg --layer-params=./example-layers/layer-params-18pct.cfg --data-provider=cifar --test-freq=13 --epochs=100

#python convnet.py --data-path=/scratch/sainaa/cifar-10/train --save-path=/scratch/cifar-10/tmp --test-range=5 --train-range=1-4 --layer-def=./example-layers/layers-conv-local-13pct.cfg --layer-params=./example-layers/layer-params-conv-local-13pct.cfg --data-provider=cifar-cropped --test-freq=13 --crop-border=4 --epochs=100

#python convnet.py -f /scratch/sainaa/cifar-10/tmp/ConvNet__2013-10-01_17.24.52 --train-range=1-5 --epochs=140