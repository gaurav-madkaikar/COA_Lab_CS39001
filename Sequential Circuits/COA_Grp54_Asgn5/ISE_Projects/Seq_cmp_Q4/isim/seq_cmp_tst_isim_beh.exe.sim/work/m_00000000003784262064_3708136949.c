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
static const char *ng0 = "C:/Users/gmadk/Desktop/KGP Acad/5th Sem/COA/COA Laboratory/Assignment 5 - FSM Design/Seq_cmp_Q4/seq_cmp.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {4U, 0U};



static void Always_41_0(char *t0)
{
    char t13[8];
    char t22[8];
    char t38[8];
    char t54[8];
    char t62[8];
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
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    char *t61;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;
    char *t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t76;
    char *t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    unsigned int t85;
    int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    char *t100;
    char *t101;

LAB0:    t1 = (t0 + 4352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 4672);
    *((int *)t2) = 1;
    t3 = (t0 + 4384);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 2072U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 2792);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t13, 0, 8);
    t11 = (t4 + 4);
    t12 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = *((unsigned int *)t5);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t11);
    t10 = *((unsigned int *)t12);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t11);
    t17 = *((unsigned int *)t12);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB13;

LAB10:    if (t18 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t13) = 1;

LAB13:    memset(t22, 0, 8);
    t23 = (t13 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 & 1U);
    if (t28 != 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t23) != 0)
        goto LAB16;

LAB17:    t30 = (t22 + 4);
    t31 = *((unsigned int *)t22);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB18;

LAB19:    memcpy(t62, t22, 8);

LAB20:    t94 = (t62 + 4);
    t95 = *((unsigned int *)t94);
    t96 = (~(t95));
    t97 = *((unsigned int *)t62);
    t98 = (t97 & t96);
    t99 = (t98 != 0);
    if (t99 > 0)
        goto LAB32;

LAB33:
LAB34:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2792);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 31);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 31);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 3272);
    xsi_vlogvar_assign_value(t12, t13, 0, 0, 1);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 31);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 31);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 3432);
    xsi_vlogvar_assign_value(t12, t13, 0, 0, 1);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB36:    t5 = ((char*)((ng1)));
    t86 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t86 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng6)));
    t86 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t86 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng4)));
    t86 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t86 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng5)));
    t86 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t86 == 1)
        goto LAB43;

LAB44:
LAB45:    xsi_set_current_line(97, ng0);
    t2 = (t0 + 2792);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 32, t5, 32, t11, 32);
    t12 = (t0 + 2792);
    xsi_vlogvar_assign_value(t12, t13, 0, 0, 32);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 2952);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_lshift(t13, 32, t5, 32, t11, 32);
    t12 = (t0 + 2952);
    xsi_vlogvar_assign_value(t12, t13, 0, 0, 32);
    goto LAB2;

LAB6:    xsi_set_current_line(44, ng0);

LAB9:    xsi_set_current_line(45, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3112);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 3);
    xsi_set_current_line(46, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1592U);
    t3 = *((char **)t2);
    t2 = (t0 + 2792);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1752U);
    t3 = *((char **)t2);
    t2 = (t0 + 2952);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 32);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2632);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB8;

LAB12:    t21 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB13;

LAB14:    *((unsigned int *)t22) = 1;
    goto LAB17;

LAB16:    t29 = (t22 + 4);
    *((unsigned int *)t22) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB17;

LAB18:    t34 = (t0 + 2952);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = ((char*)((ng1)));
    memset(t38, 0, 8);
    t39 = (t36 + 4);
    t40 = (t37 + 4);
    t41 = *((unsigned int *)t36);
    t42 = *((unsigned int *)t37);
    t43 = (t41 ^ t42);
    t44 = *((unsigned int *)t39);
    t45 = *((unsigned int *)t40);
    t46 = (t44 ^ t45);
    t47 = (t43 | t46);
    t48 = *((unsigned int *)t39);
    t49 = *((unsigned int *)t40);
    t50 = (t48 | t49);
    t51 = (~(t50));
    t52 = (t47 & t51);
    if (t52 != 0)
        goto LAB24;

