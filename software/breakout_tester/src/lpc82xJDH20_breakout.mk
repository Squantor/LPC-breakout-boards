# board specific settings
MCU = LPC824
CXX_SOURCES += src/$(BOARD).cpp
DEFINES += -D$(BOARD)