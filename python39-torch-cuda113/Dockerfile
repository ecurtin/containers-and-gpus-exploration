FROM python:3.9

RUN apt-get update -y && apt-get install -y apt-utils strace ltrace

# Changing how I'm doing the pip install in this image cause it requires a custom resolver.
RUN pip install numpy
RUN pip3 install torch==1.10.1+cu113 -f https://download.pytorch.org/whl/cu113/torch_stable.html
COPY test_cuda_torch.py .

CMD ["python", "test_cuda_torch.py"]
