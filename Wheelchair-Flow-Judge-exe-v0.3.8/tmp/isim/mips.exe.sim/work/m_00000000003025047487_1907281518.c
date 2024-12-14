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
static int ng0[] = {0, 0};
static int ng1[] = {1, 0};
static int ng2[] = {7, 0};
static int ng3[] = {8, 0};
static int ng4[] = {2, 0};
static int ng5[] = {3, 0};
static int ng6[] = {4, 0};
static int ng7[] = {5, 0};
static int ng8[] = {10, 0};



static void Cont_22_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t8[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;

LAB0:    t1 = (t0 + 4768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 3848);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = ((char*)((ng0)));
    memset(t8, 0, 8);
    t9 = (t6 + 4);
    t10 = (t7 + 4);
    t11 = *((unsigned int *)t6);
    t12 = *((unsigned int *)t7);
    t13 = (t11 ^ t12);
    t14 = *((unsigned int *)t9);
    t15 = *((unsigned int *)t10);
    t16 = (t14 ^ t15);
    t17 = (t13 | t16);
    t18 = *((unsigned int *)t9);
    t19 = *((unsigned int *)t10);
    t20 = (t18 | t19);
    t21 = (~(t20));
    t22 = (t17 & t21);
    if (t22 != 0)
        goto LAB5;

LAB4:    if (t20 != 0)
        goto LAB6;

LAB7:    memset(t4, 0, 8);
    t24 = (t8 + 4);
    t25 = *((unsigned int *)t24);
    t26 = (~(t25));
    t27 = *((unsigned int *)t8);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB8;

LAB9:    if (*((unsigned int *)t24) != 0)
        goto LAB10;

LAB11:    t31 = (t4 + 4);
    t32 = *((unsigned int *)t4);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB12;

LAB13:    t36 = *((unsigned int *)t4);
    t37 = (~(t36));
    t38 = *((unsigned int *)t31);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB14;

LAB15:    if (*((unsigned int *)t31) > 0)
        goto LAB16;

LAB17:    if (*((unsigned int *)t4) > 0)
        goto LAB18;

LAB19:    memcpy(t3, t40, 8);

LAB20:    t41 = (t0 + 5696);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memset(t45, 0, 8);
    t46 = 1U;
    t47 = t46;
    t48 = (t3 + 4);
    t49 = *((unsigned int *)t3);
    t46 = (t46 & t49);
    t50 = *((unsigned int *)t48);
    t47 = (t47 & t50);
    t51 = (t45 + 4);
    t52 = *((unsigned int *)t45);
    *((unsigned int *)t45) = (t52 | t46);
    t53 = *((unsigned int *)t51);
    *((unsigned int *)t51) = (t53 | t47);
    xsi_driver_vfirst_trans(t41, 0, 0);
    t54 = (t0 + 5584);
    *((int *)t54) = 1;

LAB1:    return;
LAB5:    *((unsigned int *)t8) = 1;
    goto LAB7;

LAB6:    t23 = (t8 + 4);
    *((unsigned int *)t8) = 1;
    *((unsigned int *)t23) = 1;
    goto LAB7;

LAB8:    *((unsigned int *)t4) = 1;
    goto LAB11;

LAB10:    t30 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB11;

LAB12:    t35 = ((char*)((ng1)));
    goto LAB13;

LAB14:    t40 = ((char*)((ng0)));
    goto LAB15;

LAB16:    xsi_vlog_unsigned_bit_combine(t3, 32, t35, 32, t40, 32);
    goto LAB20;

LAB18:    memcpy(t3, t35, 8);
    goto LAB20;

}

