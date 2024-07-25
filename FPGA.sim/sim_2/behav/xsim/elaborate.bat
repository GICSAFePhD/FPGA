@echo off
REM ****************************************************************************
REM Vivado (TM) v2024.1 (64-bit)
REM
REM Filename    : elaborate.bat
REM Simulator   : AMD Vivado Simulator
REM Description : Script for elaborating the compiled design
REM
REM Generated by Vivado on Tue Jun 18 20:03:29 +1000 2024
REM SW Build 5076996 on Wed May 22 18:37:14 MDT 2024
REM
REM Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
REM Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
REM
REM usage: elaborate.bat
REM
REM ****************************************************************************
REM elaborate design
echo "xelab --incr --debug all --rangecheck --relax --mt 2 -cc_libs -cc_celldefines -L xil_defaultlib -L secureip --snapshot global_behav xil_defaultlib.global -log elaborate.log"
call xelab  --incr --debug all --rangecheck --relax --mt 2 -cc_libs -cc_celldefines -L xil_defaultlib -L secureip --snapshot global_behav xil_defaultlib.global -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0