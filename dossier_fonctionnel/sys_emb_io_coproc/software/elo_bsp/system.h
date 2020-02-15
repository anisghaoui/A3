/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'CPU' in SOPC Builder design 'nios_system'
 * SOPC Builder design path: C:/Temp/TP1/PARTIE2/sys_emb_io_coproc/nios_system.sopcinfo
 *
 * Generated: Thu Feb 13 10:13:42 CET 2020
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x8108820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "fast"
#define ALT_CPU_DATA_ADDR_WIDTH 0x1c
#define ALT_CPU_DCACHE_LINE_SIZE 32
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_DCACHE_SIZE 2048
#define ALT_CPU_EXCEPTION_ADDR 0x8104020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 1
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 32
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 5
#define ALT_CPU_ICACHE_SIZE 2048
#define ALT_CPU_INITDA_SUPPORTED
#define ALT_CPU_INST_ADDR_WIDTH 0x1c
#define ALT_CPU_NAME "CPU"
#define ALT_CPU_NUM_OF_SHADOW_REG_SETS 0
#define ALT_CPU_RESET_ADDR 0x8104000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x8108820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "fast"
#define NIOS2_DATA_ADDR_WIDTH 0x1c
#define NIOS2_DCACHE_LINE_SIZE 32
#define NIOS2_DCACHE_LINE_SIZE_LOG2 5
#define NIOS2_DCACHE_SIZE 2048
#define NIOS2_EXCEPTION_ADDR 0x8104020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 1
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 32
#define NIOS2_ICACHE_LINE_SIZE_LOG2 5
#define NIOS2_ICACHE_SIZE 2048
#define NIOS2_INITDA_SUPPORTED
#define NIOS2_INST_ADDR_WIDTH 0x1c
#define NIOS2_NUM_OF_SHADOW_REG_SETS 0
#define NIOS2_RESET_ADDR 0x8104000


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_NEW_SDRAM_CONTROLLER
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_AVALON_TIMER
#define __ALTERA_NIOS2_QSYS
#define __ALTERA_UP_AVALON_SRAM


/*
 * JTAG_UART configuration
 *
 */

#define ALT_MODULE_CLASS_JTAG_UART altera_avalon_jtag_uart
#define JTAG_UART_BASE 0x8109048
#define JTAG_UART_IRQ 0
#define JTAG_UART_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_NAME "/dev/JTAG_UART"
#define JTAG_UART_READ_DEPTH 64
#define JTAG_UART_READ_THRESHOLD 8
#define JTAG_UART_SPAN 8
#define JTAG_UART_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_WRITE_DEPTH 64
#define JTAG_UART_WRITE_THRESHOLD 8


/*
 * LEDR configuration
 *
 */

#define ALT_MODULE_CLASS_LEDR altera_avalon_pio
#define LEDR_BASE 0x8109020
#define LEDR_BIT_CLEARING_EDGE_REGISTER 0
#define LEDR_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LEDR_CAPTURE 0
#define LEDR_DATA_WIDTH 10
#define LEDR_DO_TEST_BENCH_WIRING 0
#define LEDR_DRIVEN_SIM_VALUE 0
#define LEDR_EDGE_TYPE "NONE"
#define LEDR_FREQ 50000000
#define LEDR_HAS_IN 0
#define LEDR_HAS_OUT 1
#define LEDR_HAS_TRI 0
#define LEDR_IRQ -1
#define LEDR_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LEDR_IRQ_TYPE "NONE"
#define LEDR_NAME "/dev/LEDR"
#define LEDR_RESET_VALUE 0
#define LEDR_SPAN 16
#define LEDR_TYPE "altera_avalon_pio"


/*
 * ONCHIP configuration
 *
 */

#define ALT_MODULE_CLASS_ONCHIP altera_avalon_onchip_memory2
#define ONCHIP_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_BASE 0x8104000
#define ONCHIP_CONTENTS_INFO ""
#define ONCHIP_DUAL_PORT 0
#define ONCHIP_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_INIT_CONTENTS_FILE "nios_system_ONCHIP"
#define ONCHIP_INIT_MEM_CONTENT 1
#define ONCHIP_INSTANCE_ID "NONE"
#define ONCHIP_IRQ -1
#define ONCHIP_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_NAME "/dev/ONCHIP"
#define ONCHIP_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_SINGLE_CLOCK_OP 0
#define ONCHIP_SIZE_MULTIPLE 1
#define ONCHIP_SIZE_VALUE 16384
#define ONCHIP_SPAN 16384
#define ONCHIP_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_WRITABLE 1


/*
 * SDRAM_CONTROLLER configuration
 *
 */

