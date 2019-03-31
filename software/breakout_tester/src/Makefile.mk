# update per change V0006

# project name
BIN_NAME = breakout_tester
BOARD = lpc81xJDH20_breakout

#include board specific settings/rules
include src/$(BOARD).mk

# project settings
C_SOURCES +=
CXX_SOURCES += src/startup.cpp src/main.cpp src/gpio_tester.cpp src/ticks.cpp
S_SOURCES += src/aeabi_romdiv_patch.s
INCLUDES += -Iinc
DEFINES +=
ALIBS +=
RLIBS +=
DLIBS +=
ALIBDIR +=
RLIBDIR += -L"../lpc_chip_82x/bin/release" -L"../squantorLibC/bin/CortexM0/release"
DLIBDIR += -L"../lpc_chip_82x/bin/debug" -L"../squantorLibC/bin/CortexM0/debug"
COMPILE_C_FLAGS = -std=gnu11 -Wall -Wextra -Wno-main -fno-common -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections
COMPILE_CXX_FLAGS = -std=c++17 -Wall -Wextra -Wno-main -fno-common -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions
COMPILE_ASM_FLAGS = -c -x assembler-with-cpp
LINK_FLAGS +=  -nostdlib -Wl,--gc-sections -Wl,-print-memory-usage
