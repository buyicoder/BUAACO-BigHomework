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
static const char *ng0 = "E:/COexcercise/p4/P4/IFU.v";
static unsigned int ng1[] = {4U, 0U};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {14, 0};
static unsigned int ng4[] = {12288U, 0U};



static void Cont_30_0(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 3808U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2888);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 5248);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 8);
    xsi_driver_vfirst_trans(t7, 0, 31);
    t12 = (t0 + 5120);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Cont_32_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t14[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t15;
    char *t16;
    char *t17;
    char *t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    t1 = (t0 + 4056U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng2)));
    t5 = (t0 + 2008U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t4 + 4);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t6);
    t9 = (t8 >> 0);
    *((unsigned int *)t4) = t9;
    t10 = *((unsigned int *)t7);
    t11 = (t10 >> 0);
    *((unsigned int *)t5) = t11;
    t12 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t12 & 65535U);
    t13 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t13 & 65535U);
    t15 = ((char*)((ng3)));
    t16 = (t0 + 2008U);
    t17 = *((char **)t16);
    memset(t18, 0, 8);
    t16 = (t18 + 4);
    t19 = (t17 + 4);
    t20 = *((unsigned int *)t17);
    t21 = (t20 >> 15);
    t22 = (t21 & 1);
    *((unsigned int *)t18) = t22;
    t23 = *((unsigned int *)t19);
    t24 = (t23 >> 15);
    t25 = (t24 & 1);
    *((unsigned int *)t16) = t25;
    xsi_vlog_mul_concat(t14, 14, 1, t15, 1U, t18, 1);
    xsi_vlogtype_concat(t3, 32, 32, 3U, t14, 14, t4, 16, t2, 2);
    t26 = (t0 + 5312);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t3, 8);
    xsi_driver_vfirst_trans(t26, 0, 31);
    t31 = (t0 + 5136);
    *((int *)t31) = 1;

LAB1:    return;
}

static void Cont_33_2(char *t0)
{
    char t5[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4304U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t0 + 2168U);
    t4 = *((char **)t2);
    memset(t5, 0, 8);
    xsi_vlog_unsigned_add(t5, 32, t3, 32, t4, 32);
    t2 = (t0 + 5376);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t10 = (t0 + 5152);
    *((int *)t10) = 1;

LAB1:    return;
}

static void Always_35_3(char *t0)
{
    char t13[8];
    char t14[8];
    char t22[8];
    char t23[8];
    char t35[8];
    char t38[8];
    char t48[8];
    char t64[8];
    char t65[8];
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
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
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
    char *t36;
    char *t37;
    char *t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    char *t49;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    char *t84;

LAB0:    t1 = (t0 + 4552U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 5168);
    *((int *)t2) = 1;
    t3 = (t0 + 4584);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(35, ng0);

LAB5:    xsi_set_current_line(36, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(39, ng0);

LAB10:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    memset(t14, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB11;

LAB12:    if (*((unsigned int *)t2) != 0)
        goto LAB13;

LAB14:    t5 = (t14 + 4);
    t15 = *((unsigned int *)t14);
    t16 = *((unsigned int *)t5);
    t17 = (t15 || t16);
    if (t17 > 0)
        goto LAB15;

LAB16:    t18 = *((unsigned int *)t14);
    t19 = (~(t18));
    t20 = *((unsigned int *)t5);
    t21 = (t19 || t20);
    if (t21 > 0)
        goto LAB17;

LAB18:    if (*((unsigned int *)t5) > 0)
        goto LAB19;

LAB20:    if (*((unsigned int *)t14) > 0)
        goto LAB21;

LAB22:    memcpy(t13, t22, 8);

LAB23:    t78 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t78, t13, 0, 0, 32, 0LL);

LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(36, ng0);

LAB9:    xsi_set_current_line(37, ng0);
    t11 = ((char*)((ng4)));
    t12 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB8;

LAB11:    *((unsigned int *)t14) = 1;
    goto LAB14;

LAB13:    t4 = (t14 + 4);
    *((unsigned int *)t14) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB14;

LAB15:    t11 = (t0 + 1848U);
    t12 = *((char **)t11);
    goto LAB16;

LAB17:    t11 = (t0 + 1528U);
    t24 = *((char **)t11);
    memset(t23, 0, 8);
    t11 = (t24 + 4);
    t25 = *((unsigned int *)t11);
    t26 = (~(t25));
    t27 = *((unsigned int *)t24);
    t28 = (t27 & t26);
    t29 = (t28 & 1U);
    if (t29 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t11) != 0)
        goto LAB26;

LAB27:    t31 = (t23 + 4);
    t32 = *((unsigned int *)t23);
    t33 = *((unsigned int *)t31);
    t34 = (t32 || t33);
    if (t34 > 0)
        goto LAB28;

LAB29:    t60 = *((unsigned int *)t23);
    t61 = (~(t60));
    t62 = *((unsigned int *)t31);
    t63 = (t61 || t62);
    if (t63 > 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t31) > 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t23) > 0)
        goto LAB34;

