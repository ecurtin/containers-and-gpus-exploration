FROM python:3.9

RUN apt-get update -y && apt-get install -y apt-utils strace ltrace
COPY requirements.in .
RUN pip install -r requirements.in
COPY test_cuda_torch.py .

CMD ["python", "test_cuda_torch.py"]
