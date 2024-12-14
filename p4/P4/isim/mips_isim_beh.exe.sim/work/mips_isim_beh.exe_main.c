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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004020270153_0467708899_init();
    work_m_00000000001166516202_3224323566_init();
    work_m_00000000000614500142_3092946469_init();
    work_m_00000000004057194527_1621229167_init();
    work_m_00000000002809407565_0886308060_init();
    work_m_00000000004090997398_2924402094_init();
    work_m_00000000002218859235_3877310806_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002218859235_3877310806");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}