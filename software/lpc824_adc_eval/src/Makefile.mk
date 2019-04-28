# update per change V0006

# project name
BIN_NAME = lpc824_adc_eval
BOARD = lpc824JHI33_protoboard

#include board specific settings/rules
include src/$(BOARD).mk

# project settings
C_SOURCES +=
CXX_SOURCES += src/startup.cpp src/main.cpp \
src/strings.cpp \
src/stream_uart.cpp \
src/commands.cpp
S_SOURCES +=
INCLUDES += -Iinc
DEFINES +=
ALIBS += -lgcc
RLIBS +=
DLIBS +=
ALIBDIR +=
RLIBDIR +=
DLIBDIR +=
COMPILE_C_FLAGS = -std=gnu11 -Wall -Wextra -Wno-main -fno-common -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections
COMPILE_CXX_FLAGS = -std=c++17 -Wall -Wextra -Wno-main -fno-common -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions
COMPILE_ASM_FLAGS = -c -x assembler-with-cpp
LINK_FLAGS +=  -nostdlib -Wl,--gc-sections -Wl,-print-memory-usage
