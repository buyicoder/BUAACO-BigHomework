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
static const char *ng0 = "E:/COexcercise/p5/p5_strong/IFU.v";
static unsigned int ng1[] = {4U, 0U};
static unsigned int ng2[] = {12288U, 0U};
static int ng3[] = {1, 0};



static void Cont_16_0(char *t0)
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

LAB0:    t1 = (t0 + 3968U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(16, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng1)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 4880);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 8);
    xsi_driver_vfirst_trans(t7, 0, 31);
    t12 = (t0 + 4784);
    *((int *)t12) = 1;

LAB1:    return;
}

static void Always_18_1(char *t0)
{
    char t13[8];
    char t26[8];
    char t27[8];
    char t46[8];
    char t47[8];
    char t65[8];
    char t66[8];
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
    char *t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    char *t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    char *t59;
    char *t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
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

LAB0:    t1 = (t0 + 4216U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 4800);
    *((int *)t2) = 1;
    t3 = (t0 + 4248);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(18, ng0);

LAB5:    xsi_set_current_line(19, ng0);
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

LAB7:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 2168U);
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
        goto LAB11;

LAB10:    if (t18 != 0)
        goto LAB12;

LAB13:    t12 = (t13 + 4);
    t21 = *((unsigned int *)t12);
    t22 = (~(t21));
    t23 = *((unsigned int *)t13);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB14;

LAB15:
LAB16:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(19, ng0);

LAB9:    xsi_set_current_line(20, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 32, 0LL);
    goto LAB8;

LAB11:    *((unsigned int *)t13) = 1;
    goto LAB13;

LAB12:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB13;

LAB14:    xsi_set_current_line(22, ng0);

LAB17:    xsi_set_current_line(23, ng0);
    t28 = (t0 + 1688U);
    t29 = *((char **)t28);
    memset(t27, 0, 8);
    t28 = (t29 + 4);
    t30 = *((unsigned int *)t28);
    t31 = (~(t30));
    t32 = *((unsigned int *)t29);
    t33 = (t32 & t31);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB18;

LAB19:    if (*((unsigned int *)t28) != 0)
        goto LAB20;

LAB21:    t36 = (t27 + 4);
    t37 = *((unsigned int *)t27);
    t38 = *((unsigned int *)t36);
    t39 = (t37 || t38);
    if (t39 > 0)
        goto LAB22;

LAB23:    t42 = *((unsigned int *)t27);
    t43 = (~(t42));
    t44 = *((unsigned int *)t36);
    t45 = (t43 || t44);
    if (t45 > 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t36) > 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t27) > 0)
        goto LAB28;

LAB29:    memcpy(t26, t46, 8);

LAB30:    t78 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t78, t26, 0, 0, 32, 0LL);
    goto LAB16;

LAB18:    *((unsigned int *)t27) = 1;
    goto LAB21;

LAB20:    t35 = (t27 + 4);
    *((unsigned int *)t27) = 1;
    *((unsigned int *)t35) = 1;
    goto LAB21;

LAB22:    t40 = (t0 + 1848U);
    t41 = *((char **)t40);
    goto LAB23;

LAB24:    t40 = (t0 + 1528U);
    t48 = *((char **)t40);
    memset(t47, 0, 8);
    t40 = (t48 + 4);
    t49 = *((unsigned int *)t40);
    t50 = (~(t49));
    t51 = *((unsigned int *)t48);
    t52 = (t51 & t50);
    t53 = (t52 & 1U);
    if (t53 != 0)
        goto LAB31;

LAB32:    if (*((unsigned int *)t40) != 0)
        goto LAB33;

LAB34:    t55 = (t47 + 4);
    t56 = *((unsigned int *)t47);
    t57 = *((unsigned int *)t55);
    t58 = (t56 || t57);
    if (t58 > 0)
        goto LAB35;

LAB36:    t61 = *((unsigned int *)t47);
    t62 = (~(t61));
    t63 = *((unsigned int *)t55);
    t64 = (t62 || t63);
    if (t64 > 0)
        goto LAB37;

LAB38:    if (*((unsigned int *)t55) > 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t47) > 0)
        goto LAB41;

LAB42:    memcpy(t46, t65, 8);

LAB43:    goto LAB25;

LAB26:    xsi_vlog_unsigned_bit_combine(t26, 32, t41, 32, t46, 32);
    goto LAB30;

LAB28:    memcpy(t26, t41, 8);
    goto LAB30;

LAB31:    *((unsigned int *)t47) = 1;
    goto LAB34;

LAB33:    t54 = (t47 + 4);
    *((unsigned int *)t47) = 1;
    *((unsigned int *)t54) = 1;
    goto LAB34;

LAB35:    t59 = (t0 + 2488U);
    t60 = *((char **)t59);
    goto LAB36;

LAB37:    t59 = (t0 + 1368U);
    t67 = *((char **)t59);
    memset(t66, 0, 8);
    t59 = (t67 + 4);
    t68 = *((unsigned int *)t59);
    t69 = (~(t68));
    t70 = *((unsigned int *)t67);
    t71 = (t70 & t69);
    t72 = (t71 & 1U);
    if (t72 != 0)
        goto LAB44;

LAB45:    if (*((unsigned int *)t59) != 0)
        goto LAB46;

LAB47:    t74 = (t66 + 4);
    t75 = *((unsigned int *)t66);
    t76 = *((unsigned int *)t74);
    t77 = (t75 || t76);
    if (t77 > 0)
        goto LAB48;

LAB49:    t80 = *((unsigned int *)t66);
    t81 = (~(t80));
    t82 = *((unsigned int *)t74);
    t83 = (t81 || t82);
    if (t83 > 0)
        goto LAB50;

LAB51:    if (*((unsigned int *)t74) > 0)
        goto LAB52;

LAB53:    if (*((unsigned int *)t66) > 0)
        goto LAB54;

LAB55:    memcpy(t65, t84, 8);

LAB56:    goto LAB38;

LAB39:    xsi_vlog_unsigned_bit_combine(t46, 32, t60, 32, t65, 32);
    goto LAB43;

LAB41:    memcpy(t46, t60, 8);
    goto LAB43;

LAB44:    *((unsigned int *)t66) = 1;
    goto LAB47;

LAB46:    t73 = (t66 + 4);
    *((unsigned int *)t66) = 1;
    *((unsigned int *)t73) = 1;
    goto LAB47;

LAB48:    t78 = (t0 + 2328U);
    t79 = *((char **)t78);
    goto LAB49;

LAB50:    t78 = (t0 + 2648U);
    t84 = *((char **)t78);
    goto LAB51;

LAB52:    xsi_vlog_unsigned_bit_combine(t65, 32, t79, 32, t84, 32);
    goto LAB56;

LAB54:    memcpy(t65, t79, 8);
    goto LAB56;

}

static void Initial_29_2(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 3048);
    xsi_vlogvar_wait_assign_value(t2, t1, 0, 0, 32, 0LL);

LAB1:    return;
}


extern void work_m_00000000004031385609_3224323566_init()
{
	static char *pe[] = {(void *)Cont_16_0,(void *)Always_18_1,(void *)Initial_29_2};
	xsi_register_didat("work_m_00000000004031385609_3224323566", "isim/tb_isim_beh.exe.sim/work/m_00000000004031385609_3224323566.didat");
	xsi_register_executes(pe);
}