static void Always_23_1(char *t0)
{
    char t13[8];
    char t28[8];
    char t36[8];
    char t52[8];
    char t67[8];
    char t83[8];
    char t91[8];
    char t119[8];
    char t134[8];
    char t150[8];
    char t158[8];
    char t186[8];
    char t201[8];
    char t217[8];
    char t225[8];
    char t253[8];
    char t261[8];
    char t301[16];
    char t302[16];
    char t303[16];
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
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
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
    char *t51;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t66;
    char *t68;
    char *t69;
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
    unsigned int t81;
    char *t82;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    char *t95;
    char *t96;
    char *t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    char *t105;
    char *t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    int t110;
    unsigned int t111;
    unsigned int t112;
    unsigned int t113;
    int t114;
    unsigned int t115;
    unsigned int t116;
    unsigned int t117;
    unsigned int t118;
    char *t120;
    unsigned int t121;
    unsigned int t122;
    unsigned int t123;
    unsigned int t124;
    unsigned int t125;
    char *t126;
    char *t127;
    unsigned int t128;
    unsigned int t129;
    unsigned int t130;
    unsigned int t131;
    char *t132;
    char *t133;
    char *t135;
    char *t136;
    unsigned int t137;
    unsigned int t138;
    unsigned int t139;
    unsigned int t140;
    unsigned int t141;
    unsigned int t142;
    unsigned int t143;
    unsigned int t144;
    unsigned int t145;
    unsigned int t146;
    unsigned int t147;
    unsigned int t148;
    char *t149;
    char *t151;
    unsigned int t152;
    unsigned int t153;
    unsigned int t154;
    unsigned int t155;
    unsigned int t156;
    char *t157;
    unsigned int t159;
    unsigned int t160;
    unsigned int t161;
    char *t162;
    char *t163;
    char *t164;
    unsigned int t165;
    unsigned int t166;
    unsigned int t167;
    unsigned int t168;
    unsigned int t169;
    unsigned int t170;
    unsigned int t171;
    char *t172;
    char *t173;
    unsigned int t174;
    unsigned int t175;
    unsigned int t176;
    int t177;
    unsigned int t178;
    unsigned int t179;
    unsigned int t180;
    int t181;
    unsigned int t182;
    unsigned int t183;
    unsigned int t184;
    unsigned int t185;
    char *t187;
    unsigned int t188;
    unsigned int t189;
    unsigned int t190;
    unsigned int t191;
    unsigned int t192;
    char *t193;
    char *t194;
    unsigned int t195;
    unsigned int t196;
    unsigned int t197;
    unsigned int t198;
    char *t199;
    char *t200;
    char *t202;
    char *t203;
    unsigned int t204;
    unsigned int t205;
    unsigned int t206;
    unsigned int t207;
    unsigned int t208;
    unsigned int t209;
    unsigned int t210;
    unsigned int t211;
    unsigned int t212;
    unsigned int t213;
    unsigned int t214;
    unsigned int t215;
    char *t216;
    char *t218;
    unsigned int t219;
    unsigned int t220;
    unsigned int t221;
    unsigned int t222;
    unsigned int t223;
    char *t224;
    unsigned int t226;
    unsigned int t227;
    unsigned int t228;
    char *t229;
    char *t230;
    char *t231;
    unsigned int t232;
    unsigned int t233;
    unsigned int t234;
    unsigned int t235;
    unsigned int t236;
    unsigned int t237;
    unsigned int t238;
    char *t239;
    char *t240;
    unsigned int t241;
    unsigned int t242;
    unsigned int t243;
    int t244;
    unsigned int t245;
    unsigned int t246;
    unsigned int t247;
    int t248;
    unsigned int t249;
    unsigned int t250;
    unsigned int t251;
    unsigned int t252;
    char *t254;
    unsigned int t255;
    unsigned int t256;
    unsigned int t257;
    unsigned int t258;
    unsigned int t259;
    char *t260;
    unsigned int t262;
    unsigned int t263;
    unsigned int t264;
    char *t265;
    char *t266;
    char *t267;
    unsigned int t268;
    unsigned int t269;
    unsigned int t270;
    unsigned int t271;
    unsigned int t272;
    unsigned int t273;
    unsigned int t274;
    char *t275;
    char *t276;
    unsigned int t277;
    unsigned int t278;
    unsigned int t279;
    unsigned int t280;
    unsigned int t281;
    unsigned int t282;
    unsigned int t283;
    unsigned int t284;
    int t285;
    int t286;
    unsigned int t287;
    unsigned int t288;
    unsigned int t289;
    unsigned int t290;
    unsigned int t291;
    unsigned int t292;
    char *t293;
    unsigned int t294;
    unsigned int t295;
    unsigned int t296;
    unsigned int t297;
    unsigned int t298;
    char *t299;
    char *t300;

LAB0:    t1 = (t0 + 5016U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5600);
    *((int *)t2) = 1;
    t3 = (t0 + 5048);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng2)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB13;

LAB10:    if (t18 != 0)
        goto LAB12;

LAB11:    *((unsigned int *)t13) = 1;

LAB13:    t12 = (t13 + 4);
    t21 = *((unsigned int *)t12);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB14;

LAB15:    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t6 = *((unsigned int *)t3);
    t7 = *((unsigned int *)t2);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t14 = (t9 ^ t10);
    t15 = (t8 | t14);
    t16 = *((unsigned int *)t4);
    t17 = *((unsigned int *)t5);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB21;

LAB18:    if (t18 != 0)
        goto LAB20;

LAB19:    *((unsigned int *)t13) = 1;

LAB21:    t12 = (t13 + 4);
    t21 = *((unsigned int *)t12);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB22;

LAB23:    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng0)));
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
        goto LAB29;

LAB26:    if (t18 != 0)
        goto LAB28;

LAB27:    *((unsigned int *)t13) = 1;

LAB29:    memset(t28, 0, 8);
    t27 = (t13 + 4);
    t21 = *((unsigned int *)t27);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 & 1U);
    if (t25 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t27) != 0)
        goto LAB32;

LAB33:    t30 = (t28 + 4);
    t31 = *((unsigned int *)t28);
    t32 = *((unsigned int *)t30);
    t33 = (t31 || t32);
    if (t33 > 0)
        goto LAB34;

LAB35:    memcpy(t261, t28, 8);

LAB36:    t293 = (t261 + 4);
    t294 = *((unsigned int *)t293);
    t295 = (~(t294));
    t296 = *((unsigned int *)t261);
    t297 = (t296 & t295);
    t298 = (t297 != 0);
    if (t298 > 0)
        goto LAB102;

LAB103:    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1848U);
    t11 = *((char **)t5);
    memset(t13, 0, 8);
    t5 = (t11 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t11);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB109;

LAB107:    if (*((unsigned int *)t5) == 0)
        goto LAB106;

LAB108:    t12 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t12) = 1;

LAB109:    t26 = (t13 + 4);
    t27 = (t11 + 4);
    t14 = *((unsigned int *)t11);
    t15 = (~(t14));
    *((unsigned int *)t13) = t15;
    *((unsigned int *)t26) = 0;
    if (*((unsigned int *)t27) != 0)
        goto LAB111;

