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
static const char *ng0 = "D:/Studia/UCiSW/sparta lab3 15_01_2015/ucisw/VGA.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_2546418145_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_3905759485_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_3908131327_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );
char *ieee_p_3620187407_sub_436351764_3965413181(char *, char *, char *, char *, int );


static void work_a_3215043537_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5176);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 2632U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t5);
    t3 = (t0 + 5304);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast(t3);
    goto LAB3;

}

static void work_a_3215043537_3212880686_p_1(char *t0)
{
    char t13[16];
    char t22[16];
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
    unsigned char t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t21;
    int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2592U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5192);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 2952U);
    t4 = *((char **)t3);
    t3 = (t0 + 8508U);
    t5 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t4, t3, 799);
    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 8508U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t3, t1, 1);
    t6 = (t13 + 12U);
    t14 = *((unsigned int *)t6);
    t15 = (1U * t14);
    t2 = (10U != t15);
    if (t2 == 1)
        goto LAB13;

LAB14:    t7 = (t0 + 5368);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 10U);
    xsi_driver_first_trans_fast(t7);

LAB6:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 8508U);
    t5 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t3, t1, 48);
    if (t5 == 1)
        goto LAB18;

LAB19:    t2 = (unsigned char)0;

LAB20:    if (t2 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 8578);
    t4 = (t0 + 5496);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 10U);
    xsi_driver_first_trans_fast_port(t4);

LAB16:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 8492U);
    t5 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t3, t1, 29);
    if (t5 == 1)
        goto LAB26;

LAB27:    t2 = (unsigned char)0;

LAB28:    if (t2 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 8588);
    t4 = (t0 + 5560);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 9U);
    xsi_driver_first_trans_fast_port(t4);

LAB24:    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t6 = (t0 + 8558);
    t8 = (t0 + 5368);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t6, 10U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 8492U);
    t2 = ieee_p_3620187407_sub_2546418145_3965413181(IEEE_P_3620187407, t3, t1, 520);
    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 8492U);
    t4 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t13, t3, t1, 1);
    t6 = (t13 + 12U);
    t14 = *((unsigned int *)t6);
    t15 = (1U * t14);
    t2 = (10U != t15);
    if (t2 == 1)
        goto LAB11;

LAB12:    t7 = (t0 + 5432);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 10U);
    xsi_driver_first_trans_fast(t7);

LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(60, ng0);
    t4 = (t0 + 8568);
    t7 = (t0 + 5432);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 10U);
    xsi_driver_first_trans_fast(t7);
    goto LAB9;

LAB11:    xsi_size_not_matching(10U, t15, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(10U, t15, 0);
    goto LAB14;

LAB15:    xsi_set_current_line(73, ng0);
    t7 = (t0 + 2952U);
    t8 = *((char **)t7);
    t7 = (t0 + 8508U);
    t9 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t13, t8, t7, 48);
    t10 = (t13 + 12U);
    t14 = *((unsigned int *)t10);
    t15 = (1U * t14);
    t17 = (10U != t15);
    if (t17 == 1)
        goto LAB21;

LAB22:    t11 = (t0 + 5496);
    t12 = (t11 + 56U);
    t18 = *((char **)t12);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t9, 10U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB16;

LAB18:    t4 = (t0 + 2952U);
    t6 = *((char **)t4);
    t4 = (t0 + 8508U);
    t16 = ieee_p_3620187407_sub_3905759485_3965413181(IEEE_P_3620187407, t6, t4, 687);
    t2 = t16;
    goto LAB20;