#define ALT_MODULE_CLASS_SDRAM_CONTROLLER altera_avalon_new_sdram_controller
#define SDRAM_CONTROLLER_BASE 0x4000000
#define SDRAM_CONTROLLER_CAS_LATENCY 3
#define SDRAM_CONTROLLER_CONTENTS_INFO
#define SDRAM_CONTROLLER_INIT_NOP_DELAY 0.0
#define SDRAM_CONTROLLER_INIT_REFRESH_COMMANDS 2
#define SDRAM_CONTROLLER_IRQ -1
#define SDRAM_CONTROLLER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SDRAM_CONTROLLER_IS_INITIALIZED 1
#define SDRAM_CONTROLLER_NAME "/dev/SDRAM_CONTROLLER"
#define SDRAM_CONTROLLER_POWERUP_DELAY 100.0
#define SDRAM_CONTROLLER_REFRESH_PERIOD 15.625
#define SDRAM_CONTROLLER_REGISTER_DATA_IN 1
#define SDRAM_CONTROLLER_SDRAM_ADDR_WIDTH 0x16
#define SDRAM_CONTROLLER_SDRAM_BANK_WIDTH 2
#define SDRAM_CONTROLLER_SDRAM_COL_WIDTH 8
#define SDRAM_CONTROLLER_SDRAM_DATA_WIDTH 16
#define SDRAM_CONTROLLER_SDRAM_NUM_BANKS 4
#define SDRAM_CONTROLLER_SDRAM_NUM_CHIPSELECTS 1
#define SDRAM_CONTROLLER_SDRAM_ROW_WIDTH 12
#define SDRAM_CONTROLLER_SHARED_DATA 0
#define SDRAM_CONTROLLER_SIM_MODEL_BASE 0
#define SDRAM_CONTROLLER_SPAN 8388608
#define SDRAM_CONTROLLER_STARVATION_INDICATOR 0
#define SDRAM_CONTROLLER_TRISTATE_BRIDGE_SLAVE ""
#define SDRAM_CONTROLLER_TYPE "altera_avalon_new_sdram_controller"
#define SDRAM_CONTROLLER_T_AC 5.5
#define SDRAM_CONTROLLER_T_MRD 3
#define SDRAM_CONTROLLER_T_RCD 20.0
#define SDRAM_CONTROLLER_T_RFC 70.0
#define SDRAM_CONTROLLER_T_RP 20.0
#define SDRAM_CONTROLLER_T_WR 14.0


/*
 * SQRT_RESULT configuration
 *
 */

#define ALT_MODULE_CLASS_SQRT_RESULT altera_avalon_pio
#define SQRT_RESULT_BASE 0x0
#define SQRT_RESULT_BIT_CLEARING_EDGE_REGISTER 0
#define SQRT_RESULT_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SQRT_RESULT_CAPTURE 0
#define SQRT_RESULT_DATA_WIDTH 32
#define SQRT_RESULT_DO_TEST_BENCH_WIRING 0
#define SQRT_RESULT_DRIVEN_SIM_VALUE 0
#define SQRT_RESULT_EDGE_TYPE "NONE"
#define SQRT_RESULT_FREQ 50000000
#define SQRT_RESULT_HAS_IN 1
#define SQRT_RESULT_HAS_OUT 0
#define SQRT_RESULT_HAS_TRI 0
#define SQRT_RESULT_IRQ -1
#define SQRT_RESULT_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SQRT_RESULT_IRQ_TYPE "NONE"
#define SQRT_RESULT_NAME "/dev/SQRT_RESULT"
#define SQRT_RESULT_RESET_VALUE 0
#define SQRT_RESULT_SPAN 16
#define SQRT_RESULT_TYPE "altera_avalon_pio"


/*
 * SQRT_STATUS configuration
 *
 */

#define ALT_MODULE_CLASS_SQRT_STATUS altera_avalon_pio
#define SQRT_STATUS_BASE 0x10
#define SQRT_STATUS_BIT_CLEARING_EDGE_REGISTER 0
#define SQRT_STATUS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SQRT_STATUS_CAPTURE 0
#define SQRT_STATUS_DATA_WIDTH 1
#define SQRT_STATUS_DO_TEST_BENCH_WIRING 0
#define SQRT_STATUS_DRIVEN_SIM_VALUE 0
#define SQRT_STATUS_EDGE_TYPE "NONE"
#define SQRT_STATUS_FREQ 50000000
#define SQRT_STATUS_HAS_IN 1
#define SQRT_STATUS_HAS_OUT 1
#define SQRT_STATUS_HAS_TRI 0
#define SQRT_STATUS_IRQ -1
#define SQRT_STATUS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SQRT_STATUS_IRQ_TYPE "NONE"
#define SQRT_STATUS_NAME "/dev/SQRT_STATUS"
#define SQRT_STATUS_RESET_VALUE 0
#define SQRT_STATUS_SPAN 16
#define SQRT_STATUS_TYPE "altera_avalon_pio"


/*
 * SQRT_X configuration
 *
 */

