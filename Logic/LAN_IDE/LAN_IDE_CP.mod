MODEL
MODEL_VERSION "v1998.8";
DESIGN "LAN_IDE_CP";

/* port names and type */
INPUT S:PIN54 = A<2>;
INPUT S:PIN49 = A<5>;
INPUT S:PIN50 = A<4>;
INPUT S:PIN74 = A<15>;
INPUT S:PIN143 = RESET;
INPUT S:PIN80 = AS;
INPUT S:PIN83 = RW;
INPUT S:PIN57 = A<1>;
INPUT S:PIN86 = A<23>;
INPUT S:PIN87 = A<22>;
INPUT S:PIN88 = A<21>;
INPUT S:PIN92 = A<19>;
INPUT S:PIN95 = A<17>;
INPUT S:PIN94 = A<18>;
INPUT S:PIN97 = A<16>;
INPUT S:PIN91 = A<20>;
INPUT S:PIN82 = LDS;
INPUT S:PIN81 = UDS;
INPUT S:PIN104 = CFIN;
INPUT S:PIN52 = A<3>;
INPUT S:PIN51 = A<6>;
INPUT S:PIN75 = AUTOBOOT_OFF;
INPUT S:PIN103 = C1;
INPUT S:PIN102 = C3;
INPUT S:PIN98 = BERR;
INPUT S:PIN31 = CP_IRQ;
INPUT S:PIN33 = IDE_WAIT;
INPUT S:PIN111 = LAN_INT;
INPUT S:PIN60 = A<11>;
INPUT S:PIN61 = A<12>;
INPUT S:PIN64 = A<13>;
INPUT S:PIN66 = A<14>;
INPUT S:PIN53 = A<7>;
INPUT S:PIN56 = A<8>;
INPUT S:PIN58 = A<9>;
INPUT S:PIN59 = A<10>;
TRIOUT S:PIN118 = DQ<0>;
TRIOUT S:PIN129 = DQ<10>;
TRIOUT S:PIN115 = DQ<11>;
TRIOUT S:PIN130 = DQ<12>;
TRIOUT S:PIN113 = DQ<13>;
TRIOUT S:PIN131 = DQ<14>;
TRIOUT S:PIN112 = DQ<15>;
TRIOUT S:PIN117 = DQ<1>;
TRIOUT S:PIN68 = DQ<2>;
TRIOUT S:PIN119 = DQ<3>;
TRIOUT S:PIN124 = DQ<4>;
TRIOUT S:PIN38 = DQ<5>;
TRIOUT S:PIN126 = DQ<6>;
TRIOUT S:PIN125 = DQ<7>;
TRIOUT S:PIN128 = DQ<8>;
TRIOUT S:PIN116 = DQ<9>;
TRIOUT S:PIN19 = D<8>;
TRIOUT S:PIN40 = D<9>;
TRIOUT S:PIN41 = D<10>;
TRIOUT S:PIN43 = D<11>;
TRIOUT S:PIN44 = D<12>;
TRIOUT S:PIN45 = D<13>;
TRIOUT S:PIN46 = D<14>;
TRIOUT S:PIN48 = D<15>;
TRIOUT S:PIN2 = D<0>;
TRIOUT S:PIN17 = D<1>;
TRIOUT S:PIN39 = D<2>;
TRIOUT S:PIN15 = D<3>;
TRIOUT S:PIN21 = D<4>;
TRIOUT S:PIN20 = D<5>;
TRIOUT S:PIN14 = D<6>;
TRIOUT S:PIN16 = D<7>;
OUTPUT S:PIN133 = LAN_CS;
OUTPUT S:PIN71 = CP_RD;
OUTPUT S:PIN70 = CP_WE;
OUTPUT S:PIN27 = IDE_R;
OUTPUT S:PIN28 = IDE_W;
OUTPUT S:PIN35 = ROM_OE;
OUTPUT S:PIN134 = LAN_RD;
OUTPUT S:PIN132 = LAN_WRH;
OUTPUT S:PIN76 = LAN_WRL;
TRIOUT S:PIN107 = OWN;
TRIOUT S:PIN100 = OVR;
TRIOUT S:PIN32 = INT_OUT;
TRIOUT S:PIN85 = DTACK;
OUTPUT S:PIN4 = A_LAN<0>;
OUTPUT S:PIN25 = IDE_A<2>;
OUTPUT S:PIN138 = A_LAN<10>;
OUTPUT S:PIN139 = A_LAN<11>;
OUTPUT S:PIN137 = A_LAN<12>;
OUTPUT S:PIN136 = A_LAN<13>;
OUTPUT S:PIN3 = A_LAN<1>;
OUTPUT S:PIN6 = A_LAN<2>;
OUTPUT S:PIN5 = A_LAN<3>;
OUTPUT S:PIN9 = A_LAN<4>;
OUTPUT S:PIN7 = A_LAN<5>;
OUTPUT S:PIN11 = A_LAN<6>;
OUTPUT S:PIN10 = A_LAN<7>;
OUTPUT S:PIN24 = IDE_A<0>;
OUTPUT S:PIN140 = A_LAN<8>;
OUTPUT S:PIN26 = IDE_A<1>;
OUTPUT S:PIN142 = A_LAN<9>;
OUTPUT S:PIN34 = CP_CS;
OUTPUT S:PIN22 = IDE_CS<0>;
OUTPUT S:PIN23 = IDE_CS<1>;
OUTPUT S:PIN106 = SLAVE;
TRIOUT S:PIN110 = LAN_CFG<4>;
TRIOUT S:PIN13 = LAN_CFG<3>;
TRIOUT S:PIN135 = LAN_CFG<2>;
TRIOUT S:PIN12 = LAN_CFG<1>;
OUTPUT S:PIN105 = CFOUT;
OUTPUT S:PIN69 = ROM_B<1>;
OUTPUT S:PIN93 = ROM_B<0>;

