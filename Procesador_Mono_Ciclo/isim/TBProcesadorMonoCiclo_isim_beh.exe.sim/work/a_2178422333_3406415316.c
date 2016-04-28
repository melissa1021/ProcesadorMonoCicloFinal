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
static const char *ng0 = "C:/Users/Melissa/Documents/Arquitectura/Ejercicios_Xilinx/Procesador_Mono_Ciclo/UnidadControl.vhd";
extern char *IEEE_P_3620187407;



static void work_a_2178422333_3406415316_p_0(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    int t13;
    char *t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 4868U);
    t3 = (t0 + 4932);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2832);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
    t7 = (t0 + 1192U);
    t11 = *((char **)t7);
    t7 = (t0 + 4934);
    t13 = xsi_mem_cmp(t7, t11, 6U);
    if (t13 == 1)
        goto LAB6;

LAB15:    t14 = (t0 + 4940);
    t16 = xsi_mem_cmp(t14, t11, 6U);
    if (t16 == 1)
        goto LAB7;

LAB16:    t17 = (t0 + 4946);
    t19 = xsi_mem_cmp(t17, t11, 6U);
    if (t19 == 1)
        goto LAB8;

LAB17:    t20 = (t0 + 4952);
    t22 = xsi_mem_cmp(t20, t11, 6U);
    if (t22 == 1)
        goto LAB9;

LAB18:    t23 = (t0 + 4958);
    t25 = xsi_mem_cmp(t23, t11, 6U);
    if (t25 == 1)
        goto LAB10;

LAB19:    t26 = (t0 + 4964);
    t28 = xsi_mem_cmp(t26, t11, 6U);
    if (t28 == 1)
        goto LAB11;

LAB20:    t29 = (t0 + 4970);
    t31 = xsi_mem_cmp(t29, t11, 6U);
    if (t31 == 1)
        goto LAB12;

LAB21:    t32 = (t0 + 4976);
    t34 = xsi_mem_cmp(t32, t11, 6U);
    if (t34 == 1)
        goto LAB13;

LAB22:
LAB14:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 5030);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(52, ng0);
    t35 = (t0 + 4982);
    t37 = (t0 + 2912);
    t38 = (t37 + 56U);
    t39 = *((char **)t38);
    t40 = (t39 + 56U);
    t41 = *((char **)t40);
    memcpy(t41, t35, 6U);
    xsi_driver_first_trans_fast_port(t37);
    goto LAB5;

LAB7:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4988);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB8:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 4994);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB9:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 5000);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB10:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 5006);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB11:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 5012);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB12:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 5018);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB13:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 5024);
    t3 = (t0 + 2912);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    memcpy(t11, t1, 6U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB5;

LAB23:;
}


extern void work_a_2178422333_3406415316_init()
{
	static char *pe[] = {(void *)work_a_2178422333_3406415316_p_0};
	xsi_register_didat("work_a_2178422333_3406415316", "isim/TBProcesadorMonoCiclo_isim_beh.exe.sim/work/a_2178422333_3406415316.didat");
	xsi_register_executes(pe);
}