#define ALT_MODULE_CLASS_SQRT_X altera_avalon_pio
#define SQRT_X_BASE 0x20
#define SQRT_X_BIT_CLEARING_EDGE_REGISTER 0
#define SQRT_X_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SQRT_X_CAPTURE 0
#define SQRT_X_DATA_WIDTH 32
#define SQRT_X_DO_TEST_BENCH_WIRING 0
#define SQRT_X_DRIVEN_SIM_VALUE 0
#define SQRT_X_EDGE_TYPE "NONE"
#define SQRT_X_FREQ 50000000
#define SQRT_X_HAS_IN 0
#define SQRT_X_HAS_OUT 1
#define SQRT_X_HAS_TRI 0
#define SQRT_X_IRQ -1
#define SQRT_X_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SQRT_X_IRQ_TYPE "NONE"
#define SQRT_X_NAME "/dev/SQRT_X"
#define SQRT_X_RESET_VALUE 0
#define SQRT_X_SPAN 16
#define SQRT_X_TYPE "altera_avalon_pio"


/*
 * SSRAM_CONTROLLER configuration
 *
 */

#define ALT_MODULE_CLASS_SSRAM_CONTROLLER altera_up_avalon_sram
#define SSRAM_CONTROLLER_BASE 0x8080000
#define SSRAM_CONTROLLER_IRQ -1
#define SSRAM_CONTROLLER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SSRAM_CONTROLLER_NAME "/dev/SSRAM_CONTROLLER"
#define SSRAM_CONTROLLER_SPAN 524288
#define SSRAM_CONTROLLER_TYPE "altera_up_avalon_sram"


/*
 * SWITCHES_IN configuration
 *
 */

#define ALT_MODULE_CLASS_SWITCHES_IN altera_avalon_pio
#define SWITCHES_IN_BASE 0x8109030
#define SWITCHES_IN_BIT_CLEARING_EDGE_REGISTER 0
#define SWITCHES_IN_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SWITCHES_IN_CAPTURE 0
#define SWITCHES_IN_DATA_WIDTH 10
#define SWITCHES_IN_DO_TEST_BENCH_WIRING 0
#define SWITCHES_IN_DRIVEN_SIM_VALUE 0
#define SWITCHES_IN_EDGE_TYPE "NONE"
#define SWITCHES_IN_FREQ 50000000
#define SWITCHES_IN_HAS_IN 1
#define SWITCHES_IN_HAS_OUT 0
#define SWITCHES_IN_HAS_TRI 0
#define SWITCHES_IN_IRQ -1
#define SWITCHES_IN_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SWITCHES_IN_IRQ_TYPE "NONE"
#define SWITCHES_IN_NAME "/dev/SWITCHES_IN"
#define SWITCHES_IN_RESET_VALUE 0
#define SWITCHES_IN_SPAN 16
#define SWITCHES_IN_TYPE "altera_avalon_pio"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone II"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/JTAG_UART"
#define ALT_STDERR_BASE 0x8109048
#define ALT_STDERR_DEV JTAG_UART
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/JTAG_UART"
#define ALT_STDIN_BASE 0x8109048
#define ALT_STDIN_DEV JTAG_UART
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/JTAG_UART"
#define ALT_STDOUT_BASE 0x8109048
#define ALT_STDOUT_DEV JTAG_UART
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "nios_system"


/*
 * TIMER configuration
 *
 */

#define ALT_MODULE_CLASS_TIMER altera_avalon_timer
#define TIMER_ALWAYS_RUN 0
#define TIMER_BASE 0x8109000
#define TIMER_COUNTER_SIZE 32
#define TIMER_FIXED_PERIOD 0
#define TIMER_FREQ 50000000
#define TIMER_IRQ 1
#define TIMER_IRQ_INTERRUPT_CONTROLLER_ID 0
#define TIMER_LOAD_VALUE 499999999
#define TIMER_MULT 1.0
#define TIMER_NAME "/dev/TIMER"
#define TIMER_PERIOD 10
#define TIMER_PERIOD_UNITS "s"
#define TIMER_RESET_OUTPUT 0
#define TIMER_SNAPSHOT 1
#define TIMER_SPAN 32
#define TIMER_TICKS_PER_SEC 0.1
#define TIMER_TIMEOUT_PULSE_OUTPUT 0
#define TIMER_TYPE "altera_avalon_timer"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * sysid configuration
 *
 */

#define ALT_MODULE_CLASS_sysid altera_avalon_sysid_qsys
#define SYSID_BASE 0x8109040
#define SYSID_ID 0
#define SYSID_IRQ -1
#define SYSID_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_NAME "/dev/sysid"
#define SYSID_SPAN 8
#define SYSID_TIMESTAMP 1581584695
#define SYSID_TYPE "altera_avalon_sysid_qsys"

#endif /* __SYSTEM_H_ */