LAB110:    t20 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t20 & 1U);
    t21 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t21 & 1U);
    t22 = *((unsigned int *)t4);
    t23 = *((unsigned int *)t13);
    t24 = (t22 | t23);
    *((unsigned int *)t28) = t24;
    t29 = (t4 + 4);
    t30 = (t13 + 4);
    t34 = (t28 + 4);
    t25 = *((unsigned int *)t29);
    t31 = *((unsigned int *)t30);
    t32 = (t25 | t31);
    *((unsigned int *)t34) = t32;
    t33 = *((unsigned int *)t34);
    t39 = (t33 != 0);
    if (t39 == 1)
        goto LAB112;

LAB113:
LAB114:    t38 = (t28 + 4);
    t55 = *((unsigned int *)t38);
    t56 = (~(t55));
    t57 = *((unsigned int *)t28);
    t58 = (t57 & t56);
    t61 = (t58 != 0);
    if (t61 > 0)
        goto LAB115;

LAB116:    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB154;

LAB155:
LAB156:
LAB117:
LAB104:
LAB24:
LAB16:
LAB8:    goto LAB2;

LAB6:
LAB9:    t11 = ((char*)((ng0)));
    t12 = (t0 + 2408);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 2568);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB8;

LAB12:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB13;

LAB14:
LAB17:    t26 = (t0 + 1368U);
    t27 = *((char **)t26);
    t26 = (t0 + 2568);
    xsi_vlogvar_assign_value(t26, t27, 0, 0, 32);
    goto LAB16;

LAB20:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB21;

LAB22:
LAB25:    t26 = (t0 + 1368U);
    t27 = *((char **)t26);
    t26 = (t0 + 2408);
    xsi_vlogvar_assign_value(t26, t27, 0, 0, 32);
    goto LAB24;

LAB28:    t26 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB29;

LAB30:    *((unsigned int *)t28) = 1;
    goto LAB33;

LAB32:    t29 = (t28 + 4);
    *((unsigned int *)t28) = 1;
    *((unsigned int *)t29) = 1;
    goto LAB33;

LAB34:    t34 = (t0 + 1688U);
    t35 = *((char **)t34);
    t34 = ((char*)((ng1)));
    memset(t36, 0, 8);
    t37 = (t35 + 4);
    t38 = (t34 + 4);
    t39 = *((unsigned int *)t35);
    t40 = *((unsigned int *)t34);
    t41 = (t39 ^ t40);
    t42 = *((unsigned int *)t37);
    t43 = *((unsigned int *)t38);
    t44 = (t42 ^ t43);
    t45 = (t41 | t44);
    t46 = *((unsigned int *)t37);
    t47 = *((unsigned int *)t38);
    t48 = (t46 | t47);
    t49 = (~(t48));
    t50 = (t45 & t49);
    if (t50 != 0)
        goto LAB40;

LAB37:    if (t48 != 0)
        goto LAB39;

LAB38:    *((unsigned int *)t36) = 1;

LAB40:    memset(t52, 0, 8);
    t53 = (t36 + 4);
    t54 = *((unsigned int *)t53);
    t55 = (~(t54));
    t56 = *((unsigned int *)t36);
    t57 = (t56 & t55);
    t58 = (t57 & 1U);
    if (t58 != 0)
        goto LAB41;

LAB42:    if (*((unsigned int *)t53) != 0)
        goto LAB43;

LAB44:    t60 = (t52 + 4);
    t61 = *((unsigned int *)t52);
    t62 = (!(t61));
    t63 = *((unsigned int *)t60);
    t64 = (t62 || t63);
    if (t64 > 0)
        goto LAB45;

LAB46:    memcpy(t91, t52, 8);

LAB47:    memset(t119, 0, 8);
    t120 = (t91 + 4);
    t121 = *((unsigned int *)t120);
    t122 = (~(t121));
    t123 = *((unsigned int *)t91);
    t124 = (t123 & t122);
    t125 = (t124 & 1U);
    if (t125 != 0)
        goto LAB59;

LAB60:    if (*((unsigned int *)t120) != 0)
        goto LAB61;

LAB62:    t127 = (t119 + 4);
    t128 = *((unsigned int *)t119);
    t129 = (!(t128));
    t130 = *((unsigned int *)t127);
    t131 = (t129 || t130);
    if (t131 > 0)
        goto LAB63;

LAB64:    memcpy(t158, t119, 8);

LAB65:    memset(t186, 0, 8);
    t187 = (t158 + 4);
    t188 = *((unsigned int *)t187);
    t189 = (~(t188));
    t190 = *((unsigned int *)t158);
    t191 = (t190 & t189);
    t192 = (t191 & 1U);
    if (t192 != 0)
        goto LAB77;

LAB78:    if (*((unsigned int *)t187) != 0)
        goto LAB79;

LAB80:    t194 = (t186 + 4);
    t195 = *((unsigned int *)t186);
    t196 = (!(t195));
    t197 = *((unsigned int *)t194);
    t198 = (t196 || t197);
    if (t198 > 0)
        goto LAB81;

LAB82:    memcpy(t225, t186, 8);

LAB83:    memset(t253, 0, 8);
    t254 = (t225 + 4);
    t255 = *((unsigned int *)t254);
    t256 = (~(t255));
    t257 = *((unsigned int *)t225);
    t258 = (t257 & t256);
    t259 = (t258 & 1U);
    if (t259 != 0)
        goto LAB95;

LAB96:    if (*((unsigned int *)t254) != 0)
        goto LAB97;

