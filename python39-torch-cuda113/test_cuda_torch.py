import torch

cuda_is_available = torch.cuda.is_available()
print(f"python:3.9 + torch==1.10.0 cuda_available {cuda_is_available}")
