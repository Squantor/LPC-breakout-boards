
# project name
BIN_NAME = breakout_tester
MCU = LPC824
BOARD = 
C_SOURCES = 
CPP_SOURCES = src/startup.cpp src/main.cpp
S_SOURCES = src/aeabi_romdiv_patch.s
INCLUDES = -Iinc
LIBDIR = 
LIBS =
RLIBDIR = 
DEFINES = -DCORE_M0PLUS -D__USE_ROMDIVIDE
COMPILE_CXX_FLAGS = -mcpu=cortex-m0 -mthumb
COMPILE_CPP_FLAGS = -mcpu=cortex-m0 -mthumb
COMPILE_ASM_FLAGS =
LINK_FLAGS = -mcpu=cortex-m0 -mthumb