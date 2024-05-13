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
static const char *ng0 = "A= %d\tB = %d\tLEG = %3b";
static const char *ng1 = "C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 5 - FSM Design/Seq_cmp_Q4/seq_cmp_tst.v";
static unsigned int ng2[] = {1U, 0U};
static const char *ng3 = "\nA =%d is greater than B =%d\n";
static unsigned int ng4[] = {2U, 0U};
static const char *ng5 = "\nA =%d is equal to B =%d\n";
static unsigned int ng6[] = {4U, 0U};
static const char *ng7 = "\nA =%d is less than B =%d\n";
static int ng8[] = {0, 0};
static int ng9[] = {1, 0};
static int ng10[] = {783833733, 0};
static int ng11[] = {793782311, 0};

void Monitor_68_1(char *);
void Monitor_68_1(char *);


static void Monitor_68_1_Func(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 1608);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t0 + 1768);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    xsi_vlogfile_write(1, 0, 3, ng0, 4, t0, (char)118, t3, 32, (char)118, t6, 32, (char)118, t8, 3);

LAB1:    return;
}

static void Always_52_0(char *t0)
{
    char t3[8];
    char t25[8];
    char t26[8];
    char t66[8];
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
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    char *t81;
    char *t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    char *t88;
    char *t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;

LAB0:    t1 = (t0 + 3008U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng1);

LAB4:    xsi_set_current_line(54, ng1);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(54, ng1);
    t4 = (t0 + 1928);
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

LAB9:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB11;

LAB10:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1928);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    xsi_set_current_line(55, ng1);
    t2 = (t0 + 1928);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t3, 0, 8);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t6) != 0)
        goto LAB14;

LAB15:    t13 = (t3 + 4);
    t16 = *((unsigned int *)t3);
    t17 = *((unsigned int *)t13);
    t18 = (t16 || t17);
    if (t18 > 0)
        goto LAB16;

LAB17:    memcpy(t26, t3, 8);

LAB18:    t58 = (t26 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t26);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB26;

LAB27:    xsi_set_current_line(67, ng1);
    t2 = (t0 + 1928);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (~(t8));
    t10 = *((unsigned int *)t5);
    t11 = (t10 & t9);
    t12 = (t11 != 0);
    if (t12 > 0)
        goto LAB52;

LAB53:
LAB54:
LAB28:    goto LAB2;

LAB6:    *((unsigned int *)t3) = 1;
    goto LAB9;

LAB11:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB10;

LAB12:    *((unsigned int *)t3) = 1;
    goto LAB15;

LAB14:    t7 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB15;

LAB16:    t14 = (t0 + 1208U);
    t15 = *((char **)t14);
    memset(t25, 0, 8);
    t14 = (t15 + 4);
    t19 = *((unsigned int *)t14);
    t20 = (~(t19));
    t21 = *((unsigned int *)t15);
    t22 = (t21 & t20);
    t23 = (t22 & 1U);
    if (t23 != 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t14) != 0)
        goto LAB21;

LAB22:    t27 = *((unsigned int *)t3);
    t28 = *((unsigned int *)t25);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t30 = (t3 + 4);
    t31 = (t25 + 4);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t31);
    t35 = (t33 | t34);
    *((unsigned int *)t32) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB23;

LAB24:
LAB25:    goto LAB18;

LAB19:    *((unsigned int *)t25) = 1;
    goto LAB22;

LAB21:    t24 = (t25 + 4);
    *((unsigned int *)t25) = 1;
    *((unsigned int *)t24) = 1;
    goto LAB22;

LAB23:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t26) = (t38 | t39);
    t40 = (t3 + 4);
    t41 = (t25 + 4);
    t42 = *((unsigned int *)t3);
    t43 = (~(t42));
    t44 = *((unsigned int *)t40);
    t45 = (~(t44));
    t46 = *((unsigned int *)t25);
    t47 = (~(t46));
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t54 & t52);
    t55 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB25;

LAB26:    xsi_set_current_line(56, ng1);

LAB29:    xsi_set_current_line(57, ng1);
    t64 = (t0 + 1048U);
    t65 = *((char **)t64);
    t64 = ((char*)((ng2)));
    memset(t66, 0, 8);
    t67 = (t65 + 4);
    t68 = (t64 + 4);
    t69 = *((unsigned int *)t65);
    t70 = *((unsigned int *)t64);
    t71 = (t69 ^ t70);
    t72 = *((unsigned int *)t67);
    t73 = *((unsigned int *)t68);
    t74 = (t72 ^ t73);
    t75 = (t71 | t74);
    t76 = *((unsigned int *)t67);
    t77 = *((unsigned int *)t68);
    t78 = (t76 | t77);
    t79 = (~(t78));
    t80 = (t75 & t79);
    if (t80 != 0)
        goto LAB33;

