import tensorflow as tf

cuda_is_available = tf.test.is_gpu_available()
print(f"python:3.9 + tensorflow==2.6.1 cuda_available {cuda_is_available}")
