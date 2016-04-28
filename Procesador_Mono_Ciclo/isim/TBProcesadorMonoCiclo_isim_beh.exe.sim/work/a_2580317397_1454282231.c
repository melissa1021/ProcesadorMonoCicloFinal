/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Melissa/Documents/Arquitectura/Ejercicios_Xilinx/Procesador_Mono_Ciclo/ADD.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2580317397_1454282231_p_0(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 4876);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 32U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4756U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 4772U);
    t5 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t2, t1, t4, t3);
    t6 = (t8 + 12U);
    t9 = *((unsigned int *)t6);
    t10 = (1U * t9);
    t11 = (32U != t10);
    if (t11 == 1)
        goto LAB2;

LAB3:    t7 = (t0 + 2912);
    t12 = (t7 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t5, 32U);
    xsi_driver_first_trans_fast_port(t7);
    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(32U, t10, 0);
    goto LAB3;

}


extern void work_a_2580317397_1454282231_init()
{
	static char *pe[] = {(void *)work_a_2580317397_1454282231_p_0};
	xsi_register_didat("work_a_2580317397_1454282231", "isim/TBProcesadorMonoCiclo_isim_beh.exe.sim/work/a_2580317397_1454282231.didat");
	xsi_register_executes(pe);
}