LAB30:    if (t78 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t66) = 1;

LAB33:    t82 = (t66 + 4);
    t83 = *((unsigned int *)t82);
    t84 = (~(t83));
    t85 = *((unsigned int *)t66);
    t86 = (t85 & t84);
    t87 = (t86 != 0);
    if (t87 > 0)
        goto LAB34;

LAB35:    xsi_set_current_line(59, ng1);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t3, 0, 8);
    t5 = (t4 + 4);
    t6 = (t2 + 4);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t6);
    t16 = (t11 ^ t12);
    t17 = (t10 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t6);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB40;

LAB37:    if (t20 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t3) = 1;

LAB40:    t13 = (t3 + 4);
    t23 = *((unsigned int *)t13);
    t27 = (~(t23));
    t28 = *((unsigned int *)t3);
    t29 = (t28 & t27);
    t33 = (t29 != 0);
    if (t33 > 0)
        goto LAB41;

LAB42:    xsi_set_current_line(61, ng1);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng6)));
    memset(t3, 0, 8);
    t5 = (t4 + 4);
    t6 = (t2 + 4);
    t8 = *((unsigned int *)t4);
    t9 = *((unsigned int *)t2);
    t10 = (t8 ^ t9);
    t11 = *((unsigned int *)t5);
    t12 = *((unsigned int *)t6);
    t16 = (t11 ^ t12);
    t17 = (t10 | t16);
    t18 = *((unsigned int *)t5);
    t19 = *((unsigned int *)t6);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB47;

LAB44:    if (t20 != 0)
        goto LAB46;

LAB45:    *((unsigned int *)t3) = 1;

LAB47:    t13 = (t3 + 4);
    t23 = *((unsigned int *)t13);
    t27 = (~(t23));
    t28 = *((unsigned int *)t3);
    t29 = (t28 & t27);
    t33 = (t29 != 0);
    if (t33 > 0)
        goto LAB48;

LAB49:
LAB50:
LAB43:
LAB36:    xsi_set_current_line(64, ng1);
    t2 = (t0 + 2816);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB32:    t81 = (t66 + 4);
    *((unsigned int *)t66) = 1;
    *((unsigned int *)t81) = 1;
    goto LAB33;

LAB34:    xsi_set_current_line(58, ng1);
    t88 = (t0 + 1608);
    t89 = (t88 + 56U);
    t90 = *((char **)t89);
    t91 = (t0 + 1768);
    t92 = (t91 + 56U);
    t93 = *((char **)t92);
    xsi_vlogfile_write(1, 0, 0, ng3, 3, t0, (char)118, t90, 32, (char)118, t93, 32);
    goto LAB36;

LAB39:    t7 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB40;

LAB41:    xsi_set_current_line(60, ng1);
    t14 = (t0 + 1608);
    t15 = (t14 + 56U);
    t24 = *((char **)t15);
    t30 = (t0 + 1768);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t24, 32, (char)118, t32, 32);
    goto LAB43;

LAB46:    t7 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t7) = 1;
    goto LAB47;

LAB48:    xsi_set_current_line(62, ng1);
    t14 = (t0 + 1608);
    t15 = (t14 + 56U);
    t24 = *((char **)t15);
    t30 = (t0 + 1768);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    xsi_vlogfile_write(1, 0, 0, ng7, 3, t0, (char)118, t24, 32, (char)118, t32, 32);
    goto LAB50;

LAB51:    xsi_set_current_line(64, ng1);
    xsi_vlog_finish(1);
    goto LAB28;

LAB52:    xsi_set_current_line(68, ng1);
    Monitor_68_1(t0);
    goto LAB54;

}

static void Initial_71_2(char *t0)
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

LAB2:    xsi_set_current_line(71, ng1);

LAB4:    xsi_set_current_line(73, ng1);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(74, ng1);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(75, ng1);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(76, ng1);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(82, ng1);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 1608);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(82, ng1);
    t2 = ((char*)((ng11)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(83, ng1);
    t2 = (t0 + 3064);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(83, ng1);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 1);
    xsi_set_current_line(85, ng1);
    t2 = (t0 + 3064);
    xsi_process_wait(t2, 750000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(85, ng1);
    xsi_vlog_finish(1);
    goto LAB1;

}

void Monitor_68_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3312);
    t2 = (t0 + 3824);
    xsi_vlogfile_monitor((void *)Monitor_68_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000001747099519_2096865317_init()
{
	static char *pe[] = {(void *)Always_52_0,(void *)Initial_71_2,(void *)Monitor_68_1};
	xsi_register_didat("work_m_00000000001747099519_2096865317", "isim/seq_cmp_tst_isim_beh.exe.sim/work/m_00000000001747099519_2096865317.didat");
	xsi_register_executes(pe);
}