/* timing arc definitions */
A<1>_A_LAN<0>_delay: DELAY A<1> A_LAN<0>;
A<11>_A_LAN<10>_delay: DELAY A<11> A_LAN<10>;
A<12>_A_LAN<11>_delay: DELAY A<12> A_LAN<11>;
A<13>_A_LAN<12>_delay: DELAY A<13> A_LAN<12>;
A<14>_A_LAN<13>_delay: DELAY A<14> A_LAN<13>;
A<2>_A_LAN<1>_delay: DELAY A<2> A_LAN<1>;
A<3>_A_LAN<2>_delay: DELAY A<3> A_LAN<2>;
A<4>_A_LAN<3>_delay: DELAY A<4> A_LAN<3>;
A<5>_A_LAN<4>_delay: DELAY A<5> A_LAN<4>;
A<6>_A_LAN<5>_delay: DELAY A<6> A_LAN<5>;
A<7>_A_LAN<6>_delay: DELAY A<7> A_LAN<6>;
A<8>_A_LAN<7>_delay: DELAY A<8> A_LAN<7>;
A<9>_A_LAN<8>_delay: DELAY A<9> A_LAN<8>;
A<10>_A_LAN<9>_delay: DELAY A<10> A_LAN<9>;
AS_CP_RD_delay: DELAY AS CP_RD;
AS_CP_WE_delay: DELAY AS CP_WE;
UDS_D<0>_delay: DELAY (ENABLE_HIGH) UDS D<0>;
RW_D<0>_delay: DELAY (ENABLE_HIGH) RW D<0>;
DQ<0>_D<0>_delay: DELAY (ENABLE_HIGH) DQ<0> D<0>;
LDS_D<0>_delay: DELAY (ENABLE_HIGH) LDS D<0>;
UDS_D<10>_delay: DELAY (ENABLE_HIGH) UDS D<10>;
DQ<10>_D<10>_delay: DELAY (ENABLE_HIGH) DQ<10> D<10>;
LDS_D<10>_delay: DELAY (ENABLE_HIGH) LDS D<10>;
RW_D<10>_delay: DELAY (ENABLE_HIGH) RW D<10>;
UDS_D<11>_delay: DELAY (ENABLE_HIGH) UDS D<11>;
LDS_D<11>_delay: DELAY (ENABLE_HIGH) LDS D<11>;
RW_D<11>_delay: DELAY (ENABLE_HIGH) RW D<11>;
DQ<11>_D<11>_delay: DELAY (ENABLE_HIGH) DQ<11> D<11>;
LDS_D<12>_delay: DELAY (ENABLE_HIGH) LDS D<12>;
UDS_D<12>_delay: DELAY (ENABLE_HIGH) UDS D<12>;
DQ<12>_D<12>_delay: DELAY (ENABLE_HIGH) DQ<12> D<12>;
RW_D<12>_delay: DELAY (ENABLE_HIGH) RW D<12>;
RW_D<13>_delay: DELAY (ENABLE_HIGH) RW D<13>;
LDS_D<13>_delay: DELAY (ENABLE_HIGH) LDS D<13>;
UDS_D<13>_delay: DELAY (ENABLE_HIGH) UDS D<13>;
DQ<13>_D<13>_delay: DELAY (ENABLE_HIGH) DQ<13> D<13>;
DQ<14>_D<14>_delay: DELAY (ENABLE_HIGH) DQ<14> D<14>;
UDS_D<14>_delay: DELAY (ENABLE_HIGH) UDS D<14>;
LDS_D<14>_delay: DELAY (ENABLE_HIGH) LDS D<14>;
RW_D<14>_delay: DELAY (ENABLE_HIGH) RW D<14>;
UDS_D<15>_delay: DELAY (ENABLE_HIGH) UDS D<15>;
LDS_D<15>_delay: DELAY (ENABLE_HIGH) LDS D<15>;
DQ<15>_D<15>_delay: DELAY (ENABLE_HIGH) DQ<15> D<15>;
RW_D<15>_delay: DELAY (ENABLE_HIGH) RW D<15>;
DQ<1>_D<1>_delay: DELAY (ENABLE_HIGH) DQ<1> D<1>;
UDS_D<1>_delay: DELAY (ENABLE_HIGH) UDS D<1>;
LDS_D<1>_delay: DELAY (ENABLE_HIGH) LDS D<1>;
RW_D<1>_delay: DELAY (ENABLE_HIGH) RW D<1>;
RW_D<2>_delay: DELAY (ENABLE_HIGH) RW D<2>;
LDS_D<2>_delay: DELAY (ENABLE_HIGH) LDS D<2>;
UDS_D<2>_delay: DELAY (ENABLE_HIGH) UDS D<2>;
DQ<2>_D<2>_delay: DELAY (ENABLE_HIGH) DQ<2> D<2>;
DQ<3>_D<3>_delay: DELAY (ENABLE_HIGH) DQ<3> D<3>;
RW_D<3>_delay: DELAY (ENABLE_HIGH) RW D<3>;
LDS_D<3>_delay: DELAY (ENABLE_HIGH) LDS D<3>;
UDS_D<3>_delay: DELAY (ENABLE_HIGH) UDS D<3>;
RW_D<4>_delay: DELAY (ENABLE_HIGH) RW D<4>;
UDS_D<4>_delay: DELAY (ENABLE_HIGH) UDS D<4>;
DQ<4>_D<4>_delay: DELAY (ENABLE_HIGH) DQ<4> D<4>;
LDS_D<4>_delay: DELAY (ENABLE_HIGH) LDS D<4>;
UDS_D<5>_delay: DELAY (ENABLE_HIGH) UDS D<5>;
LDS_D<5>_delay: DELAY (ENABLE_HIGH) LDS D<5>;
DQ<5>_D<5>_delay: DELAY (ENABLE_HIGH) DQ<5> D<5>;
RW_D<5>_delay: DELAY (ENABLE_HIGH) RW D<5>;
UDS_D<6>_delay: DELAY (ENABLE_HIGH) UDS D<6>;
LDS_D<6>_delay: DELAY (ENABLE_HIGH) LDS D<6>;
RW_D<6>_delay: DELAY (ENABLE_HIGH) RW D<6>;
DQ<6>_D<6>_delay: DELAY (ENABLE_HIGH) DQ<6> D<6>;
DQ<7>_D<7>_delay: DELAY (ENABLE_HIGH) DQ<7> D<7>;
LDS_D<7>_delay: DELAY (ENABLE_HIGH) LDS D<7>;
UDS_D<7>_delay: DELAY (ENABLE_HIGH) UDS D<7>;
RW_D<7>_delay: DELAY (ENABLE_HIGH) RW D<7>;
DQ<8>_D<8>_delay: DELAY (ENABLE_HIGH) DQ<8> D<8>;
RW_D<8>_delay: DELAY (ENABLE_HIGH) RW D<8>;
LDS_D<8>_delay: DELAY (ENABLE_HIGH) LDS D<8>;
UDS_D<8>_delay: DELAY (ENABLE_HIGH) UDS D<8>;
LDS_D<9>_delay: DELAY (ENABLE_HIGH) LDS D<9>;
DQ<9>_D<9>_delay: DELAY (ENABLE_HIGH) DQ<9> D<9>;
RW_D<9>_delay: DELAY (ENABLE_HIGH) RW D<9>;
UDS_D<9>_delay: DELAY (ENABLE_HIGH) UDS D<9>;
LDS_DQ<0>_delay: DELAY (ENABLE_HIGH) LDS DQ<0>;
UDS_DQ<0>_delay: DELAY (ENABLE_HIGH) UDS DQ<0>;
D<0>_DQ<0>_delay: DELAY (ENABLE_HIGH) D<0> DQ<0>;
RW_DQ<0>_delay: DELAY (ENABLE_HIGH) RW DQ<0>;
D<10>_DQ<10>_delay: DELAY (ENABLE_HIGH) D<10> DQ<10>;
RW_DQ<10>_delay: DELAY (ENABLE_HIGH) RW DQ<10>;
UDS_DQ<10>_delay: DELAY (ENABLE_HIGH) UDS DQ<10>;
LDS_DQ<10>_delay: DELAY (ENABLE_HIGH) LDS DQ<10>;
D<11>_DQ<11>_delay: DELAY (ENABLE_HIGH) D<11> DQ<11>;
LDS_DQ<11>_delay: DELAY (ENABLE_HIGH) LDS DQ<11>;
RW_DQ<11>_delay: DELAY (ENABLE_HIGH) RW DQ<11>;
UDS_DQ<11>_delay: DELAY (ENABLE_HIGH) UDS DQ<11>;
LDS_DQ<12>_delay: DELAY (ENABLE_HIGH) LDS DQ<12>;
RW_DQ<12>_delay: DELAY (ENABLE_HIGH) RW DQ<12>;
UDS_DQ<12>_delay: DELAY (ENABLE_HIGH) UDS DQ<12>;
D<12>_DQ<12>_delay: DELAY (ENABLE_HIGH) D<12> DQ<12>;
LDS_DQ<13>_delay: DELAY (ENABLE_HIGH) LDS DQ<13>;
UDS_DQ<13>_delay: DELAY (ENABLE_HIGH) UDS DQ<13>;
D<13>_DQ<13>_delay: DELAY (ENABLE_HIGH) D<13> DQ<13>;
RW_DQ<13>_delay: DELAY (ENABLE_HIGH) RW DQ<13>;
LDS_DQ<14>_delay: DELAY (ENABLE_HIGH) LDS DQ<14>;
UDS_DQ<14>_delay: DELAY (ENABLE_HIGH) UDS DQ<14>;
D<14>_DQ<14>_delay: DELAY (ENABLE_HIGH) D<14> DQ<14>;
RW_DQ<14>_delay: DELAY (ENABLE_HIGH) RW DQ<14>;
RW_DQ<15>_delay: DELAY (ENABLE_HIGH) RW DQ<15>;
D<15>_DQ<15>_delay: DELAY (ENABLE_HIGH) D<15> DQ<15>;
LDS_DQ<15>_delay: DELAY (ENABLE_HIGH) LDS DQ<15>;
UDS_DQ<15>_delay: DELAY (ENABLE_HIGH) UDS DQ<15>;
RW_DQ<1>_delay: DELAY (ENABLE_HIGH) RW DQ<1>;
UDS_DQ<1>_delay: DELAY (ENABLE_HIGH) UDS DQ<1>;
LDS_DQ<1>_delay: DELAY (ENABLE_HIGH) LDS DQ<1>;
D<1>_DQ<1>_delay: DELAY (ENABLE_HIGH) D<1> DQ<1>;
LDS_DQ<2>_delay: DELAY (ENABLE_HIGH) LDS DQ<2>;
D<2>_DQ<2>_delay: DELAY (ENABLE_HIGH) D<2> DQ<2>;
UDS_DQ<2>_delay: DELAY (ENABLE_HIGH) UDS DQ<2>;
RW_DQ<2>_delay: DELAY (ENABLE_HIGH) RW DQ<2>;
UDS_DQ<3>_delay: DELAY (ENABLE_HIGH) UDS DQ<3>;
RW_DQ<3>_delay: DELAY (ENABLE_HIGH) RW DQ<3>;
LDS_DQ<3>_delay: DELAY (ENABLE_HIGH) LDS DQ<3>;
D<3>_DQ<3>_delay: DELAY (ENABLE_HIGH) D<3> DQ<3>;
D<4>_DQ<4>_delay: DELAY (ENABLE_HIGH) D<4> DQ<4>;
RW_DQ<4>_delay: DELAY (ENABLE_HIGH) RW DQ<4>;
LDS_DQ<4>_delay: DELAY (ENABLE_HIGH) LDS DQ<4>;
UDS_DQ<4>_delay: DELAY (ENABLE_HIGH) UDS DQ<4>;
RW_DQ<5>_delay: DELAY (ENABLE_HIGH) RW DQ<5>;
UDS_DQ<5>_delay: DELAY (ENABLE_HIGH) UDS DQ<5>;
D<5>_DQ<5>_delay: DELAY (ENABLE_HIGH) D<5> DQ<5>;
LDS_DQ<5>_delay: DELAY (ENABLE_HIGH) LDS DQ<5>;
LDS_DQ<6>_delay: DELAY (ENABLE_HIGH) LDS DQ<6>;
UDS_DQ<6>_delay: DELAY (ENABLE_HIGH) UDS DQ<6>;
D<6>_DQ<6>_delay: DELAY (ENABLE_HIGH) D<6> DQ<6>;
RW_DQ<6>_delay: DELAY (ENABLE_HIGH) RW DQ<6>;
LDS_DQ<7>_delay: DELAY (ENABLE_HIGH) LDS DQ<7>;
UDS_DQ<7>_delay: DELAY (ENABLE_HIGH) UDS DQ<7>;
D<7>_DQ<7>_delay: DELAY (ENABLE_HIGH) D<7> DQ<7>;
RW_DQ<7>_delay: DELAY (ENABLE_HIGH) RW DQ<7>;
LDS_DQ<8>_delay: DELAY (ENABLE_HIGH) LDS DQ<8>;
UDS_DQ<8>_delay: DELAY (ENABLE_HIGH) UDS DQ<8>;
D<8>_DQ<8>_delay: DELAY (ENABLE_HIGH) D<8> DQ<8>;
RW_DQ<8>_delay: DELAY (ENABLE_HIGH) RW DQ<8>;
RW_DQ<9>_delay: DELAY (ENABLE_HIGH) RW DQ<9>;
UDS_DQ<9>_delay: DELAY (ENABLE_HIGH) UDS DQ<9>;
LDS_DQ<9>_delay: DELAY (ENABLE_HIGH) LDS DQ<9>;
D<9>_DQ<9>_delay: DELAY (ENABLE_HIGH) D<9> DQ<9>;
AS_DTACK_delay: DELAY (ENABLE_HIGH) AS DTACK;
IDE_WAIT_DTACK_delay: DELAY (ENABLE_HIGH) IDE_WAIT DTACK;
A<9>_IDE_A<0>_delay: DELAY A<9> IDE_A<0>;
A<10>_IDE_A<1>_delay: DELAY A<10> IDE_A<1>;
A<11>_IDE_A<2>_delay: DELAY A<11> IDE_A<2>;
A<12>_IDE_CS<0>_delay: DELAY A<12> IDE_CS<0>;
A<13>_IDE_CS<1>_delay: DELAY A<13> IDE_CS<1>;
AS_IDE_R_delay: DELAY AS IDE_R;
AS_IDE_W_delay: DELAY AS IDE_W;
LAN_INT_INT_OUT_delay: DELAY (ENABLE_HIGH) LAN_INT INT_OUT;
CP_IRQ_INT_OUT_delay: DELAY (ENABLE_HIGH) CP_IRQ INT_OUT;
AS_LAN_RD_delay: DELAY AS LAN_RD;
AS_LAN_WRH_delay: DELAY AS LAN_WRH;
AS_LAN_WRL_delay: DELAY AS LAN_WRL;
AS_OVR_delay: DELAY (ENABLE_HIGH) AS OVR;
AS_OWN_delay: DELAY (ENABLE_HIGH) AS OWN;
AS_ROM_OE_delay: DELAY AS ROM_OE;
AS_SLAVE_delay: DELAY AS SLAVE;
AS_DQ<0>_delay: DELAY (ENABLE_HIGH) AS DQ<0>;
AS_DQ<10>_delay: DELAY (ENABLE_HIGH) AS DQ<10>;
AS_DQ<11>_delay: DELAY (ENABLE_HIGH) AS DQ<11>;
AS_DQ<12>_delay: DELAY (ENABLE_HIGH) AS DQ<12>;
AS_DQ<13>_delay: DELAY (ENABLE_HIGH) AS DQ<13>;
AS_DQ<14>_delay: DELAY (ENABLE_HIGH) AS DQ<14>;
AS_DQ<15>_delay: DELAY (ENABLE_HIGH) AS DQ<15>;
AS_DQ<1>_delay: DELAY (ENABLE_HIGH) AS DQ<1>;
AS_DQ<2>_delay: DELAY (ENABLE_HIGH) AS DQ<2>;
AS_DQ<3>_delay: DELAY (ENABLE_HIGH) AS DQ<3>;
AS_DQ<4>_delay: DELAY (ENABLE_HIGH) AS DQ<4>;
AS_DQ<5>_delay: DELAY (ENABLE_HIGH) AS DQ<5>;
AS_DQ<6>_delay: DELAY (ENABLE_HIGH) AS DQ<6>;
AS_DQ<7>_delay: DELAY (ENABLE_HIGH) AS DQ<7>;
AS_DQ<8>_delay: DELAY (ENABLE_HIGH) AS DQ<8>;
AS_DQ<9>_delay: DELAY (ENABLE_HIGH) AS DQ<9>;
AS_D<8>_delay: DELAY (ENABLE_HIGH) AS D<8>;
AS_D<9>_delay: DELAY (ENABLE_HIGH) AS D<9>;
AS_D<10>_delay: DELAY (ENABLE_HIGH) AS D<10>;
AS_D<11>_delay: DELAY (ENABLE_HIGH) AS D<11>;
AS_D<12>_delay: DELAY (ENABLE_HIGH) AS D<12>;
AS_D<13>_delay: DELAY (ENABLE_HIGH) AS D<13>;
AS_D<14>_delay: DELAY (ENABLE_HIGH) AS D<14>;
AS_D<15>_delay: DELAY (ENABLE_HIGH) AS D<15>;
AS_D<0>_delay: DELAY (ENABLE_HIGH) AS D<0>;
AS_D<1>_delay: DELAY (ENABLE_HIGH) AS D<1>;
AS_D<2>_delay: DELAY (ENABLE_HIGH) AS D<2>;
AS_D<3>_delay: DELAY (ENABLE_HIGH) AS D<3>;
AS_D<4>_delay: DELAY (ENABLE_HIGH) AS D<4>;
AS_D<5>_delay: DELAY (ENABLE_HIGH) AS D<5>;
AS_D<6>_delay: DELAY (ENABLE_HIGH) AS D<6>;
AS_D<7>_delay: DELAY (ENABLE_HIGH) AS D<7>;
AS_LAN_CS_delay: DELAY AS LAN_CS;
AS_OWN_delay: DELAY (ENABLE_HIGH) AS OWN;
AS_OVR_delay: DELAY (ENABLE_HIGH) AS OVR;
AS_DTACK_delay: DELAY (ENABLE_HIGH) AS DTACK;
AS_CP_CS_delay: DELAY AS CP_CS;
AS_SLAVE_delay: DELAY AS SLAVE;
C1_D<12>_delay: DELAY (ENABLE_HIGH) C1 D<12>;
C1_D<13>_delay: DELAY (ENABLE_HIGH) C1 D<13>;
C1_D<14>_delay: DELAY (ENABLE_HIGH) C1 D<14>;
C1_D<15>_delay: DELAY (ENABLE_HIGH) C1 D<15>;
C1_CP_RD_delay: DELAY C1 CP_RD;
C1_CP_WE_delay: DELAY C1 CP_WE;
C1_IDE_R_delay: DELAY C1 IDE_R;
C1_IDE_W_delay: DELAY C1 IDE_W;
C1_ROM_OE_delay: DELAY C1 ROM_OE;
C1_LAN_RD_delay: DELAY C1 LAN_RD;
C1_LAN_WRH_delay: DELAY C1 LAN_WRH;
C1_LAN_WRL_delay: DELAY C1 LAN_WRL;
C1_INT_OUT_delay: DELAY (ENABLE_HIGH) C1 INT_OUT;
C3_D<12>_delay: DELAY (ENABLE_HIGH) C3 D<12>;
C3_D<13>_delay: DELAY (ENABLE_HIGH) C3 D<13>;
C3_D<14>_delay: DELAY (ENABLE_HIGH) C3 D<14>;
C3_D<15>_delay: DELAY (ENABLE_HIGH) C3 D<15>;
C3_CP_RD_delay: DELAY C3 CP_RD;
C3_CP_WE_delay: DELAY C3 CP_WE;
C3_IDE_R_delay: DELAY C3 IDE_R;
C3_IDE_W_delay: DELAY C3 IDE_W;
C3_ROM_OE_delay: DELAY C3 ROM_OE;
C3_LAN_RD_delay: DELAY C3 LAN_RD;
C3_LAN_WRH_delay: DELAY C3 LAN_WRH;
C3_LAN_WRL_delay: DELAY C3 LAN_WRL;
C3_INT_OUT_delay: DELAY (ENABLE_HIGH) C3 INT_OUT;