LAB98:    t262 = *((unsigned int *)t28);
    t263 = *((unsigned int *)t253);
    t264 = (t262 & t263);
    *((unsigned int *)t261) = t264;
    t265 = (t28 + 4);
    t266 = (t253 + 4);
    t267 = (t261 + 4);
    t268 = *((unsigned int *)t265);
    t269 = *((unsigned int *)t266);
    t270 = (t268 | t269);
    *((unsigned int *)t267) = t270;
    t271 = *((unsigned int *)t267);
    t272 = (t271 != 0);
    if (t272 == 1)
        goto LAB99;

LAB100:
LAB101:    goto LAB36;

LAB39:    t51 = (t36 + 4);
    *((unsigned int *)t36) = 1;
    *((unsigned int *)t51) = 1;
    goto LAB40;

LAB41:    *((unsigned int *)t52) = 1;
    goto LAB44;

LAB43:    t59 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t59) = 1;
    goto LAB44;

LAB45:    t65 = (t0 + 1688U);
    t66 = *((char **)t65);
    t65 = ((char*)((ng4)));
    memset(t67, 0, 8);
    t68 = (t66 + 4);
    t69 = (t65 + 4);
    t70 = *((unsigned int *)t66);
    t71 = *((unsigned int *)t65);
    t72 = (t70 ^ t71);
    t73 = *((unsigned int *)t68);
    t74 = *((unsigned int *)t69);
    t75 = (t73 ^ t74);
    t76 = (t72 | t75);
    t77 = *((unsigned int *)t68);
    t78 = *((unsigned int *)t69);
    t79 = (t77 | t78);
    t80 = (~(t79));
    t81 = (t76 & t80);
    if (t81 != 0)
        goto LAB51;

LAB48:    if (t79 != 0)
        goto LAB50;

LAB49:    *((unsigned int *)t67) = 1;

LAB51:    memset(t83, 0, 8);
    t84 = (t67 + 4);
    t85 = *((unsigned int *)t84);
    t86 = (~(t85));
    t87 = *((unsigned int *)t67);
    t88 = (t87 & t86);
    t89 = (t88 & 1U);
    if (t89 != 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t84) != 0)
        goto LAB54;

LAB55:    t92 = *((unsigned int *)t52);
    t93 = *((unsigned int *)t83);
    t94 = (t92 | t93);
    *((unsigned int *)t91) = t94;
    t95 = (t52 + 4);
    t96 = (t83 + 4);
    t97 = (t91 + 4);
    t98 = *((unsigned int *)t95);
    t99 = *((unsigned int *)t96);
    t100 = (t98 | t99);
    *((unsigned int *)t97) = t100;
    t101 = *((unsigned int *)t97);
    t102 = (t101 != 0);
    if (t102 == 1)
        goto LAB56;

LAB57:
LAB58:    goto LAB47;

LAB50:    t82 = (t67 + 4);
    *((unsigned int *)t67) = 1;
    *((unsigned int *)t82) = 1;
    goto LAB51;

LAB52:    *((unsigned int *)t83) = 1;
    goto LAB55;

LAB54:    t90 = (t83 + 4);
    *((unsigned int *)t83) = 1;
    *((unsigned int *)t90) = 1;
    goto LAB55;

LAB56:    t103 = *((unsigned int *)t91);
    t104 = *((unsigned int *)t97);
    *((unsigned int *)t91) = (t103 | t104);
    t105 = (t52 + 4);
    t106 = (t83 + 4);
    t107 = *((unsigned int *)t105);
    t108 = (~(t107));
    t109 = *((unsigned int *)t52);
    t110 = (t109 & t108);
    t111 = *((unsigned int *)t106);
    t112 = (~(t111));
    t113 = *((unsigned int *)t83);
    t114 = (t113 & t112);
    t115 = (~(t110));
    t116 = (~(t114));
    t117 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t117 & t115);
    t118 = *((unsigned int *)t97);
    *((unsigned int *)t97) = (t118 & t116);
    goto LAB58;

LAB59:    *((unsigned int *)t119) = 1;
    goto LAB62;

LAB61:    t126 = (t119 + 4);
    *((unsigned int *)t119) = 1;
    *((unsigned int *)t126) = 1;
    goto LAB62;

LAB63:    t132 = (t0 + 1688U);
    t133 = *((char **)t132);
    t132 = ((char*)((ng5)));
    memset(t134, 0, 8);
    t135 = (t133 + 4);
    t136 = (t132 + 4);
    t137 = *((unsigned int *)t133);
    t138 = *((unsigned int *)t132);
    t139 = (t137 ^ t138);
    t140 = *((unsigned int *)t135);
    t141 = *((unsigned int *)t136);
    t142 = (t140 ^ t141);
    t143 = (t139 | t142);
    t144 = *((unsigned int *)t135);
    t145 = *((unsigned int *)t136);
    t146 = (t144 | t145);
    t147 = (~(t146));
    t148 = (t143 & t147);
    if (t148 != 0)
        goto LAB69;

LAB66:    if (t146 != 0)
        goto LAB68;

LAB67:    *((unsigned int *)t134) = 1;

LAB69:    memset(t150, 0, 8);
    t151 = (t134 + 4);
    t152 = *((unsigned int *)t151);
    t153 = (~(t152));
    t154 = *((unsigned int *)t134);
    t155 = (t154 & t153);
    t156 = (t155 & 1U);
    if (t156 != 0)
        goto LAB70;

LAB71:    if (*((unsigned int *)t151) != 0)
        goto LAB72;

