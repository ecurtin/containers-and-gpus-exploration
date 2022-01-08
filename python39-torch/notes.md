# Python 3.9 + PyTorch 1.10.0

If PyTorch bundles everything, this should work, but it doesn't.

Here's the strace output showing that it can't find libcuda.so

```shell
strace python test_cuda_torch.py 2>&1 | grep -E '^open(at)?\(.*\.so' | grep 'cuda'
```

```text
root@python39-torch110:/# strace python test_cuda_torch.py 2>&1 | grep -E '^open(at)?\(.*\.so' | grep 'cuda'
openat(AT_FDCWD, "/usr/local/lib/python3.9/site-packages/torch/lib/libtorch_cuda.so", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/local/lib/python3.9/site-packages/torch/lib/libc10_cuda.so", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/local/lib/python3.9/site-packages/torch/lib/libcudart-80664282.so.10.2", O_RDONLY|O_CLOEXEC) = 3
openat(AT_FDCWD, "/usr/local/lib/python3.9/site-packages/torch/lib/libcuda.so.1", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/lib/x86_64-linux-gnu/libcuda.so.1", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/usr/lib/x86_64-linux-gnu/libcuda.so.1", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/lib/libcuda.so.1", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/usr/lib/libcuda.so.1", O_RDONLY|O_CLOEXEC) = -1 ENOENT (No such file or directory)
```
