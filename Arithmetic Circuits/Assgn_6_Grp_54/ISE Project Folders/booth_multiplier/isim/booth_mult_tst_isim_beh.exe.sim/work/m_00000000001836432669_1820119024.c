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
static int ng2[] = {0, 0};
static int ng3[] = {1, 0};
static unsigned int ng4[] = {1U, 0U};



static void Always_35_0(char *t0)
{
    char t13[8];
    char t17[8];
    char t39[8];
    char t49[8];
    char t64[8];
    char t70[8];
    char t105[8];
    char t115[8];
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
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    char *t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
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
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    int t91;
    int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t106;
    char *t107;
    char *t108;
    char *t109;
    char *t110;
    char *t111;
    char *t112;
    char *t113;
    char *t114;
    char *t116;
    char *t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    char *t124;
    char *t125;
    char *t126;

LAB0:    t1 = (t0 + 4608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 5920);
    *((int *)t2) = 1;
    t3 = (t0 + 4640);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
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

LAB7:    xsi_set_current_line(45, ng0);

LAB10:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t13 + 4);
    t11 = (t4 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (t6 >> 0);
    t8 = (t7 & 1);
    *((unsigned int *)t13) = t8;
    t9 = *((unsigned int *)t11);
    t10 = (t9 >> 0);
    t14 = (t10 & 1);
    *((unsigned int *)t5) = t14;
    t12 = (t0 + 2728);
    t15 = (t12 + 56U);
    t16 = *((char **)t15);
    memset(t17, 0, 8);
    t18 = (t13 + 4);
    t19 = (t16 + 4);
    t20 = *((unsigned int *)t13);
    t21 = *((unsigned int *)t16);
    t22 = (t20 ^ t21);
    t23 = *((unsigned int *)t18);
    t24 = *((unsigned int *)t19);
    t25 = (t23 ^ t24);
    t26 = (t22 | t25);
    t27 = *((unsigned int *)t18);
    t28 = *((unsigned int *)t19);
    t29 = (t27 | t28);
    t30 = (~(t29));
    t31 = (t26 & t30);
    if (t31 != 0)
        goto LAB14;

LAB11:    if (t29 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t17) = 1;

LAB14:    t33 = (t17 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (~(t34));
    t36 = *((unsigned int *)t17);
    t37 = (t36 & t35);
    t38 = (t37 != 0);
    if (t38 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3368);
    t11 = (t5 + 72U);
    t12 = *((char **)t11);
    t15 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t13, 32, t4, t12, 2, t15, 32, 1);
    t16 = ((char*)((ng3)));
    memset(t17, 0, 8);
    t18 = (t13 + 4);
    t19 = (t16 + 4);
    t6 = *((unsigned int *)t13);
    t7 = *((unsigned int *)t16);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t18);
    t10 = *((unsigned int *)t19);
    t14 = (t9 ^ t10);
    t20 = (t8 | t14);
    t21 = *((unsigned int *)t18);
    t22 = *((unsigned int *)t19);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB22;

LAB19:    if (t23 != 0)
        goto LAB21;

LAB20:    *((unsigned int *)t17) = 1;

LAB22:    memset(t39, 0, 8);
    t33 = (t17 + 4);
    t26 = *((unsigned int *)t33);
    t27 = (~(t26));
    t28 = *((unsigned int *)t17);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t33) != 0)
        goto LAB25;

LAB26:    t41 = (t39 + 4);
    t31 = *((unsigned int *)t39);
    t34 = *((unsigned int *)t41);
    t35 = (t31 || t34);
    if (t35 > 0)
        goto LAB27;

LAB28:    memcpy(t70, t39, 8);

LAB29:    t99 = (t70 + 4);
    t100 = *((unsigned int *)t99);
    t101 = (~(t100));
    t102 = *((unsigned int *)t70);
    t103 = (t102 & t101);
    t104 = (t103 != 0);
    if (t104 > 0)
        goto LAB41;

LAB42:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 3368);
    t11 = (t5 + 72U);
    t12 = *((char **)t11);
    t15 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t13, 32, t4, t12, 2, t15, 32, 1);
    t16 = ((char*)((ng2)));
    memset(t17, 0, 8);
    t18 = (t13 + 4);
    t19 = (t16 + 4);
    t6 = *((unsigned int *)t13);
    t7 = *((unsigned int *)t16);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t18);
    t10 = *((unsigned int *)t19);
    t14 = (t9 ^ t10);
    t20 = (t8 | t14);
    t21 = *((unsigned int *)t18);
    t22 = *((unsigned int *)t19);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB48;

