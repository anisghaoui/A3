/*
 * "Hello World" example.
 *
 * This example prints 'Hello from Nios II' to the STDOUT stream. It runs on
 * the Nios II 'standard', 'full_featured', 'fast', and 'low_cost' example
 * designs. It runs with or without the MicroC/OS-II RTOS and requires a STDOUT
 * device in your system's hardware.
 * The memory footprint of this hosted application is ~69 kbytes by default
 * using the standard reference design.
 *
 * For a reduced footprint version of this template, and an explanation of how
 * to reduce the memory footprint for a given application, see the
 * "small_hello_world" template.
 *
 */

#include <stdio.h>
#include "../hello_world2_bsp/system.h"
#include "sys/alt_timestamp.h"
int* timer= TIMER_BASE;

int main()
{
	printf("Hello from Nios II!\n");
	alt_timestamp_start();

	*((short*)LEDR_BASE) =0xAA;
	while(1){
		//printf("Hello from Nios II!\n");

		//printf("t=%d\n",(int)alt_timestamp ());
		*((short*)(LEDR_BASE | 0x80000000)) = *((short*)(SWITCHES_IN_BASE | 0x80000000));
	}
  return 0;
}
