# containers-and-gpus-exploration

Supposing you have a GPU-capable k8s cluster, what do you need to do on the container side to make that GPU connection
happen? How on earth do PyTorch and Tensorflow manage (or refuse to manage) CUDA compatibility?

These experiments took place in the context of a GKE cluster with Nvidia GPUs. 
YMMV with other cloud providers and their particular managed k8s products.