LAB45:    if (t23 != 0)
        goto LAB47;

LAB46:    *((unsigned int *)t17) = 1;

LAB48:    memset(t39, 0, 8);
    t33 = (t17 + 4);
    t26 = *((unsigned int *)t33);
    t27 = (~(t26));
    t28 = *((unsigned int *)t17);
    t29 = (t28 & t27);
    t30 = (t29 & 1U);
    if (t30 != 0)
        goto LAB49;

LAB50:    if (*((unsigned int *)t33) != 0)
        goto LAB51;

LAB52:    t41 = (t39 + 4);
    t31 = *((unsigned int *)t39);
    t34 = *((unsigned int *)t41);
    t35 = (t31 || t34);
    if (t35 > 0)
        goto LAB53;

LAB54:    memcpy(t70, t39, 8);

LAB55:    t99 = (t70 + 4);
    t100 = *((unsigned int *)t99);
    t101 = (~(t100));
    t102 = *((unsigned int *)t70);
    t103 = (t102 & t101);
    t104 = (t103 != 0);
    if (t104 > 0)
        goto LAB67;

LAB68:
LAB69:
LAB43:
LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(38, ng0);

LAB9:    xsi_set_current_line(39, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 8, 0LL);
    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    t2 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    xsi_set_current_line(41, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 3208);
    xsi_vlogvar_wait_assign_value(t2, t3, 0, 0, 8, 0LL);
    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB13:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(47, ng0);

LAB18:    xsi_set_current_line(48, ng0);
    t40 = (t0 + 3368);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    t43 = (t0 + 3048);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    t46 = (t0 + 3048);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    memset(t49, 0, 8);
    t50 = (t49 + 4);
    t51 = (t48 + 4);
    t52 = *((unsigned int *)t48);
    t53 = (t52 >> 7);
    t54 = (t53 & 1);
    *((unsigned int *)t49) = t54;
    t55 = *((unsigned int *)t51);
    t56 = (t55 >> 7);
    t57 = (t56 & 1);
    *((unsigned int *)t50) = t57;
    xsi_vlogtype_concat(t39, 17, 17, 3U, t49, 1, t45, 8, t42, 8);
    t58 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t58, t39, 0, 0, 1, 0LL);
    t59 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t59, t39, 1, 0, 8, 0LL);
    t60 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t60, t39, 9, 0, 8, 0LL);
    goto LAB17;

LAB21:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB22;

LAB23:    *((unsigned int *)t39) = 1;
    goto LAB26;

LAB25:    t40 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB26;

LAB27:    t42 = (t0 + 2728);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = ((char*)((ng2)));
    memset(t49, 0, 8);
    t46 = (t44 + 4);
    t47 = (t45 + 4);
    t36 = *((unsigned int *)t44);
    t37 = *((unsigned int *)t45);
    t38 = (t36 ^ t37);
    t52 = *((unsigned int *)t46);
    t53 = *((unsigned int *)t47);
    t54 = (t52 ^ t53);
    t55 = (t38 | t54);
    t56 = *((unsigned int *)t46);
    t57 = *((unsigned int *)t47);
    t61 = (t56 | t57);
    t62 = (~(t61));
    t63 = (t55 & t62);
    if (t63 != 0)
        goto LAB33;

LAB30:    if (t61 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t49) = 1;

LAB33:    memset(t64, 0, 8);
    t50 = (t49 + 4);
    t65 = *((unsigned int *)t50);
    t66 = (~(t65));
    t67 = *((unsigned int *)t49);
    t68 = (t67 & t66);
    t69 = (t68 & 1U);
    if (t69 != 0)
        goto LAB34;

LAB35:    if (*((unsigned int *)t50) != 0)
        goto LAB36;

LAB37:    t71 = *((unsigned int *)t39);
    t72 = *((unsigned int *)t64);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t58 = (t39 + 4);
    t59 = (t64 + 4);
    t60 = (t70 + 4);
    t74 = *((unsigned int *)t58);
    t75 = *((unsigned int *)t59);
    t76 = (t74 | t75);
    *((unsigned int *)t60) = t76;
    t77 = *((unsigned int *)t60);
    t78 = (t77 != 0);
    if (t78 == 1)
        goto LAB38;

