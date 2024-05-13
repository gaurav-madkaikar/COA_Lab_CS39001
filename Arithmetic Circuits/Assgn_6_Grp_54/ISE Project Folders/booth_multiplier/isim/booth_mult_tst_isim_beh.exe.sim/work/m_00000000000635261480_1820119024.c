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
static const char *ng0 = "C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 6 - Verilog/booth_multiplier/booth_multiplier.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};



static void Always_35_0(char *t0)
{
    char t13[8];
    char t14[8];
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
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    unsigned int t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    t1 = (t0 + 4880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 6192);
    *((int *)t2) = 1;
    t3 = (t0 + 4912);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1800U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(45, ng0);

LAB10:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3000);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3640);
    t11 = (t5 + 56U);
    t12 = *((char **)t11);
    memset(t14, 0, 8);
    t15 = (t14 + 4);
    t16 = (t12 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t14) = t8;
    t9 = *((unsigned int *)t16);
    t10 = (t9 >> 0);
    t17 = (t10 & 1);
    *((unsigned int *)t15) = t17;
    xsi_vlogtype_concat(t13, 2, 2, 2U, t14, 1, t4, 1);
    t18 = (t0 + 3160);
    xsi_vlogvar_assign_value(t18, t13, 0, 0, 1);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 3160);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB11:    t5 = ((char*)((ng2)));
    t19 = xsi_vlog_unsigned_case_compare(t4, 1, t5, 2);
    if (t19 == 1)
        goto LAB12;

LAB13:    t2 = ((char*)((ng3)));
    t19 = xsi_vlog_unsigned_case_compare(t4, 1, t2, 2);
    if (t19 == 1)
        goto LAB14;

LAB15:
LAB17:
LAB16:    xsi_set_current_line(61, ng0);

LAB21:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3640);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 3320);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t0 + 3320);
    t18 = (t16 + 56U);
    t20 = *((char **)t18);
    memset(t14, 0, 8);
    t21 = (t14 + 4);
    t22 = (t20 + 4);
    t6 = *((unsigned int *)t20);
    t7 = (t6 >> 7);
    t8 = (t7 & 1);
    *((unsigned int *)t14) = t8;
    t9 = *((unsigned int *)t22);
    t10 = (t9 >> 7);
    t17 = (t10 & 1);
    *((unsigned int *)t21) = t17;
    xsi_vlogtype_concat(t13, 17, 17, 3U, t14, 1, t15, 8, t5, 8);
    t23 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t23, t13, 0, 0, 1, 0LL);
    t24 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t24, t13, 1, 0, 8, 0LL);
    t25 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t25, t13, 9, 0, 8, 0LL);

LAB18:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1480U);
    t3 = *((char **)t2);
    t2 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1320U);
    t3 = *((char **)t2);
    t2 = (t0 + 3480);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB12:    xsi_set_current_line(48, ng0);

LAB19:    xsi_set_current_line(49, ng0);
    t11 = (t0 + 3640);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t0 + 3800);
    t18 = (t16 + 56U);
    t20 = *((char **)t18);
    t21 = (t0 + 3800);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memset(t14, 0, 8);
    t24 = (t14 + 4);
    t25 = (t23 + 4);
    t6 = *((unsigned int *)t23);
    t7 = (t6 >> 7);
    t8 = (t7 & 1);
    *((unsigned int *)t14) = t8;
    t9 = *((unsigned int *)t25);
    t10 = (t9 >> 7);
    t17 = (t10 & 1);
    *((unsigned int *)t24) = t17;
    xsi_vlogtype_concat(t13, 17, 17, 3U, t14, 1, t20, 8, t15, 8);
    t26 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t26, t13, 0, 0, 1, 0LL);
    t27 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t27, t13, 1, 0, 8, 0LL);
    t28 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t28, t13, 9, 0, 8, 0LL);
    goto LAB18;

LAB14:    xsi_set_current_line(54, ng0);

