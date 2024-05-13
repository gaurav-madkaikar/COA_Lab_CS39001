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
static const char *ng0 = "C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 6 - Verilog/barrel_shifter/mux_2X1.v";



static void Always_24_0(char *t0)
{
    char t11[8];
    char t12[8];
    char t27[8];
    char t41[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t13;
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    char *t40;
    char *t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 3416);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(25, ng0);

LAB5:    xsi_set_current_line(26, ng0);
    t4 = (t0 + 1528U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(31, ng0);

LAB23:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t12, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t2) != 0)
        goto LAB26;

LAB27:    t5 = (t12 + 4);
    t15 = *((unsigned int *)t12);
    t16 = *((unsigned int *)t5);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB28;

LAB29:    t30 = *((unsigned int *)t12);
    t31 = (~(t30));
    t32 = *((unsigned int *)t5);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t5) > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t12) > 0)
        goto LAB34;

LAB35:    memcpy(t11, t41, 8);

LAB36:    t28 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t28, t11, 0, 0, 1, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(27, ng0);

LAB9:    xsi_set_current_line(28, ng0);
    t13 = (t0 + 1368U);
    t14 = *((char **)t13);
    memset(t12, 0, 8);
    t13 = (t14 + 4);
    t15 = *((unsigned int *)t13);
    t16 = (~(t15));
    t17 = *((unsigned int *)t14);
    t18 = (t17 & t16);
    t19 = (t18 & 1U);
    if (t19 != 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t13) != 0)
        goto LAB12;

LAB13:    t21 = (t12 + 4);
    t22 = *((unsigned int *)t12);
    t23 = *((unsigned int *)t21);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB14;

LAB15:    t35 = *((unsigned int *)t12);
    t36 = (~(t35));
    t37 = *((unsigned int *)t21);
    t38 = (t36 || t37);
    if (t38 > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t21) > 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t12) > 0)
        goto LAB20;

LAB21:    memcpy(t11, t41, 8);

LAB22:    t49 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t49, t11, 0, 0, 1, 0LL);
    goto LAB8;

LAB10:    *((unsigned int *)t12) = 1;
    goto LAB13;

LAB12:    t20 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB13;

LAB14:    t25 = (t0 + 1208U);
    t26 = *((char **)t25);
    memset(t27, 0, 8);
    t25 = (t27 + 4);
    t28 = (t26 + 4);
    t29 = *((unsigned int *)t26);
    t30 = (t29 >> 2);
    t31 = (t30 & 1);
    *((unsigned int *)t27) = t31;
    t32 = *((unsigned int *)t28);
    t33 = (t32 >> 2);
    t34 = (t33 & 1);
    *((unsigned int *)t25) = t34;
    goto LAB15;

LAB16:    t39 = (t0 + 1208U);
    t40 = *((char **)t39);
    memset(t41, 0, 8);
    t39 = (t41 + 4);
    t42 = (t40 + 4);
    t43 = *((unsigned int *)t40);
    t44 = (t43 >> 0);
    t45 = (t44 & 1);
    *((unsigned int *)t41) = t45;
    t46 = *((unsigned int *)t42);
    t47 = (t46 >> 0);
    t48 = (t47 & 1);
    *((unsigned int *)t39) = t48;
    goto LAB17;

LAB18:    xsi_vlog_unsigned_bit_combine(t11, 1, t27, 1, t41, 1);
    goto LAB22;

LAB20:    memcpy(t11, t27, 8);
    goto LAB22;

LAB24:    *((unsigned int *)t12) = 1;
    goto LAB27;

LAB26:    t4 = (t12 + 4);
    *((unsigned int *)t12) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB27;

LAB28:    t13 = (t0 + 1208U);
    t14 = *((char **)t13);
    memset(t27, 0, 8);
    t13 = (t27 + 4);
    t20 = (t14 + 4);
    t18 = *((unsigned int *)t14);
    t19 = (t18 >> 1);
    t22 = (t19 & 1);
    *((unsigned int *)t27) = t22;
    t23 = *((unsigned int *)t20);
    t24 = (t23 >> 1);
    t29 = (t24 & 1);
    *((unsigned int *)t13) = t29;
    goto LAB29;

LAB30:    t21 = (t0 + 1208U);
    t25 = *((char **)t21);
    memset(t41, 0, 8);
    t21 = (t41 + 4);
    t26 = (t25 + 4);
    t34 = *((unsigned int *)t25);
    t35 = (t34 >> 0);
    t36 = (t35 & 1);
    *((unsigned int *)t41) = t36;
    t37 = *((unsigned int *)t26);
    t38 = (t37 >> 0);
    t43 = (t38 & 1);
    *((unsigned int *)t21) = t43;
    goto LAB31;

LAB32:    xsi_vlog_unsigned_bit_combine(t11, 1, t27, 1, t41, 1);
    goto LAB36;

LAB34:    memcpy(t11, t27, 8);
    goto LAB36;

}

static void Cont_36_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 3096U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3512);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 3432);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000004271799430_0716627387_init()
{
	static char *pe[] = {(void *)Always_24_0,(void *)Cont_36_1};
	xsi_register_didat("work_m_00000000004271799430_0716627387", "isim/barrel_shifter_tst_isim_beh.exe.sim/work/m_00000000004271799430_0716627387.didat");
	xsi_register_executes(pe);
}