LAB39:
LAB40:    goto LAB29;

LAB32:    t48 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB33;

LAB34:    *((unsigned int *)t64) = 1;
    goto LAB37;

LAB36:    t51 = (t64 + 4);
    *((unsigned int *)t64) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB37;

LAB38:    t79 = *((unsigned int *)t70);
    t80 = *((unsigned int *)t60);
    *((unsigned int *)t70) = (t79 | t80);
    t81 = (t39 + 4);
    t82 = (t64 + 4);
    t83 = *((unsigned int *)t39);
    t84 = (~(t83));
    t85 = *((unsigned int *)t81);
    t86 = (~(t85));
    t87 = *((unsigned int *)t64);
    t88 = (~(t87));
    t89 = *((unsigned int *)t82);
    t90 = (~(t89));
    t91 = (t84 & t86);
    t92 = (t88 & t90);
    t93 = (~(t91));
    t94 = (~(t92));
    t95 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t95 & t93);
    t96 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t96 & t94);
    t97 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t97 & t93);
    t98 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t98 & t94);
    goto LAB40;

LAB41:    xsi_set_current_line(54, ng0);

LAB44:    xsi_set_current_line(55, ng0);
    t106 = (t0 + 3368);
    t107 = (t106 + 56U);
    t108 = *((char **)t107);
    t109 = (t0 + 3688);
    t110 = (t109 + 56U);
    t111 = *((char **)t110);
    t112 = (t0 + 3688);
    t113 = (t112 + 56U);
    t114 = *((char **)t113);
    memset(t115, 0, 8);
    t116 = (t115 + 4);
    t117 = (t114 + 4);
    t118 = *((unsigned int *)t114);
    t119 = (t118 >> 7);
    t120 = (t119 & 1);
    *((unsigned int *)t115) = t120;
    t121 = *((unsigned int *)t117);
    t122 = (t121 >> 7);
    t123 = (t122 & 1);
    *((unsigned int *)t116) = t123;
    xsi_vlogtype_concat(t105, 17, 17, 3U, t115, 1, t111, 8, t108, 8);
    t124 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t124, t105, 0, 0, 1, 0LL);
    t125 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t125, t105, 1, 0, 8, 0LL);
    t126 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t126, t105, 9, 0, 8, 0LL);
    goto LAB43;

LAB47:    t32 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t32) = 1;
    goto LAB48;

LAB49:    *((unsigned int *)t39) = 1;
    goto LAB52;

LAB51:    t40 = (t39 + 4);
    *((unsigned int *)t39) = 1;
    *((unsigned int *)t40) = 1;
    goto LAB52;

LAB53:    t42 = (t0 + 2728);
    t43 = (t42 + 56U);
    t44 = *((char **)t43);
    t45 = ((char*)((ng3)));
    memset(t49, 0, 8);
    t46 = (t44 + 4);
    t47 = (t45 + 4);
    t36 = *((unsigned int *)t44);
    t37 = *((unsigned int *)t45);
    t38 = (t36 ^ t37);
    t52 = *((unsigned int *)t46);
    t53 = *((unsigned int *)t47);
    t54 = (t52 ^ t53);
    t55 = (t38 | t54);
    t56 = *((unsigned int *)t46);
    t57 = *((unsigned int *)t47);
    t61 = (t56 | t57);
    t62 = (~(t61));
    t63 = (t55 & t62);
    if (t63 != 0)
        goto LAB59;

LAB56:    if (t61 != 0)
        goto LAB58;

LAB57:    *((unsigned int *)t49) = 1;

LAB59:    memset(t64, 0, 8);
    t50 = (t49 + 4);
    t65 = *((unsigned int *)t50);
    t66 = (~(t65));
    t67 = *((unsigned int *)t49);
    t68 = (t67 & t66);
    t69 = (t68 & 1U);
    if (t69 != 0)
        goto LAB60;

LAB61:    if (*((unsigned int *)t50) != 0)
        goto LAB62;

LAB63:    t71 = *((unsigned int *)t39);
    t72 = *((unsigned int *)t64);
    t73 = (t71 & t72);
    *((unsigned int *)t70) = t73;
    t58 = (t39 + 4);
    t59 = (t64 + 4);
    t60 = (t70 + 4);
    t74 = *((unsigned int *)t58);
    t75 = *((unsigned int *)t59);
    t76 = (t74 | t75);
    *((unsigned int *)t60) = t76;
    t77 = *((unsigned int *)t60);
    t78 = (t77 != 0);
    if (t78 == 1)
        goto LAB64;