LAB20:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 3640);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    t12 = (t0 + 3960);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    t18 = (t0 + 3960);
    t20 = (t18 + 56U);
    t21 = *((char **)t20);
    memset(t14, 0, 8);
    t22 = (t14 + 4);
    t23 = (t21 + 4);
    t6 = *((unsigned int *)t21);
    t7 = (t6 >> 7);
    t8 = (t7 & 1);
    *((unsigned int *)t14) = t8;
    t9 = *((unsigned int *)t23);
    t10 = (t9 >> 7);
    t17 = (t10 & 1);
    *((unsigned int *)t22) = t17;
    xsi_vlogtype_concat(t13, 17, 17, 3U, t14, 1, t16, 8, t11, 8);
    t24 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t24, t13, 0, 0, 1, 0LL);
    t25 = (t0 + 3640);
    xsi_vlogvar_wait_assign_value(t25, t13, 1, 0, 8, 0LL);
    t26 = (t0 + 3320);
    xsi_vlogvar_wait_assign_value(t26, t13, 9, 0, 8, 0LL);
    goto LAB18;

}

static void Cont_74_1(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;

LAB0:    t1 = (t0 + 5128U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3000);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 3640);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t0 + 3320);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    xsi_vlogtype_concat(t3, 17, 17, 3U, t11, 8, t8, 8, t5, 1);
    t12 = (t0 + 6304);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memset(t16, 0, 8);
    t17 = 65535U;
    t18 = t17;
    t19 = (t3 + 4);
    t20 = *((unsigned int *)t3);
    t17 = (t17 & t20);
    t21 = *((unsigned int *)t19);
    t18 = (t18 & t21);
    t22 = (t16 + 4);
    t23 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t23 | t17);
    t24 = *((unsigned int *)t22);
    *((unsigned int *)t22) = (t24 | t18);
    xsi_driver_vfirst_trans(t12, 0, 15);
    t25 = (t0 + 6208);
    *((int *)t25) = 1;

LAB1:    return;
}

static void implSig1_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 5376U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 6368);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}

static void implSig2_execute(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;

LAB0:    t1 = (t0 + 5624U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3480);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t3 + 4);
    t7 = (t5 + 4);
    t8 = *((unsigned int *)t5);
    t9 = (~(t8));
    *((unsigned int *)t3) = t9;
    *((unsigned int *)t6) = 0;
    if (*((unsigned int *)t7) != 0)
        goto LAB5;

LAB4:    t14 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t14 & 255U);
    t15 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t15 & 255U);
    t16 = (t0 + 6432);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memset(t20, 0, 8);
    t21 = 255U;
    t22 = t21;
    t23 = (t3 + 4);
    t24 = *((unsigned int *)t3);
    t21 = (t21 & t24);
    t25 = *((unsigned int *)t23);
    t22 = (t22 & t25);
    t26 = (t20 + 4);
    t27 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t27 | t21);
    t28 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t28 | t22);
    xsi_driver_vfirst_trans(t16, 0, 7);
    t29 = (t0 + 6224);
    *((int *)t29) = 1;

LAB1:    return;
LAB5:    t10 = *((unsigned int *)t3);
    t11 = *((unsigned int *)t7);
    *((unsigned int *)t3) = (t10 | t11);
    t12 = *((unsigned int *)t6);
    t13 = *((unsigned int *)t7);
    *((unsigned int *)t6) = (t12 | t13);
    goto LAB4;

}

static void implSig3_execute(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 5872U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng2)));
    t3 = (t0 + 6496);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}


extern void work_m_00000000000635261480_1820119024_init()
{
	static char *pe[] = {(void *)Always_35_0,(void *)Cont_74_1,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute};
	xsi_register_didat("work_m_00000000000635261480_1820119024", "isim/booth_mult_tst_isim_beh.exe.sim/work/m_00000000000635261480_1820119024.didat");
	xsi_register_executes(pe);
}
