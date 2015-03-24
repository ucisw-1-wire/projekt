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
static const char *ng0 = "D:/Studia/UCiSW/PROJEKT/v1/v1_16.03.2015/modul.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3963342394_3212880686_p_0(char *t0)
{
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t14;
    unsigned int t15;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t3 = (t0 + 1512U);
    t4 = *((char **)t3);
    t3 = (t0 + 4888U);
    t5 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t4, t3, 49);
    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 4888U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t3, t1, 1);
    t6 = (t13 + 12U);
    t14 = *((unsigned int *)t6);
    t15 = (1U * t14);
    t2 = (6U != t15);
    if (t2 == 1)
        goto LAB13;

LAB14:    t7 = (t0 + 3072);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 6U);
    xsi_driver_first_trans_fast(t7);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(53, ng0);
    t6 = (t0 + 4926);
    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t6, 6U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 4872U);
    t2 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t1, 70);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t1 = (t0 + 4872U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t3, t1, 1);
    t6 = (t13 + 12U);
    t14 = *((unsigned int *)t6);
    t15 = (1U * t14);
    t2 = (7U != t15);
    if (t2 == 1)
        goto LAB11;

LAB12:    t7 = (t0 + 3136);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 7U);
    xsi_driver_first_trans_fast(t7);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 4932);
    t7 = (t0 + 3136);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 7U);
    xsi_driver_first_trans_fast(t7);
    goto LAB9;

LAB11:    xsi_size_not_matching(7U, t15, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(6U, t15, 0);
    goto LAB14;

}


extern void work_a_3963342394_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3963342394_3212880686_p_0};
	xsi_register_didat("work_a_3963342394_3212880686", "isim/modulTB_isim_beh.exe.sim/work/a_3963342394_3212880686.didat");
	xsi_register_executes(pe);
}
