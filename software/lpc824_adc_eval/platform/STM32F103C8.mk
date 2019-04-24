# update per change V0001
TOOLCHAIN_PREFIX = arm-none-eabi-
C_SOURCES +=
CXX_SOURCES += platform/$(MCU).cpp
S_SOURCES +=
DEFINES += -DMCU_$(MCU)
COMPILE_C_FLAGS += -mcpu=cortex-m3 -mthumb
COMPILE_CXX_FLAGS += -mcpu=cortex-m3 -mthumb
COMPILE_ASM_FLAGS += -mcpu=cortex-m3 -mthumb
LINK_FLAGS += -mcpu=cortex-m3 -mthumb
LDSCRIPT = -T"ld/$(MCU).ld"