LAB21:    if (t50 != 0)
        goto LAB23;

LAB22:    *((unsigned int *)t38) = 1;

LAB24:    memset(t54, 0, 8);
    t55 = (t38 + 4);
    t56 = *((unsigned int *)t55);
    t57 = (~(t56));
    t58 = *((unsigned int *)t38);
    t59 = (t58 & t57);
    t60 = (t59 & 1U);
    if (t60 != 0)
        goto LAB25;

LAB26:    if (*((unsigned int *)t55) != 0)
        goto LAB27;

LAB28:    t63 = *((unsigned int *)t22);
    t64 = *((unsigned int *)t54);
    t65 = (t63 & t64);
    *((unsigned int *)t62) = t65;
    t66 = (t22 + 4);
    t67 = (t54 + 4);
    t68 = (t62 + 4);
    t69 = *((unsigned int *)t66);
    t70 = *((unsigned int *)t67);
    t71 = (t69 | t70);
    *((unsigned int *)t68) = t71;
    t72 = *((unsigned int *)t68);
    t73 = (t72 != 0);
    if (t73 == 1)
        goto LAB29;

LAB30:
LAB31:    goto LAB20;

LAB23:    t53 = (t38 + 4);
    *((unsigned int *)t38) = 1;
    *((unsigned int *)t53) = 1;
    goto LAB24;

LAB25:    *((unsigned int *)t54) = 1;
    goto LAB28;

LAB27:    t61 = (t54 + 4);
    *((unsigned int *)t54) = 1;
    *((unsigned int *)t61) = 1;
    goto LAB28;

LAB29:    t74 = *((unsigned int *)t62);
    t75 = *((unsigned int *)t68);
    *((unsigned int *)t62) = (t74 | t75);
    t76 = (t22 + 4);
    t77 = (t54 + 4);
    t78 = *((unsigned int *)t22);
    t79 = (~(t78));
    t80 = *((unsigned int *)t76);
    t81 = (~(t80));
    t82 = *((unsigned int *)t54);
    t83 = (~(t82));
    t84 = *((unsigned int *)t77);
    t85 = (~(t84));
    t86 = (t79 & t81);
    t87 = (t83 & t85);
    t88 = (~(t86));
    t89 = (~(t87));
    t90 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t90 & t88);
    t91 = *((unsigned int *)t68);
    *((unsigned int *)t68) = (t91 & t89);
    t92 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t92 & t88);
    t93 = *((unsigned int *)t62);
    *((unsigned int *)t62) = (t93 & t89);
    goto LAB31;

LAB32:    xsi_set_current_line(52, ng0);

LAB35:    xsi_set_current_line(53, ng0);
    t100 = ((char*)((ng3)));
    t101 = (t0 + 2632);
    xsi_vlogvar_assign_value(t101, t100, 0, 0, 1);
    xsi_set_current_line(54, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB34;

LAB37:    xsi_set_current_line(63, ng0);

LAB46:    xsi_set_current_line(64, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2472);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 3);
    xsi_set_current_line(65, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2632);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 3272);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 3432);
    t12 = (t11 + 56U);
    t21 = *((char **)t12);
    memset(t13, 0, 8);
    t23 = (t5 + 4);
    t29 = (t21 + 4);
    t6 = *((unsigned int *)t5);
    t7 = *((unsigned int *)t21);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t23);
    t10 = *((unsigned int *)t29);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t23);
    t17 = *((unsigned int *)t29);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB50;

LAB47:    if (t18 != 0)
        goto LAB49;

LAB48:    *((unsigned int *)t13) = 1;

LAB50:    t34 = (t13 + 4);
    t24 = *((unsigned int *)t34);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 3272);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 3432);
    t12 = (t11 + 56U);
    t21 = *((char **)t12);
    memset(t13, 0, 8);
    t23 = (t5 + 4);
    if (*((unsigned int *)t23) != 0)
        goto LAB55;