/* timing check arc definitions */
A<16>_AS_setup: SETUP(POSEDGE) A<16> AS;
A<17>_AS_setup: SETUP(POSEDGE) A<17> AS;
A<18>_AS_setup: SETUP(POSEDGE) A<18> AS;
A<19>_AS_setup: SETUP(POSEDGE) A<19> AS;
A<20>_AS_setup: SETUP(POSEDGE) A<20> AS;
A<21>_AS_setup: SETUP(POSEDGE) A<21> AS;
A<22>_AS_setup: SETUP(POSEDGE) A<22> AS;
A<23>_AS_setup: SETUP(POSEDGE) A<23> AS;
CFIN_AS_setup: SETUP(POSEDGE) CFIN AS;
A<16>_AS_hold: HOLD(POSEDGE) A<16> AS;
A<17>_AS_hold: HOLD(POSEDGE) A<17> AS;
A<18>_AS_hold: HOLD(POSEDGE) A<18> AS;
A<19>_AS_hold: HOLD(POSEDGE) A<19> AS;
A<20>_AS_hold: HOLD(POSEDGE) A<20> AS;
A<21>_AS_hold: HOLD(POSEDGE) A<21> AS;
A<22>_AS_hold: HOLD(POSEDGE) A<22> AS;
A<23>_AS_hold: HOLD(POSEDGE) A<23> AS;
CFIN_AS_hold: HOLD(POSEDGE) CFIN AS;
A<15>_C1_setup: SETUP(POSEDGE) A<15> C1;
A<1>_C1_setup: SETUP(POSEDGE) A<1> C1;
A<2>_C1_setup: SETUP(POSEDGE) A<2> C1;
A<3>_C1_setup: SETUP(POSEDGE) A<3> C1;
A<4>_C1_setup: SETUP(POSEDGE) A<4> C1;
A<5>_C1_setup: SETUP(POSEDGE) A<5> C1;
A<6>_C1_setup: SETUP(POSEDGE) A<6> C1;
AS_C1_setup: SETUP(POSEDGE) AS C1;
AUTOBOOT_OFF_C1_setup: SETUP(POSEDGE) AUTOBOOT_OFF C1;
D<10>_C1_setup: SETUP(POSEDGE) D<10> C1;
D<11>_C1_setup: SETUP(POSEDGE) D<11> C1;
D<12>_C1_setup: SETUP(POSEDGE) D<12> C1;
D<13>_C1_setup: SETUP(POSEDGE) D<13> C1;
D<14>_C1_setup: SETUP(POSEDGE) D<14> C1;
D<15>_C1_setup: SETUP(POSEDGE) D<15> C1;
D<8>_C1_setup: SETUP(POSEDGE) D<8> C1;
D<9>_C1_setup: SETUP(POSEDGE) D<9> C1;
LDS_C1_setup: SETUP(POSEDGE) LDS C1;
RESET_C1_setup: SETUP(POSEDGE) RESET C1;
RW_C1_setup: SETUP(POSEDGE) RW C1;
UDS_C1_setup: SETUP(POSEDGE) UDS C1;
A<15>_C1_hold: HOLD(POSEDGE) A<15> C1;
A<1>_C1_hold: HOLD(POSEDGE) A<1> C1;
A<2>_C1_hold: HOLD(POSEDGE) A<2> C1;
A<3>_C1_hold: HOLD(POSEDGE) A<3> C1;
A<4>_C1_hold: HOLD(POSEDGE) A<4> C1;
A<5>_C1_hold: HOLD(POSEDGE) A<5> C1;
A<6>_C1_hold: HOLD(POSEDGE) A<6> C1;
AS_C1_hold: HOLD(POSEDGE) AS C1;
AUTOBOOT_OFF_C1_hold: HOLD(POSEDGE) AUTOBOOT_OFF C1;
D<10>_C1_hold: HOLD(POSEDGE) D<10> C1;
D<11>_C1_hold: HOLD(POSEDGE) D<11> C1;
D<12>_C1_hold: HOLD(POSEDGE) D<12> C1;
D<13>_C1_hold: HOLD(POSEDGE) D<13> C1;
D<14>_C1_hold: HOLD(POSEDGE) D<14> C1;
D<15>_C1_hold: HOLD(POSEDGE) D<15> C1;
D<8>_C1_hold: HOLD(POSEDGE) D<8> C1;
D<9>_C1_hold: HOLD(POSEDGE) D<9> C1;
LDS_C1_hold: HOLD(POSEDGE) LDS C1;
RESET_C1_hold: HOLD(POSEDGE) RESET C1;
RW_C1_hold: HOLD(POSEDGE) RW C1;
UDS_C1_hold: HOLD(POSEDGE) UDS C1;
A<15>_C3_setup: SETUP(POSEDGE) A<15> C3;
A<1>_C3_setup: SETUP(POSEDGE) A<1> C3;
A<2>_C3_setup: SETUP(POSEDGE) A<2> C3;
A<3>_C3_setup: SETUP(POSEDGE) A<3> C3;
A<4>_C3_setup: SETUP(POSEDGE) A<4> C3;
A<5>_C3_setup: SETUP(POSEDGE) A<5> C3;
A<6>_C3_setup: SETUP(POSEDGE) A<6> C3;
AS_C3_setup: SETUP(POSEDGE) AS C3;
AUTOBOOT_OFF_C3_setup: SETUP(POSEDGE) AUTOBOOT_OFF C3;
D<10>_C3_setup: SETUP(POSEDGE) D<10> C3;
D<11>_C3_setup: SETUP(POSEDGE) D<11> C3;
D<12>_C3_setup: SETUP(POSEDGE) D<12> C3;
D<13>_C3_setup: SETUP(POSEDGE) D<13> C3;
D<14>_C3_setup: SETUP(POSEDGE) D<14> C3;
D<15>_C3_setup: SETUP(POSEDGE) D<15> C3;
D<8>_C3_setup: SETUP(POSEDGE) D<8> C3;
D<9>_C3_setup: SETUP(POSEDGE) D<9> C3;
LDS_C3_setup: SETUP(POSEDGE) LDS C3;
RESET_C3_setup: SETUP(POSEDGE) RESET C3;
RW_C3_setup: SETUP(POSEDGE) RW C3;
UDS_C3_setup: SETUP(POSEDGE) UDS C3;
A<15>_C3_hold: HOLD(POSEDGE) A<15> C3;
A<1>_C3_hold: HOLD(POSEDGE) A<1> C3;
A<2>_C3_hold: HOLD(POSEDGE) A<2> C3;
A<3>_C3_hold: HOLD(POSEDGE) A<3> C3;
A<4>_C3_hold: HOLD(POSEDGE) A<4> C3;
A<5>_C3_hold: HOLD(POSEDGE) A<5> C3;
A<6>_C3_hold: HOLD(POSEDGE) A<6> C3;
AS_C3_hold: HOLD(POSEDGE) AS C3;
AUTOBOOT_OFF_C3_hold: HOLD(POSEDGE) AUTOBOOT_OFF C3;
D<10>_C3_hold: HOLD(POSEDGE) D<10> C3;
D<11>_C3_hold: HOLD(POSEDGE) D<11> C3;
D<12>_C3_hold: HOLD(POSEDGE) D<12> C3;
D<13>_C3_hold: HOLD(POSEDGE) D<13> C3;
D<14>_C3_hold: HOLD(POSEDGE) D<14> C3;
D<15>_C3_hold: HOLD(POSEDGE) D<15> C3;
D<8>_C3_hold: HOLD(POSEDGE) D<8> C3;
D<9>_C3_hold: HOLD(POSEDGE) D<9> C3;
LDS_C3_hold: HOLD(POSEDGE) LDS C3;
RESET_C3_hold: HOLD(POSEDGE) RESET C3;
RW_C3_hold: HOLD(POSEDGE) RW C3;
UDS_C3_hold: HOLD(POSEDGE) UDS C3;

ENDMODEL
