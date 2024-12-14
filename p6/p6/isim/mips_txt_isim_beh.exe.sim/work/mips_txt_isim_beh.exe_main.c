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
    work_m_00000000001724088961_3224323566_init();
    work_m_00000000003750071870_1003191996_init();
    work_m_00000000000708664286_3092946469_init();
    work_m_00000000004057194527_1621229167_init();
    work_m_00000000000725140184_1264842247_init();
    work_m_00000000002174852164_0886308060_init();
    work_m_00000000004195531481_2957995619_init();
    work_m_00000000004090997398_2924402094_init();
    work_m_00000000000987708016_1984717613_init();
    work_m_00000000001557521071_3877310806_init();
    work_m_00000000001292392995_1131260308_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000001292392995_1131260308");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}