LAB35:    memcpy(t22, t64, 8);

LAB36:    goto LAB18;

LAB19:    xsi_vlog_unsigned_bit_combine(t13, 32, t12, 32, t22, 32);
    goto LAB23;

LAB21:    memcpy(t13, t12, 8);
    goto LAB23;

LAB24:    *((unsigned int *)t23) = 1;
    goto LAB27;

LAB26:    t30 = (t23 + 4);
    *((unsigned int *)t23) = 1;
    *((unsigned int *)t30) = 1;
    goto LAB27;

LAB28:    t36 = ((char*)((ng2)));
    t37 = ((char*)((ng2)));
    t39 = (t0 + 2008U);
    t40 = *((char **)t39);
    memset(t38, 0, 8);
    t39 = (t38 + 4);
    t41 = (t40 + 4);
    t42 = *((unsigned int *)t40);
    t43 = (t42 >> 0);
    *((unsigned int *)t38) = t43;
    t44 = *((unsigned int *)t41);
    t45 = (t44 >> 0);
    *((unsigned int *)t39) = t45;
    t46 = *((unsigned int *)t38);
    *((unsigned int *)t38) = (t46 & 67108863U);
    t47 = *((unsigned int *)t39);
    *((unsigned int *)t39) = (t47 & 67108863U);
    t49 = (t0 + 2888);
    t50 = (t49 + 56U);
    t51 = *((char **)t50);
    memset(t48, 0, 8);
    t52 = (t48 + 4);
    t53 = (t51 + 4);
    t54 = *((unsigned int *)t51);
    t55 = (t54 >> 28);
    *((unsigned int *)t48) = t55;
    t56 = *((unsigned int *)t53);
    t57 = (t56 >> 28);
    *((unsigned int *)t52) = t57;
    t58 = *((unsigned int *)t48);
    *((unsigned int *)t48) = (t58 & 15U);
    t59 = *((unsigned int *)t52);
    *((unsigned int *)t52) = (t59 & 15U);
    xsi_vlogtype_concat(t35, 32, 32, 4U, t48, 4, t38, 26, t37, 1, t36, 1);
    goto LAB29;

LAB30:    t66 = (t0 + 1368U);
    t67 = *((char **)t66);
    memset(t65, 0, 8);
    t66 = (t67 + 4);
    t68 = *((unsigned int *)t66);
    t69 = (~(t68));
    t70 = *((unsigned int *)t67);
    t71 = (t70 & t69);
    t72 = (t71 & 1U);
    if (t72 != 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t66) != 0)
        goto LAB39;

LAB40:    t74 = (t65 + 4);
    t75 = *((unsigned int *)t65);
    t76 = *((unsigned int *)t74);
    t77 = (t75 || t76);
    if (t77 > 0)
        goto LAB41;

LAB42:    t80 = *((unsigned int *)t65);
    t81 = (~(t80));
    t82 = *((unsigned int *)t74);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB43;

LAB44:    if (*((unsigned int *)t74) > 0)
        goto LAB45;

LAB46:    if (*((unsigned int *)t65) > 0)
        goto LAB47;

LAB48:    memcpy(t64, t84, 8);

LAB49:    goto LAB31;

LAB32:    xsi_vlog_unsigned_bit_combine(t22, 32, t35, 32, t64, 32);
    goto LAB36;

LAB34:    memcpy(t22, t35, 8);
    goto LAB36;

LAB37:    *((unsigned int *)t65) = 1;
    goto LAB40;

LAB39:    t73 = (t65 + 4);
    *((unsigned int *)t65) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB40;

LAB41:    t78 = (t0 + 2328U);
    t79 = *((char **)t78);
    goto LAB42;

LAB43:    t78 = (t0 + 2168U);
    t84 = *((char **)t78);
    goto LAB44;

LAB45:    xsi_vlog_unsigned_bit_combine(t64, 32, t79, 32, t84, 32);
    goto LAB49;

LAB47:    memcpy(t64, t79, 8);
    goto LAB49;

}

static void Initial_46_4(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = ((char*)((ng4)));
    t2 = (t0 + 2888);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);

LAB1:    return;
}


extern void work_m_00000000001166516202_3224323566_init()
{
	static char *pe[] = {(void *)Cont_30_0,(void *)Cont_32_1,(void *)Cont_33_2,(void *)Always_35_3,(void *)Initial_46_4};
	xsi_register_didat("work_m_00000000001166516202_3224323566", "isim/mips_isim_beh.exe.sim/work/m_00000000001166516202_3224323566.didat");
	xsi_register_executes(pe);
}