LAB73:    t159 = *((unsigned int *)t119);
    t160 = *((unsigned int *)t150);
    t161 = (t159 | t160);
    *((unsigned int *)t158) = t161;
    t162 = (t119 + 4);
    t163 = (t150 + 4);
    t164 = (t158 + 4);
    t165 = *((unsigned int *)t162);
    t166 = *((unsigned int *)t163);
    t167 = (t165 | t166);
    *((unsigned int *)t164) = t167;
    t168 = *((unsigned int *)t164);
    t169 = (t168 != 0);
    if (t169 == 1)
        goto LAB74;

LAB75:
LAB76:    goto LAB65;

LAB68:    t149 = (t134 + 4);
    *((unsigned int *)t134) = 1;
    *((unsigned int *)t149) = 1;
    goto LAB69;

LAB70:    *((unsigned int *)t150) = 1;
    goto LAB73;

LAB72:    t157 = (t150 + 4);
    *((unsigned int *)t150) = 1;
    *((unsigned int *)t157) = 1;
    goto LAB73;

LAB74:    t170 = *((unsigned int *)t158);
    t171 = *((unsigned int *)t164);
    *((unsigned int *)t158) = (t170 | t171);
    t172 = (t119 + 4);
    t173 = (t150 + 4);
    t174 = *((unsigned int *)t172);
    t175 = (~(t174));
    t176 = *((unsigned int *)t119);
    t177 = (t176 & t175);
    t178 = *((unsigned int *)t173);
    t179 = (~(t178));
    t180 = *((unsigned int *)t150);
    t181 = (t180 & t179);
    t182 = (~(t177));
    t183 = (~(t181));
    t184 = *((unsigned int *)t164);
    *((unsigned int *)t164) = (t184 & t182);
    t185 = *((unsigned int *)t164);
    *((unsigned int *)t164) = (t185 & t183);
    goto LAB76;

LAB77:    *((unsigned int *)t186) = 1;
    goto LAB80;

LAB79:    t193 = (t186 + 4);
    *((unsigned int *)t186) = 1;
    *((unsigned int *)t193) = 1;
    goto LAB80;

LAB81:    t199 = (t0 + 1688U);
    t200 = *((char **)t199);
    t199 = ((char*)((ng6)));
    memset(t201, 0, 8);
    t202 = (t200 + 4);
    t203 = (t199 + 4);
    t204 = *((unsigned int *)t200);
    t205 = *((unsigned int *)t199);
    t206 = (t204 ^ t205);
    t207 = *((unsigned int *)t202);
    t208 = *((unsigned int *)t203);
    t209 = (t207 ^ t208);
    t210 = (t206 | t209);
    t211 = *((unsigned int *)t202);
    t212 = *((unsigned int *)t203);
    t213 = (t211 | t212);
    t214 = (~(t213));
    t215 = (t210 & t214);
    if (t215 != 0)
        goto LAB87;

LAB84:    if (t213 != 0)
        goto LAB86;

LAB85:    *((unsigned int *)t201) = 1;

LAB87:    memset(t217, 0, 8);
    t218 = (t201 + 4);
    t219 = *((unsigned int *)t218);
    t220 = (~(t219));
    t221 = *((unsigned int *)t201);
    t222 = (t221 & t220);
    t223 = (t222 & 1U);
    if (t223 != 0)
        goto LAB88;

LAB89:    if (*((unsigned int *)t218) != 0)
        goto LAB90;

LAB91:    t226 = *((unsigned int *)t186);
    t227 = *((unsigned int *)t217);
    t228 = (t226 | t227);
    *((unsigned int *)t225) = t228;
    t229 = (t186 + 4);
    t230 = (t217 + 4);
    t231 = (t225 + 4);
    t232 = *((unsigned int *)t229);
    t233 = *((unsigned int *)t230);
    t234 = (t232 | t233);
    *((unsigned int *)t231) = t234;
    t235 = *((unsigned int *)t231);
    t236 = (t235 != 0);
    if (t236 == 1)
        goto LAB92;

LAB93:
LAB94:    goto LAB83;

LAB86:    t216 = (t201 + 4);
    *((unsigned int *)t201) = 1;
    *((unsigned int *)t216) = 1;
    goto LAB87;

LAB88:    *((unsigned int *)t217) = 1;
    goto LAB91;

LAB90:    t224 = (t217 + 4);
    *((unsigned int *)t217) = 1;
    *((unsigned int *)t224) = 1;
    goto LAB91;

LAB92:    t237 = *((unsigned int *)t225);
    t238 = *((unsigned int *)t231);
    *((unsigned int *)t225) = (t237 | t238);
    t239 = (t186 + 4);
    t240 = (t217 + 4);
    t241 = *((unsigned int *)t239);
    t242 = (~(t241));
    t243 = *((unsigned int *)t186);
    t244 = (t243 & t242);
    t245 = *((unsigned int *)t240);
    t246 = (~(t245));
    t247 = *((unsigned int *)t217);
    t248 = (t247 & t246);
    t249 = (~(t244));
    t250 = (~(t248));
    t251 = *((unsigned int *)t231);
    *((unsigned int *)t231) = (t251 & t249);
    t252 = *((unsigned int *)t231);
    *((unsigned int *)t231) = (t252 & t250);
    goto LAB94;

LAB95:    *((unsigned int *)t253) = 1;
    goto LAB98;

LAB97:    t260 = (t253 + 4);
    *((unsigned int *)t253) = 1;
    *((unsigned int *)t260) = 1;
    goto LAB98;

