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
static const char *ng0 = "Example %d: The product of %d and %d is %8b !";
static int ng1[] = {10, 0, 0, 0};
static const char *ng2 = "C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 6 - Verilog/booth_multiplier/booth_mult_tst.v";
static int ng3[] = {0, 0};
static int ng4[] = {475, 0};
static int ng5[] = {79, 0};
static int ng6[] = {1, 0};

void Monitor_49_1(char *);
void Monitor_49_1(char *);


static void Monitor_49_1_Func(char *t0)
{
    char t1[16];
    char t4[16];
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t2 = xsi_vlog_time(t1, 1000.0000000000000, 1000.0000000000000);
    t3 = ((char*)((ng1)));
    xsi_vlog_unsigned_divide(t4, 64, t1, 64, t3, 32);
    t5 = (t0 + 1448);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t0 + 1608);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t0 + 1048U);
    t12 = *((char **)t11);
    xsi_vlogfile_write(1, 0, 3, ng0, 5, t0, (char)118, t4, 64, (char)118, t7, 8, (char)118, t10, 8, (char)118, t12, 16);

LAB1:    return;
}

static void Always_46_0(char *t0)
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
    char *t13;
    char *t14;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng2);

LAB4:    xsi_set_current_line(47, ng2);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(47, ng2);
    t4 = (t0 + 1768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t7) == 0)
        goto LAB6;

LAB8:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB9:    t14 = (t0 + 1768);
    xsi_vlogvar_assign_value(t14, t3, 0, 0, 1);
    xsi_set_current_line(48, ng2);
    t2 = (t0 + 1768);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(49, ng2);
    Monitor_49_1(t0);
    goto LAB12;

}

static void Initial_52_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 3256U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng2);

LAB4:    xsi_set_current_line(54, ng2);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(55, ng2);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(59, ng2);
    t2 = (t0 + 3064);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(59, ng2);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1448);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 8);
    xsi_set_current_line(59, ng2);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);
    xsi_set_current_line(60, ng2);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(70, ng2);
    t2 = (t0 + 3064);
    xsi_process_wait(t2, 500000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(70, ng2);
    xsi_vlog_finish(1);
    goto LAB1;

}

void Monitor_49_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3312);
    t2 = (t0 + 4072);
    xsi_vlogfile_monitor((void *)Monitor_49_1_Func, t1, t2);

LAB1:    return;
}

static void impl1_execute(char *t0)
{
    char t4[16];
    char t7[16];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;

LAB0:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 4088);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    t3 = (t0 + 2088);
    t5 = xsi_vlog_time(t4, 1000.0000000000000, 1000.0000000000000);
    t6 = ((char*)((ng1)));
    xsi_vlog_unsigned_divide(t7, 64, t4, 64, t6, 32);
    xsi_vlogimplicitvar_assign_value(t3, t7, 64);
    goto LAB2;

}


extern void work_m_00000000000434582262_3782970084_init()
{
	static char *pe[] = {(void *)Always_46_0,(void *)Initial_52_2,(void *)Monitor_49_1,(void *)impl1_execute};
	xsi_register_didat("work_m_00000000000434582262_3782970084", "isim/booth_mult_tst_isim_beh.exe.sim/work/m_00000000000434582262_3782970084.didat");
	xsi_register_executes(pe);
}
