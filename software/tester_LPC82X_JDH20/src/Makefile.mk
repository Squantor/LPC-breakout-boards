# update per change V0002
# project name
BIN_NAME = breakout_tester
MCU = LPC824
BOARD =
C_SOURCES =
CXX_SOURCES = src/startup.cpp src/main.cpp
S_SOURCES = src/aeabi_romdiv_patch.s
INCLUDES = -Iinc -I../lpc_chip_82x/inc
ALIBS += -llpc_chip_82x -lsqlibc
RLIBS += 
DLIBS += 
ALIBDIR +=
RLIBDIR += -L"../lpc_chip_82x/bin/release" -L"../squantorLibC/bin/CortexM0/release"
DLIBDIR += -L"../lpc_chip_82x/bin/debug" -L"../squantorLibC/bin/CortexM0/debug"
DEFINES = -DCORE_M0PLUS -D__USE_ROMDIVIDE
COMPILE_C_FLAGS = -std=gnu11 -Wall -Wextra -Wno-main -fno-common -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -flto
COMPILE_CXX_FLAGS = -std=c++17 -Wall -Wextra -Wno-main -fno-common -c -fmessage-length=0 -fno-builtin -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions -flto
COMPILE_ASM_FLAGS = -c -x assembler-with-cpp
LINK_FLAGS = -Wl,-flto

#custom build rules
pre-clean:
	$(MAKE) -C ../lpc_chip_82x clean
	$(MAKE) -C ../squantorLibC clean

pre-release:
	$(MAKE) -C ../lpc_chip_82x release
	$(MAKE) -C ../squantorLibC release PLATFORM=CortexM0

pre-debug:
	$(MAKE) -C ../lpc_chip_82x debug
	$(MAKE) -C ../squantorLibC debug PLATFORM=CortexM0
