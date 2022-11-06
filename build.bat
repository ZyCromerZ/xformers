@echo off
set XFORMERS_DISABLE_FLASH_ATTN=1
set NVCC_FLAGS= --use_fast_math -DXFORMERS_MEM_EFF_ATTENTION_DISABLE_BACKWARD -allow-unsupported-compiler
set MAX_JOBS=8
del /q/f/s build\*
git submodule update --init --recursive
python setup.py build
python setup.py bdist_wheel
pause