LAB65:
LAB66:    goto LAB55;

LAB58:    t48 = (t49 + 4);
    *((unsigned int *)t49) = 1;
    *((unsigned int *)t48) = 1;
    goto LAB59;

LAB60:    *((unsigned int *)t64) = 1;
    goto LAB63;

LAB62:    t51 = (t64 + 4);
    *((unsigned int *)t64) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB63;

LAB64:    t79 = *((unsigned int *)t70);
    t80 = *((unsigned int *)t60);
    *((unsigned int *)t70) = (t79 | t80);
    t81 = (t39 + 4);
    t82 = (t64 + 4);
    t83 = *((unsigned int *)t39);
    t84 = (~(t83));
    t85 = *((unsigned int *)t81);
    t86 = (~(t85));
    t87 = *((unsigned int *)t64);
    t88 = (~(t87));
    t89 = *((unsigned int *)t82);
    t90 = (~(t89));
    t91 = (t84 & t86);
    t92 = (t88 & t90);
    t93 = (~(t91));
    t94 = (~(t92));
    t95 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t95 & t93);
    t96 = *((unsigned int *)t60);
    *((unsigned int *)t60) = (t96 & t94);
    t97 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t97 & t93);
    t98 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t98 & t94);
    goto LAB66;

LAB67:    xsi_set_current_line(61, ng0);

LAB70:    xsi_set_current_line(62, ng0);
    t106 = (t0 + 3368);
    t107 = (t106 + 56U);
    t108 = *((char **)t107);
    t109 = (t0 + 3528);
    t110 = (t109 + 56U);
    t111 = *((char **)t110);
    t112 = (t0 + 3528);
    t113 = (t112 + 56U);
    t114 = *((char **)t113);
    memset(t115, 0, 8);
    t116 = (t115 + 4);
    t117 = (t114 + 4);
    t118 = *((unsigned int *)t114);
    t119 = (t118 >> 7);
    t120 = (t119 & 1);
    *((unsigned int *)t115) = t120;
    t121 = *((unsigned int *)t117);
    t122 = (t121 >> 7);
    t123 = (t122 & 1);
    *((unsigned int *)t116) = t123;
    xsi_vlogtype_concat(t105, 17, 17, 3U, t115, 1, t111, 8, t108, 8);
    t124 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t124, t105, 0, 0, 1, 0LL);
    t125 = (t0 + 3368);
    xsi_vlogvar_wait_assign_value(t125, t105, 1, 0, 8, 0LL);
    t126 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t126, t105, 9, 0, 8, 0LL);
    goto LAB69;

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
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;

LAB0:    t1 = (t0 + 4856U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 3368);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t0 + 3048);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    xsi_vlogtype_concat(t3, 16, 16, 2U, t8, 8, t5, 8);
    t9 = (t0 + 6032);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memset(t13, 0, 8);
    t14 = 65535U;
    t15 = t14;
    t16 = (t3 + 4);
    t17 = *((unsigned int *)t3);
    t14 = (t14 & t17);
    t18 = *((unsigned int *)t16);
    t15 = (t15 & t18);
    t19 = (t13 + 4);
    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 | t14);
    t21 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t21 | t15);
    xsi_driver_vfirst_trans(t9, 0, 15);
    t22 = (t0 + 5936);
    *((int *)t22) = 1;

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

LAB0:    t1 = (t0 + 5104U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng1)));
    t3 = (t0 + 6096);
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

LAB0:    t1 = (t0 + 5352U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3208);
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
    t16 = (t0 + 6160);
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
    t29 = (t0 + 5952);
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

LAB0:    t1 = (t0 + 5600U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng4)));
    t3 = (t0 + 6224);
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


extern void work_m_00000000001836432669_1820119024_init()
{
	static char *pe[] = {(void *)Always_35_0,(void *)Cont_74_1,(void *)implSig1_execute,(void *)implSig2_execute,(void *)implSig3_execute};
	xsi_register_didat("work_m_00000000001836432669_1820119024", "isim/booth_mult_tst_isim_beh.exe.sim/work/m_00000000001836432669_1820119024.didat");
	xsi_register_executes(pe);
}
