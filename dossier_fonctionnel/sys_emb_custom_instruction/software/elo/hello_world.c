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
#include "system.h"
#include "sys/alt_timestamp.h"
#include "altera_avalon_timer_regs.h"


//short* timer= (short*)
short * LED_ptr = (short*) (LEDR_BASE| 0x80000000);
short * SW_ptr=(short*)(SWITCHES_IN_BASE | 0x80000000);


/*
volatile  uint* SQRT_X =(uint*)(SQRT_X_BASE| 0x80000000);
volatile char* SQRT_status =(char*)(SQRT_STATUS_BASE| 0x80000000);
ushort* SQRT_result =(ushort*)(SQRT_RESULT_BASE| 0x80000000);
ushort sqrt_hw (uint X)
{
	ushort z=0;
	*SQRT_X=X;
	*SQRT_status=1;

	//while(1)printf("status=%i\n",*SQRT_status);

	while(0x1 & *SQRT_status != 1);
	*SQRT_status=0;
	z=*SQRT_result;
	return z;
}
*/
uint sqrt_hw (uint X)
{
	return ALT_CI_SQRT_MODULE_0(X);
}

ushort sqrt_sw(uint X){
	uint V=1<<30;
	uint Z=0;
	char i;
	for( i=0;i<16;i++){
		Z+=V;
		if(X>=Z){
			X-=Z;
			Z+=V;
		}else{
			Z-=V;
		}
		Z>>=1;
		V>>=2;
	}
	return Z;
}

struct TIMER_S
{
	volatile uint status;
	volatile uint control;
	volatile uint periodl;
	volatile uint periodh;
	volatile uint snapl;
	volatile uint snaph;
}* TIMER =(struct TIMER_S*)(TIMER_BASE|0x80000000);

void snap_start()
{
	TIMER->control=8;

	uint period=499999999;
	TIMER->periodl=period&0x0000FFFF;
	TIMER->periodh=(period&0xFFFF0000)>>16;
	TIMER->control=0x6;

}

void snap_stop()
{
	TIMER->control=8;
}
inline uint snap_timer(){
	return (TIMER->snaph=1)&0|(0x0000FFFF&(TIMER->snaph))<<16 |(0x0000FFFF&TIMER->snapl);
}
#define str2(X) #X
#define str(X) str2(X)

#define MEMORY "SDRAM"
#define N 1000
int main()
{

	printf("Hello from Nios II!\n");

	uint i=0;
	*((short*)LEDR_BASE) =0xAA;

	// altera timer
	int begin,end,begin_alt,end_alt, compute_alt, read_alt,write_alt;
	unsigned long long acc_compute_alt =0,acc_read_alt =0,acc_write_alt =0;

	printf("sqrt=%i\n",sqrt_hw(51*51));
	printf("sqrt=%i\n",sqrt_hw(49));
	// init tab
	uint tab[1000];
	for (i=0 ; i< 1000 ;i++)
	{
		tab[i] = i*i;
	}

	// snap timer
	int begin_snap,end_snap, compute_snap, read_snap,write_snap;
	unsigned long long acc_compute_snap =0,acc_read_snap =0,acc_write_snap =0;

	//test snap
	snap_start();
	begin=snap_timer();
	end=snap_timer();
	printf("t=%d\n",begin-end);

	i=0;
	while(i<N){
		begin_snap = snap_timer();
			uint x = tab[i];
		end_snap =snap_timer();
		read_snap = begin_snap-end_snap;

		begin_snap = snap_timer();
			ushort z=sqrt_hw(x);
		end_snap =snap_timer();
		compute_snap = begin_snap-end_snap;
		if(z != i)break;
		z*=z;

		begin_snap = snap_timer();
			tab[i]=z;
		end_snap =snap_timer();
		write_snap = begin_snap-end_snap;

		if(compute_snap > 0 && read_snap > 0 && write_snap > 0){
			acc_compute_snap += compute_snap;
			acc_read_snap += read_snap;
			acc_write_snap += write_snap;
		}else break;
		i++;
	}
	if(i==N){
			printf("%llu\t",acc_compute_snap);
			printf("%llu\t",acc_read_snap);
			printf("%llu\t",acc_write_snap);
			printf(MEMORY "\n",acc_write_snap);
		}else{
			printf("error at i=%d t=%d\n",i,compute_snap);
		}


  return 0;
}