LAB54:    t29 = (t21 + 4);
    if (*((unsigned int *)t29) != 0)
        goto LAB55;

LAB58:    if (*((unsigned int *)t5) > *((unsigned int *)t21))
        goto LAB56;

LAB57:    t34 = (t13 + 4);
    t6 = *((unsigned int *)t34);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB59;

LAB60:    xsi_set_current_line(71, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3112);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB61:
LAB53:    goto LAB45;

LAB39:    xsi_set_current_line(74, ng0);

LAB62:    xsi_set_current_line(75, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 3112);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2632);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB45;

LAB41:    xsi_set_current_line(80, ng0);

LAB63:    xsi_set_current_line(81, ng0);
    t3 = (t0 + 3272);
    t5 = (t3 + 56U);
    t11 = *((char **)t5);
    t12 = (t0 + 3432);
    t21 = (t12 + 56U);
    t23 = *((char **)t21);
    memset(t13, 0, 8);
    t29 = (t11 + 4);
    t30 = (t23 + 4);
    t6 = *((unsigned int *)t11);
    t7 = *((unsigned int *)t23);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t29);
    t10 = *((unsigned int *)t30);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t29);
    t17 = *((unsigned int *)t30);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB67;

LAB64:    if (t18 != 0)
        goto LAB66;

LAB65:    *((unsigned int *)t13) = 1;

LAB67:    t35 = (t13 + 4);
    t24 = *((unsigned int *)t35);
    t25 = (~(t24));
    t26 = *((unsigned int *)t13);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB68;

LAB69:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 3272);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t11 = (t0 + 3432);
    t12 = (t11 + 56U);
    t21 = *((char **)t12);
    memset(t13, 0, 8);
    t23 = (t5 + 4);
    if (*((unsigned int *)t23) != 0)
        goto LAB72;

LAB71:    t29 = (t21 + 4);
    if (*((unsigned int *)t29) != 0)
        goto LAB72;

LAB75:    if (*((unsigned int *)t5) > *((unsigned int *)t21))
        goto LAB73;

LAB74:    t34 = (t13 + 4);
    t6 = *((unsigned int *)t34);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB76;

LAB77:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3112);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB78:
LAB70:    goto LAB45;

LAB43:    xsi_set_current_line(89, ng0);

LAB79:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng5)));
    t5 = (t0 + 3112);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 3);
    xsi_set_current_line(91, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 2632);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    goto LAB45;

LAB49:    t30 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB50;

LAB51:    xsi_set_current_line(67, ng0);
    t35 = ((char*)((ng4)));
    t36 = (t0 + 3112);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 3);
    goto LAB53;

LAB55:    t30 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB57;

LAB56:    *((unsigned int *)t13) = 1;
    goto LAB57;

LAB59:    xsi_set_current_line(69, ng0);
    t35 = ((char*)((ng5)));
    t36 = (t0 + 3112);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 3);
    goto LAB61;

LAB66:    t34 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t34) = 1;
    goto LAB67;

LAB68:    xsi_set_current_line(82, ng0);
    t36 = ((char*)((ng4)));
    t37 = (t0 + 3112);
    xsi_vlogvar_assign_value(t37, t36, 0, 0, 3);
    goto LAB70;

LAB72:    t30 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB74;

LAB73:    *((unsigned int *)t13) = 1;
    goto LAB74;

LAB76:    xsi_set_current_line(84, ng0);
    t35 = ((char*)((ng5)));
    t36 = (t0 + 3112);
    xsi_vlogvar_assign_value(t36, t35, 0, 0, 3);
    goto LAB78;

}


extern void work_m_00000000003784262064_3708136949_init()
{
	static char *pe[] = {(void *)Always_41_0};
	xsi_register_didat("work_m_00000000003784262064_3708136949", "isim/seq_cmp_tst_isim_beh.exe.sim/work/m_00000000003784262064_3708136949.didat");
	xsi_register_executes(pe);
}