LAB99:    t273 = *((unsigned int *)t261);
    t274 = *((unsigned int *)t267);
    *((unsigned int *)t261) = (t273 | t274);
    t275 = (t28 + 4);
    t276 = (t253 + 4);
    t277 = *((unsigned int *)t28);
    t278 = (~(t277));
    t279 = *((unsigned int *)t275);
    t280 = (~(t279));
    t281 = *((unsigned int *)t253);
    t282 = (~(t281));
    t283 = *((unsigned int *)t276);
    t284 = (~(t283));
    t285 = (t278 & t280);
    t286 = (t282 & t284);
    t287 = (~(t285));
    t288 = (~(t286));
    t289 = *((unsigned int *)t267);
    *((unsigned int *)t267) = (t289 & t287);
    t290 = *((unsigned int *)t267);
    *((unsigned int *)t267) = (t290 & t288);
    t291 = *((unsigned int *)t261);
    *((unsigned int *)t261) = (t291 & t287);
    t292 = *((unsigned int *)t261);
    *((unsigned int *)t261) = (t292 & t288);
    goto LAB101;

LAB102:
LAB105:    t299 = ((char*)((ng1)));
    t300 = (t0 + 2248);
    xsi_vlogvar_assign_value(t300, t299, 0, 0, 1);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    xsi_vlogvar_assign_value(t2, t3, 0, 0, 4);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    xsi_vlogtype_sign_extend(t301, 64, t3, 32);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    xsi_vlogtype_sign_extend(t302, 64, t4, 32);
    xsi_vlog_signed_multiply(t303, 64, t301, 64, t302, 64);
    t2 = (t0 + 2888);
    xsi_vlogvar_assign_value(t2, t303, 0, 0, 64);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    xsi_vlogtype_zero_extend(t301, 64, t3, 32);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    xsi_vlogtype_zero_extend(t302, 64, t4, 32);
    xsi_vlog_unsigned_multiply(t303, 64, t301, 64, t302, 64);
    t2 = (t0 + 3048);
    xsi_vlogvar_assign_value(t2, t303, 0, 0, 64);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    memset(t36, 0, 8);
    xsi_vlog_signed_divide(t36, 32, t3, 32, t4, 32);
    t2 = (t0 + 3208);
    xsi_vlogvar_assign_value(t2, t36, 0, 0, 32);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    memset(t36, 0, 8);
    xsi_vlog_signed_mod(t36, 32, t3, 32, t4, 32);
    t2 = (t0 + 3368);
    xsi_vlogvar_assign_value(t2, t36, 0, 0, 32);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_divide(t36, 32, t3, 32, t4, 32);
    t2 = (t0 + 3528);
    xsi_vlogvar_assign_value(t2, t36, 0, 0, 32);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t0 + 1528U);
    t4 = *((char **)t2);
    memset(t36, 0, 8);
    xsi_vlog_unsigned_mod(t36, 32, t3, 32, t4, 32);
    t2 = (t0 + 3688);
    xsi_vlogvar_assign_value(t2, t36, 0, 0, 32);
    goto LAB104;

LAB106:    *((unsigned int *)t13) = 1;
    goto LAB109;

LAB111:    t16 = *((unsigned int *)t13);
    t17 = *((unsigned int *)t27);
    *((unsigned int *)t13) = (t16 | t17);
    t18 = *((unsigned int *)t26);
    t19 = *((unsigned int *)t27);
    *((unsigned int *)t26) = (t18 | t19);
    goto LAB110;

LAB112:    t40 = *((unsigned int *)t28);
    t41 = *((unsigned int *)t34);
    *((unsigned int *)t28) = (t40 | t41);
    t35 = (t4 + 4);
    t37 = (t13 + 4);
    t42 = *((unsigned int *)t35);
    t43 = (~(t42));
    t44 = *((unsigned int *)t4);
    t110 = (t44 & t43);
    t45 = *((unsigned int *)t37);
    t46 = (~(t45));
    t47 = *((unsigned int *)t13);
    t114 = (t47 & t46);
    t48 = (~(t110));
    t49 = (~(t114));
    t50 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t50 & t48);
    t54 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t54 & t49);
    goto LAB114;

LAB115:
LAB118:    t51 = (t0 + 1688U);
    t53 = *((char **)t51);
    t51 = ((char*)((ng1)));
    memset(t67, 0, 8);
    t59 = (t53 + 4);
    t60 = (t51 + 4);
    t62 = *((unsigned int *)t53);
    t63 = *((unsigned int *)t51);
    t64 = (t62 ^ t63);
    t70 = *((unsigned int *)t59);
    t71 = *((unsigned int *)t60);
    t72 = (t70 ^ t71);
    t73 = (t64 | t72);
    t74 = *((unsigned int *)t59);
    t75 = *((unsigned int *)t60);
    t76 = (t74 | t75);
    t77 = (~(t76));
    t78 = (t73 & t77);
    if (t78 != 0)
        goto LAB122;

LAB119:    if (t76 != 0)
        goto LAB121;

LAB120:    *((unsigned int *)t67) = 1;

LAB122:    memset(t83, 0, 8);
    t66 = (t67 + 4);
    t79 = *((unsigned int *)t66);
    t80 = (~(t79));
    t81 = *((unsigned int *)t67);
    t85 = (t81 & t80);
    t86 = (t85 & 1U);
    if (t86 != 0)
        goto LAB123;

LAB124:    if (*((unsigned int *)t66) != 0)
        goto LAB125;

LAB126:    t69 = (t83 + 4);
    t87 = *((unsigned int *)t83);
    t88 = (!(t87));
    t89 = *((unsigned int *)t69);
    t92 = (t88 || t89);
    if (t92 > 0)
        goto LAB127;