LAB21:    xsi_size_not_matching(10U, t15, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(79, ng0);
    t7 = (t0 + 2792U);
    t8 = *((char **)t7);
    t14 = (9 - 8);
    t15 = (t14 * 1U);
    t21 = (0 + t15);
    t7 = (t8 + t21);
    t9 = (t22 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 8;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t23 = (0 - 8);
    t24 = (t23 * -1);
    t24 = (t24 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t24;
    t10 = ieee_p_3620187407_sub_436351764_3965413181(IEEE_P_3620187407, t13, t7, t22, 29);
    t11 = (t13 + 12U);
    t24 = *((unsigned int *)t11);
    t25 = (1U * t24);
    t17 = (9U != t25);
    if (t17 == 1)
        goto LAB29;

LAB30:    t12 = (t0 + 5560);
    t18 = (t12 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t26 = *((char **)t20);
    memcpy(t26, t10, 9U);
    xsi_driver_first_trans_fast_port(t12);
    goto LAB24;

LAB26:    t4 = (t0 + 2792U);
    t6 = *((char **)t4);
    t4 = (t0 + 8492U);
    t16 = ieee_p_3620187407_sub_3905759485_3965413181(IEEE_P_3620187407, t6, t4, 509);
    t2 = t16;
    goto LAB28;

LAB29:    xsi_size_not_matching(9U, t25, 0);
    goto LAB30;

}

static void work_a_3215043537_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 8508U);
    t3 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t2, t1, 704);
    if (t3 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 5624);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 8492U);
    t3 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t2, t1, 519);
    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 5688);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    t1 = (t0 + 5208);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(93, ng0);
    t4 = (t0 + 5624);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB3;

LAB5:    xsi_set_current_line(99, ng0);
    t4 = (t0 + 5688);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    goto LAB6;

}

static void work_a_3215043537_3212880686_p_3(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;

LAB0:    xsi_set_current_line(107, ng0);
    t4 = (t0 + 2952U);
    t5 = *((char **)t4);
    t4 = (t0 + 8508U);
    t6 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t5, t4, 48);
    if (t6 == 1)
        goto LAB11;

LAB12:    t3 = (unsigned char)0;

LAB13:    if (t3 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(112, ng0);
    t4 = (t0 + 5752);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(113, ng0);
    t4 = (t0 + 5816);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(114, ng0);
    t4 = (t0 + 5880);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);

LAB3:    t4 = (t0 + 5224);
    *((int *)t4) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(108, ng0);
    t16 = (t0 + 1352U);
    t17 = *((char **)t16);
    t18 = (0 - 2);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t16 = (t17 + t21);
    t22 = *((unsigned char *)t16);
    t23 = (t0 + 5752);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t22;
    xsi_driver_first_trans_fast_port(t23);
    xsi_set_current_line(109, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t18 = (1 - 2);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t4 = (t5 + t21);
    t1 = *((unsigned char *)t4);
    t7 = (t0 + 5816);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(110, ng0);
    t4 = (t0 + 1352U);
    t5 = *((char **)t4);
    t18 = (2 - 2);
    t19 = (t18 * -1);
    t20 = (1U * t19);
    t21 = (0 + t20);
    t4 = (t5 + t21);
    t1 = *((unsigned char *)t4);
    t7 = (t0 + 5880);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t13 = *((char **)t11);
    *((unsigned char *)t13) = t1;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    t13 = (t0 + 2792U);
    t14 = *((char **)t13);
    t13 = (t0 + 8492U);
    t15 = ieee_p_3620187407_sub_3905759485_3965413181(IEEE_P_3620187407, t14, t13, 509);
    t1 = t15;
    goto LAB7;

LAB8:    t10 = (t0 + 2792U);
    t11 = *((char **)t10);
    t10 = (t0 + 8492U);
    t12 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t11, t10, 29);
    t2 = t12;
    goto LAB10;

LAB11:    t7 = (t0 + 2952U);
    t8 = *((char **)t7);
    t7 = (t0 + 8508U);
    t9 = ieee_p_3620187407_sub_3905759485_3965413181(IEEE_P_3620187407, t8, t7, 687);
    t3 = t9;
    goto LAB13;

}


extern void work_a_3215043537_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3215043537_3212880686_p_0,(void *)work_a_3215043537_3212880686_p_1,(void *)work_a_3215043537_3212880686_p_2,(void *)work_a_3215043537_3212880686_p_3};
	xsi_register_didat("work_a_3215043537_3212880686", "isim/testBench_isim_beh.exe.sim/work/a_3215043537_3212880686.didat");
	xsi_register_executes(pe);
}
