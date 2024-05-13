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
    work_m_00000000004216918379_3190593924_init();
    work_m_00000000002009169208_3879582996_init();
    work_m_00000000004168086521_2612867933_init();
    work_m_00000000003223416788_4200066646_init();
    work_m_00000000001125735882_0220477524_init();
    work_m_00000000000366848958_1468365904_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000366848958_1468365904");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