LAB128:    memcpy(t134, t83, 8);

LAB129:    memset(t52, 0, 8);
    t133 = (t134 + 4);
    t146 = *((unsigned int *)t133);
    t147 = (~(t146));
    t148 = *((unsigned int *)t134);
    t152 = (t148 & t147);
    t153 = (t152 & 1U);
    if (t153 != 0)
        goto LAB141;

LAB142:    if (*((unsigned int *)t133) != 0)
        goto LAB143;

LAB144:    t136 = (t52 + 4);
    t154 = *((unsigned int *)t52);
    t155 = *((unsigned int *)t136);
    t156 = (t154 || t155);
    if (t156 > 0)
        goto LAB145;

LAB146:    t159 = *((unsigned int *)t52);
    t160 = (~(t159));
    t161 = *((unsigned int *)t136);
    t165 = (t160 || t161);
    if (t165 > 0)
        goto LAB147;

LAB148:    if (*((unsigned int *)t136) > 0)
        goto LAB149;

LAB150:    if (*((unsigned int *)t52) > 0)
        goto LAB151;

LAB152:    memcpy(t36, t151, 8);

LAB153:    t157 = (t0 + 3848);
    xsi_vlogvar_assign_value(t157, t36, 0, 0, 4);
    t2 = ((char*)((ng0)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB117;

LAB121:    t65 = (t67 + 4);
    *((unsigned int *)t67) = 1;
    *((unsigned int *)t65) = 1;
    goto LAB122;

LAB123:    *((unsigned int *)t83) = 1;
    goto LAB126;

LAB125:    t68 = (t83 + 4);
    *((unsigned int *)t83) = 1;
    *((unsigned int *)t68) = 1;
    goto LAB126;

LAB127:    t82 = (t0 + 1688U);
    t84 = *((char **)t82);
    t82 = ((char*)((ng4)));
    memset(t91, 0, 8);
    t90 = (t84 + 4);
    t95 = (t82 + 4);
    t93 = *((unsigned int *)t84);
    t94 = *((unsigned int *)t82);
    t98 = (t93 ^ t94);
    t99 = *((unsigned int *)t90);
    t100 = *((unsigned int *)t95);
    t101 = (t99 ^ t100);
    t102 = (t98 | t101);
    t103 = *((unsigned int *)t90);
    t104 = *((unsigned int *)t95);
    t107 = (t103 | t104);
    t108 = (~(t107));
    t109 = (t102 & t108);
    if (t109 != 0)
        goto LAB133;

LAB130:    if (t107 != 0)
        goto LAB132;

LAB131:    *((unsigned int *)t91) = 1;

LAB133:    memset(t119, 0, 8);
    t97 = (t91 + 4);
    t111 = *((unsigned int *)t97);
    t112 = (~(t111));
    t113 = *((unsigned int *)t91);
    t115 = (t113 & t112);
    t116 = (t115 & 1U);
    if (t116 != 0)
        goto LAB134;

LAB135:    if (*((unsigned int *)t97) != 0)
        goto LAB136;

LAB137:    t117 = *((unsigned int *)t83);
    t118 = *((unsigned int *)t119);
    t121 = (t117 | t118);
    *((unsigned int *)t134) = t121;
    t106 = (t83 + 4);
    t120 = (t119 + 4);
    t126 = (t134 + 4);
    t122 = *((unsigned int *)t106);
    t123 = *((unsigned int *)t120);
    t124 = (t122 | t123);
    *((unsigned int *)t126) = t124;
    t125 = *((unsigned int *)t126);
    t128 = (t125 != 0);
    if (t128 == 1)
        goto LAB138;

LAB139:
LAB140:    goto LAB129;

LAB132:    t96 = (t91 + 4);
    *((unsigned int *)t91) = 1;
    *((unsigned int *)t96) = 1;
    goto LAB133;

LAB134:    *((unsigned int *)t119) = 1;
    goto LAB137;

LAB136:    t105 = (t119 + 4);
    *((unsigned int *)t119) = 1;
    *((unsigned int *)t105) = 1;
    goto LAB137;

LAB138:    t129 = *((unsigned int *)t134);
    t130 = *((unsigned int *)t126);
    *((unsigned int *)t134) = (t129 | t130);
    t127 = (t83 + 4);
    t132 = (t119 + 4);
    t131 = *((unsigned int *)t127);
    t137 = (~(t131));
    t138 = *((unsigned int *)t83);
    t177 = (t138 & t137);
    t139 = *((unsigned int *)t132);
    t140 = (~(t139));
    t141 = *((unsigned int *)t119);
    t181 = (t141 & t140);
    t142 = (~(t177));
    t143 = (~(t181));
    t144 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t144 & t142);
    t145 = *((unsigned int *)t126);
    *((unsigned int *)t126) = (t145 & t143);
    goto LAB140;

LAB141:    *((unsigned int *)t52) = 1;
    goto LAB144;

LAB143:    t135 = (t52 + 4);
    *((unsigned int *)t52) = 1;
    *((unsigned int *)t135) = 1;
    goto LAB144;

LAB145:    t149 = ((char*)((ng7)));
    goto LAB146;

LAB147:    t151 = ((char*)((ng8)));
    goto LAB148;

LAB149:    xsi_vlog_unsigned_bit_combine(t36, 32, t149, 32, t151, 32);
    goto LAB153;

LAB151:    memcpy(t36, t149, 8);
    goto LAB153;

LAB154:
LAB157:    t4 = (t0 + 3848);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = ((char*)((ng1)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_minus(t13, 32, t11, 4, t12, 32);
    t26 = (t0 + 3848);
    xsi_vlogvar_assign_value(t26, t13, 0, 0, 4);
    goto LAB156;

}

static void Always_52_2(char *t0)
{
    char t6[8];
    char t32[8];
    char t54[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    char *t47;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    char *t66;

LAB0:    t1 = (t0 + 5264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = (t0 + 5616);
    *((int *)t2) = 1;
    t3 = (t0 + 5296);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:
LAB5:    t4 = (t0 + 1848U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng0)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:
LAB13:    t28 = (t0 + 2728);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = ((char*)((ng1)));
    memset(t32, 0, 8);
    t33 = (t30 + 4);
    t34 = (t31 + 4);
    t35 = *((unsigned int *)t30);
    t36 = *((unsigned int *)t31);
    t37 = (t35 ^ t36);
    t38 = *((unsigned int *)t33);
    t39 = *((unsigned int *)t34);
    t40 = (t38 ^ t39);
    t41 = (t37 | t40);
    t42 = *((unsigned int *)t33);
    t43 = *((unsigned int *)t34);
    t44 = (t42 | t43);
    t45 = (~(t44));
    t46 = (t41 & t45);
    if (t46 != 0)
        goto LAB17;

LAB14:    if (t44 != 0)
        goto LAB16;

LAB15:    *((unsigned int *)t32) = 1;

LAB17:    t48 = (t32 + 4);
    t49 = *((unsigned int *)t48);
    t50 = (~(t49));
    t51 = *((unsigned int *)t32);
    t52 = (t51 & t50);
    t53 = (t52 != 0);
    if (t53 > 0)
        goto LAB18;

LAB19:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB25;

LAB22:    if (t18 != 0)
        goto LAB24;

LAB23:    *((unsigned int *)t6) = 1;

LAB25:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB26;

LAB27:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng5)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB33;

LAB30:    if (t18 != 0)
        goto LAB32;

LAB31:    *((unsigned int *)t6) = 1;

LAB33:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB34;

LAB35:    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng6)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    t8 = (t5 + 4);
    t9 = *((unsigned int *)t4);
    t10 = *((unsigned int *)t5);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB41;

LAB38:    if (t18 != 0)
        goto LAB40;

LAB39:    *((unsigned int *)t6) = 1;

LAB41:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB42;

LAB43:
LAB44:
LAB36:
LAB28:
LAB20:    goto LAB12;

LAB16:    t47 = (t32 + 4);
    *((unsigned int *)t32) = 1;
    *((unsigned int *)t47) = 1;
    goto LAB17;

LAB18:
LAB21:    t55 = (t0 + 2888);
    t56 = (t55 + 56U);
    t57 = *((char **)t56);
    memset(t54, 0, 8);
    t58 = (t54 + 4);
    t59 = (t57 + 4);
    t60 = *((unsigned int *)t57);
    t61 = (t60 >> 0);
    *((unsigned int *)t54) = t61;
    t62 = *((unsigned int *)t59);
    t63 = (t62 >> 0);
    *((unsigned int *)t58) = t63;
    t64 = *((unsigned int *)t54);
    *((unsigned int *)t54) = (t64 & 4294967295U);
    t65 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t65 & 4294967295U);
    t66 = (t0 + 2408);
    xsi_vlogvar_assign_value(t66, t54, 0, 0, 32);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 8);
    t8 = (t4 + 12);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 4294967295U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 4294967295U);
    t21 = (t0 + 2568);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 32);
    goto LAB20;

LAB24:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB25;

LAB26:
LAB29:    t28 = (t0 + 3048);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memset(t32, 0, 8);
    t31 = (t32 + 4);
    t33 = (t30 + 4);
    t35 = *((unsigned int *)t30);
    t36 = (t35 >> 0);
    *((unsigned int *)t32) = t36;
    t37 = *((unsigned int *)t33);
    t38 = (t37 >> 0);
    *((unsigned int *)t31) = t38;
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t39 & 4294967295U);
    t40 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t40 & 4294967295U);
    t34 = (t0 + 2408);
    xsi_vlogvar_assign_value(t34, t32, 0, 0, 32);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t6, 0, 8);
    t5 = (t6 + 4);
    t7 = (t4 + 8);
    t8 = (t4 + 12);
    t9 = *((unsigned int *)t7);
    t10 = (t9 >> 0);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 0);
    *((unsigned int *)t5) = t12;
    t13 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t13 & 4294967295U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 4294967295U);
    t21 = (t0 + 2568);
    xsi_vlogvar_assign_value(t21, t6, 0, 0, 32);
    goto LAB28;

LAB32:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB33;

LAB34:
LAB37:    t28 = (t0 + 3208);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t0 + 2408);
    xsi_vlogvar_assign_value(t31, t30, 0, 0, 32);
    t2 = (t0 + 3368);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    goto LAB36;

LAB40:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB41;

LAB42:
LAB45:    t28 = (t0 + 3528);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t0 + 2408);
    xsi_vlogvar_assign_value(t31, t30, 0, 0, 32);
    t2 = (t0 + 3688);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2568);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 32);
    goto LAB44;

}


extern void work_m_00000000003025047487_1907281518_init()
{
	static char *pe[] = {(void *)Cont_22_0,(void *)Always_23_1,(void *)Always_52_2};
	xsi_register_didat("work_m_00000000003025047487_1907281518", "isim/mips.exe.sim/work/m_00000000003025047487_1907281518.didat");
	xsi_register_executes(pe);
}
