                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             int __stdcall challenge(char * param_1)
                               assume gp = 0x80001288
             int               a0:4           <RETURN>
             char *            a0:4           param_1
                             challenge                                       XREF[2]:     Entry Point(*), main:20010458(c)  
        20010bda 5d 71           c.addi16sp sp,-0x50
             assume gp = <UNKNOWN>
        20010bdc a2 c4           c.swsp     s0,0x48(sp)
        20010bde 13 06 10 04     li         a2,0x41
        20010be2 56 da           c.swsp     s5,0x34(sp)
        20010be4 81 45           c.li       a1,0x0
        20010be6 aa 8a           c.mv       s5,param_1
        20010be8 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010bec 86 c6           c.swsp     ra,0x4c(sp)
        20010bee a6 c2           c.swsp     s1,0x44(sp)
        20010bf0 ca c0           c.swsp     s2,0x40(sp)
        20010bf2 4e de           c.swsp     s3,0x3c(sp)
        20010bf4 52 dc           c.swsp     s4,0x38(sp)
        20010bf6 5a d8           c.swsp     s6,0x30(sp)
        20010bf8 5e d6           c.swsp     s7,0x2c(sp)
        20010bfa 62 d4           c.swsp     s8,0x28(sp)
        20010bfc 66 d2           c.swsp     s9,0x24(sp)
        20010bfe 6a d0           c.swsp     s10,0x20(sp)
        20010c00 6e ce           c.swsp     s11,0x1c(sp)
        20010c02 ef 00 50 00     jal        ra,memset                                        void * memset(void * __s, int __
        20010c06 b7 55 01 20     lui        a1,0x20015
        20010c0a 93 85 c5 ea     addi       a1=>s_Computing..._20014eac,a1,-0x154            = "Computing...\r\n"
        20010c0e 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010c12 ef 00 50 5e     jal        ra,strcpy                                        char * strcpy(char * __dest, cha
        20010c16 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010c1a ef 00 f0 5e     jal        ra,strlen                                        size_t strlen(char * __s)
        20010c1e 37 1a 00 80     lui        s4,0x80001
        20010c22 37 5c 01 20     lui        s8,0x20015
        20010c26 05 6d           c.lui      s10,0x1
        20010c28 aa 86           c.mv       a3,param_1
        20010c2a 13 06 cc eb     addi       a2=>s_AT+CIPSEND=0,%d_20014ebc,s8,-0x144         = "AT+CIPSEND=0,%d\r\n"
        20010c2e 93 05 0d 80     addi       a1=>__heap_size,s10,-0x800
        20010c32 13 05 8a ae     addi       param_1=>at_cmd,s4,-0x518                        = ??
        20010c36 ef 00 10 37     jal        ra,sniprintf                                     int sniprintf(char * __s, size_t
        20010c3a 13 05 8a ae     addi       param_1=>at_cmd,s4,-0x518                        = ??
        20010c3e ef f0 9f 9a     jal        ra,spi_send                                      undefined spi_send(char * param_1)
        20010c42 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010c46 ef f0 1f 9a     jal        ra,spi_send                                      undefined spi_send(char * param_1)
        20010c4a 37 05 08 00     lui        param_1,0x80
        20010c4e ef f0 9f 8b     jal        ra,LED_off                                       undefined LED_off(uint param_1)
        20010c52 93 05 00 20     li         a1,0x200
        20010c56 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010c5a 49 33           c.jal      amnesia_check                                    undefined4 amnesia_check(char * 
        20010c5c 93 05 00 04     li         a1,0x40
        20010c60 2a 8b           c.mv       s6,param_1
        20010c62 56 85           c.mv       param_1,s5
        20010c64 ef 00 b0 5d     jal        ra,strnlen                                       size_t strnlen(char * __string, 
        20010c68 2a 89           c.mv       s2,param_1
        20010c6a b7 9c 98 00     lui        s9,0x989
        20010c6e 91 37           c.jal      amnesia_clear                                    undefined amnesia_clear(void)
        20010c70 13 85 0c 68     addi       param_1,s9,0x680
        20010c74 cd 39           c.jal      delay                                            undefined delay(uint param_1)
        20010c76 19 47           c.li       a4,0x6
        20010c78 a2 89           c.mv       s3,s0
        20010c7a 93 84 01 06     addi       s1,gp,0x60
        20010c7e d2 8b           c.mv       s7,s4
        20010c80 63 45 27 0f     blt        a4,s2,LAB_20010d6a
        20010c84 b7 55 01 20     lui        a1,0x20015
        20010c88 93 85 05 ed     addi       a1=>s_Longer_yodels_are_more_fun_20014ed0,a1,-   = "Longer yodels are more fun\r\n"
        20010c8c 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010c90 ef 00 70 56     jal        ra,strcpy                                        char * strcpy(char * __dest, cha
                             LAB_20010c94                                    XREF[1]:     20010dce(j)  
        20010c94 37 35 31 01     lui        param_1,0x1313
        20010c98 13 05 05 d0     addi       param_1,param_1,-0x300
        20010c9c e9 31           c.jal      delay                                            undefined delay(uint param_1)
        20010c9e 37 05 08 00     lui        param_1,0x80
        20010ca2 ef f0 9f 85     jal        ra,LED_on                                        undefined LED_on(uint param_1)
        20010ca6 9d 47           c.li       a5,0x7
        20010ca8 b3 67 f9 02     rem        a5,s2,a5
        20010cac 01 4a           c.li       s4,0x0
        20010cae 01 44           c.li       s0,0x0
        20010cb0 b7 5c 01 20     lui        s9,0x20015
        20010cb4 37 5d 01 20     lui        s10,0x20015
        20010cb8 b7 5d 01 20     lui        s11,0x20015
        20010cbc 33 09 f9 40     sub        s2,s2,a5
        20010cc0 b7 57 01 20     lui        a5=>s_20_20014fec+20,0x20015                     = "20\r"
        20010cc4 93 87 47 e3     addi       a5=>switchD_20010e80::switchdataD_20014e34,a5,   = 20010e82
        20010cc8 3e 8c           c.mv       s8,a5
                             LAB_20010cca                                    XREF[1]:     20010f44(j)  
        20010cca 63 47 2a 19     blt        s4,s2,LAB_20010e58
        20010cce 37 35 31 01     lui        param_1,0x1313
        20010cd2 13 05 05 d0     addi       param_1,param_1,-0x300
        20010cd6 41 39           c.jal      delay                                            undefined delay(uint param_1)
        20010cd8 37 05 08 00     lui        param_1,0x80
        20010cdc ef f0 bf 82     jal        ra,LED_off                                       undefined LED_off(uint param_1)
        20010ce0 11 e0           c.bnez     s0,LAB_20010ce4
        20010ce2 6d 44           c.li       s0,0x1b
                             LAB_20010ce4                                    XREF[1]:     20010ce0(j)  
        20010ce4 13 06 00 20     li         a2,0x200
        20010ce8 01 8e           c.sub      a2,s0
        20010cea 33 85 84 00     add        param_1=>packet[27],s1,s0                        = null
                                                                                             = ??
        20010cee b7 55 01 20     lui        a1,0x20015
        20010cf2 71 04           c.addi     s0,0x1c
        20010cf4 93 85 85 f5     addi       a1=>s__Enter_a_string_to_yodel:_20014f58,a1,-0   = "\r\nEnter a string to yodel:\
        20010cf8 a2 94           c.add      s1,s0
        20010cfa ef 00 10 52     jal        ra,strncpy                                       char * strncpy(char * __dest, ch
        20010cfe 23 80 04 00     sb         zero,0x0(s1=>packet[55])                         = null
        20010d02 b7 34 31 01     lui        s1,0x1313
        20010d06 13 85 04 d0     addi       param_1,s1,-0x300
        20010d0a b1 39           c.jal      delay                                            undefined delay(uint param_1)
        20010d0c 37 05 08 00     lui        param_1,0x80
        20010d10 ef f0 af fe     jal        ra,LED_on                                        undefined LED_on(uint param_1)
        20010d14 b7 57 01 20     lui        a5=>s_20_20014fec+20,0x20015                     = "20\r"
        20010d18 85 65           c.lui      a1,0x1
        20010d1a a2 86           c.mv       a3,s0
        20010d1c 13 86 c7 eb     addi       a2=>s_AT+CIPSEND=0,%d_20014ebc,a5,-0x144         = "AT+CIPSEND=0,%d\r\n"
        20010d20 93 85 05 80     addi       a1=>__heap_size,a1,-0x800
        20010d24 13 85 8b ae     addi       param_1=>at_cmd,s7,-0x518                        = ??
        20010d28 ef 00 f0 27     jal        ra,sniprintf                                     int sniprintf(char * __s, size_t
        20010d2c 13 85 8b ae     addi       param_1=>at_cmd,s7,-0x518                        = ??
        20010d30 ef f0 7f 8b     jal        ra,spi_send                                      undefined spi_send(char * param_1)
        20010d34 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010d38 ef f0 ff 8a     jal        ra,spi_send                                      undefined spi_send(char * param_1)
        20010d3c 13 85 04 d0     addi       param_1,s1,-0x300
        20010d40 1d 31           c.jal      delay                                            undefined delay(uint param_1)
        20010d42 37 05 08 00     lui        param_1,0x80
        20010d46 ef f0 0f fc     jal        ra,LED_off                                       undefined LED_off(uint param_1)
        20010d4a 13 85 04 d0     addi       param_1,s1,-0x300
        20010d4e 21 39           c.jal      delay                                            undefined delay(uint param_1)
        20010d50 37 05 08 00     lui        param_1,0x80
        20010d54 ef f0 6f fa     jal        ra,LED_on                                        undefined LED_on(uint param_1)
        20010d58 a9 3d           c.jal      amnesia_clear                                    undefined amnesia_clear(void)
        20010d5a 37 05 08 00     lui        param_1,0x80
        20010d5e ef f0 cf f9     jal        ra,LED_on                                        undefined LED_on(uint param_1)
        20010d62 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010d66 a1 3b           c.jal      amnesia_save                                     undefined amnesia_save(char * pa
        20010d68 c1 a8           c.j        LAB_20010e38
                             LAB_20010d6a                                    XREF[1]:     20010c80(j)  
        20010d6a 05 47           c.li       a4,0x1
        20010d6c 63 02 eb 06     beq        s6,a4,LAB_20010dd0
        20010d70 13 06 10 04     li         a2,0x41
        20010d74 81 45           c.li       a1,0x0
        20010d76 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010d7a 71 25           c.jal      memset                                           void * memset(void * __s, int __
        20010d7c 13 06 00 04     li         a2,0x40
        20010d80 d6 85           c.mv       a1,s5
        20010d82 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010d86 ef 00 50 49     jal        ra,strncpy                                       char * strncpy(char * __dest, ch
        20010d8a e1 47           c.li       a5,0x18
        20010d8c 63 cb 27 01     blt        a5,s2,LAB_20010da2
        20010d90 13 05 e9 ff     addi       param_1,s2,-0x2
        20010d94 6d 46           c.li       a2,0x1b
        20010d96 33 06 26 41     sub        a2,a2,s2
        20010d9a 93 05 20 04     li         a1,0x42
        20010d9e 26 95           c.add      param_1,s1
        20010da0 9d 25           c.jal      memset                                           void * memset(void * __s, int __
                             LAB_20010da2                                    XREF[1]:     20010d8c(j)  
        20010da2 93 07 00 03     li         a5,0x30
        20010da6 a3 8c f4 00     sb         a5,0x19(s1=>packet[25])                          = null
        20010daa 8d 67           c.lui      a5,0x3
        20010dac 93 86 27 03     addi       a3,a5,0x32
        20010db0 93 87 07 e3     addi       a5,a5,-0x1d0
        20010db4 13 07 a0 02     li         a4,0x2a
        20010db8 23 9d d4 00     sh         a3,0x1a(s1=>packet[26])                          = null
        20010dbc 23 9e f4 00     sh         a5,0x1c(s1=>packet[28])                          = null
        20010dc0 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010dc4 23 86 e4 00     sb         a4,0xc(s1=>packet[12])                           = null
        20010dc8 23 8f e4 00     sb         a4,0x1e(s1=>packet[30])                          = null
        20010dcc cd 39           c.jal      amnesia_save                                     undefined amnesia_save(char * pa
        20010dce d9 b5           c.j        LAB_20010c94
                             LAB_20010dd0                                    XREF[1]:     20010d6c(j)  
        20010dd0 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010dd4 ef 00 50 43     jal        ra,strlen                                        size_t strlen(char * __s)
        20010dd8 93 8d 01 06     addi       s11,gp,0x60
        20010ddc b7 55 01 20     lui        a1,0x20015
        20010de0 93 85 05 ef     addi       a1=>s_Correct!_Save_key_for_report_20014ef0,a1   = "Correct! Save key for report\
        20010de4 6e 95           c.add      param_1,s11
        20010de6 ef 00 10 41     jal        ra,strcpy                                        char * strcpy(char * __dest, cha
        20010dea 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010dee ef 00 b0 41     jal        ra,strlen                                        size_t strlen(char * __s)
        20010df2 aa 86           c.mv       a3,param_1
        20010df4 13 06 cc eb     addi       a2=>s_AT+CIPSEND=0,%d_20014ebc,s8,-0x144         = "AT+CIPSEND=0,%d\r\n"
        20010df8 93 05 0d 80     addi       a1=>__heap_size,s10,-0x800
        20010dfc 13 05 8a ae     addi       param_1=>at_cmd,s4,-0x518                        = ??
        20010e00 ef 00 70 1a     jal        ra,sniprintf                                     int sniprintf(char * __s, size_t
        20010e04 13 05 8a ae     addi       param_1=>at_cmd,s4,-0x518                        = ??
        20010e08 ef f0 ef fd     jal        ra,spi_send                                      undefined spi_send(char * param_1)
        20010e0c 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010e10 ef f0 6f fd     jal        ra,spi_send                                      undefined spi_send(char * param_1)
        20010e14 13 85 0c 68     addi       param_1,s9,0x680
        20010e18 b9 36           c.jal      delay                                            undefined delay(uint param_1)
        20010e1a 37 05 08 00     lui        param_1,0x80
        20010e1e ef f0 cf ed     jal        ra,LED_on                                        undefined LED_on(uint param_1)
        20010e22 13 05 8a ae     addi       param_1=>at_cmd,s4,-0x518                        = ??
        20010e26 ef f0 0f fc     jal        ra,spi_send                                      undefined spi_send(char * param_1)
        20010e2a 13 85 01 06     addi       param_1=>packet,gp,0x60                          = ??
        20010e2e ef f0 8f fb     jal        ra,spi_send                                      undefined spi_send(char * param_1)
        20010e32 13 85 0c 68     addi       param_1,s9,0x680
        20010e36 05 3e           c.jal      delay                                            undefined delay(uint param_1)
                             LAB_20010e38                                    XREF[1]:     20010d68(j)  
        20010e38 b6 40           c.lwsp     ra,0x4c(sp)
        20010e3a 26 44           c.lwsp     s0,0x48(sp)
        20010e3c 5a 85           c.mv       param_1,s6
        20010e3e 96 44           c.lwsp     s1,0x44(sp)
        20010e40 06 49           c.lwsp     s2,0x40(sp)
        20010e42 f2 59           c.lwsp     s3,0x3c(sp)
        20010e44 62 5a           c.lwsp     s4,0x38(sp)
        20010e46 d2 5a           c.lwsp     s5,0x34(sp)
        20010e48 42 5b           c.lwsp     s6,0x30(sp)
        20010e4a b2 5b           c.lwsp     s7,0x2c(sp)
        20010e4c 22 5c           c.lwsp     s8,0x28(sp)
        20010e4e 92 5c           c.lwsp     s9,0x24(sp)
        20010e50 02 5d           c.lwsp     s10,0x20(sp)
        20010e52 f2 4d           c.lwsp     s11,0x1c(sp)
        20010e54 61 61           c.addi16sp sp,0x50
        20010e56 82 80           ret
                             LAB_20010e58                                    XREF[1]:     20010cca(j)  
        20010e58 b3 87 4a 01     add        a5,s5,s4
        20010e5c 83 c6 07 00     lbu        a3,0x0(a5)
        20010e60 b5 47           c.li       a5,0xd
        20010e62 33 85 84 00     add        param_1,s1,s0
        20010e66 a2 96           c.add      a3,s0
        20010e68 ca 96           c.add      a3,s2
        20010e6a b3 86 46 41     sub        a3,a3,s4
        20010e6e b3 e6 f6 02     rem        a3,a3,a5
        20010e72 ad 47           c.li       a5,0xb
        20010e74 63 e4 d7 0a     bltu       a5,a3,switchD_20010e80::caseD_c
        20010e78 93 97 26 00     slli       a5,a3,0x2
        20010e7c e2 97           c.add      a5,s8
        20010e7e 9c 43           c.lw       a5,0x0(a5=>->switchD_20010e80::caseD_0)          = 20010e82
                             switchD_20010e80::switchD
        20010e80 82 87           c.jr       a5
                             switchD_20010e80::caseD_0                       XREF[2]:     20010e80(j), 20014e34(*)  
        20010e82 b7 55 01 20     lui        a1,0x20015
        20010e86 93 85 05 f1     addi       a1=>DAT_20014f10,a1,-0xf0                        = 6Fh    o
                             LAB_20010e8a                                    XREF[6]:     20010ec4(j), 20010ee0(j), 
                                                                                          20010eea(j), 20010ef4(j), 
                                                                                          20010efa(j), 20010f00(j)  
        20010e8a ef 00 d0 36     jal        ra,strcpy                                        char * strcpy(char * __dest, cha
        20010e8e 8d 46           c.li       a3,0x3
                             LAB_20010e90                                    XREF[2]:     20010eba(j), 20010ed6(j)  
        20010e90 9d 47           c.li       a5,0x7
        20010e92 b3 67 fa 02     rem        a5,s4,a5
        20010e96 c1 eb           c.bnez     a5,LAB_20010f26
        20010e98 33 87 84 00     add        a4,s1,s0
        20010e9c 83 47 07 00     lbu        a5,0x0(a4=>packet)                               = ??
        20010ea0 93 f7 f7 fd     andi       a5,a5,-0x21
        20010ea4 23 00 f7 00     sb         a5,0x0(a4=>packet)                               = ??
                             LAB_20010ea8                                    XREF[1]:     20010f28(j)  
        20010ea8 36 94           c.add      s0,a3
        20010eaa 61 a8           c.j        LAB_20010f42
                             switchD_20010e80::caseD_1                       XREF[2]:     20010e80(j), 20014e38(*)  
        20010eac b7 55 01 20     lui        a1,0x20015
        20010eb0 93 85 45 f1     addi       a1=>DAT_20014f14,a1,-0xec                        = 64h    d
                             LAB_20010eb4                                    XREF[4]:     20010f06(j), 20010f10(j), 
                                                                                          20010f1a(j), 20010f24(j)  
        20010eb4 ef 00 30 34     jal        ra,strcpy                                        char * strcpy(char * __dest, cha
        20010eb8 91 46           c.li       a3,0x4
        20010eba d9 bf           c.j        LAB_20010e90
                             switchD_20010e80::caseD_2                       XREF[2]:     20010e80(j), 20014e3c(*)  
        20010ebc b7 55 01 20     lui        a1,0x20015
        20010ec0 93 85 c5 f1     addi       a1=>DAT_20014f1c,a1,-0xe4                        = 6Ch    l
        20010ec4 d9 b7           c.j        LAB_20010e8a
                             switchD_20010e80::caseD_3                       XREF[2]:     20010e80(j), 20014e40(*)  
        20010ec6 b7 55 01 20     lui        a1,0x20015
        20010eca 93 85 05 f2     addi       a1=>DAT_20014f20,a1,-0xe0                        = 79h    y
        20010ece 36 c6           c.swsp     a3,0xc(sp)
        20010ed0 ef 00 70 32     jal        ra,strcpy                                        char * strcpy(char * __dest, cha
        20010ed4 b2 46           c.lwsp     a3,0xc(sp)
        20010ed6 6d bf           c.j        LAB_20010e90
                             switchD_20010e80::caseD_4                       XREF[2]:     20010e80(j), 20014e44(*)  
        20010ed8 b7 55 01 20     lui        a1,0x20015
        20010edc 93 85 45 f2     addi       a1=>DAT_20014f24,a1,-0xdc                        = 68h    h
        20010ee0 6d b7           c.j        LAB_20010e8a
                             switchD_20010e80::caseD_5                       XREF[2]:     20010e80(j), 20014e48(*)  
        20010ee2 b7 55 01 20     lui        a1,0x20015
        20010ee6 93 85 85 f2     addi       a1=>DAT_20014f28,a1,-0xd8                        = 65h    e
        20010eea 45 b7           c.j        LAB_20010e8a
                             switchD_20010e80::caseD_6                       XREF[2]:     20010e80(j), 20014e4c(*)  
        20010eec b7 55 01 20     lui        a1,0x20015
        20010ef0 93 85 c5 f2     addi       a1=>DAT_20014f2c,a1,-0xd4                        = 68h    h
        20010ef4 59 bf           c.j        LAB_20010e8a
                             switchD_20010e80::caseD_7                       XREF[2]:     20010e80(j), 20014e50(*)  
        20010ef6 93 85 0d f3     addi       a1=>DAT_20014f30,s11,-0xd0                       = 6Fh    o
        20010efa 41 bf           c.j        LAB_20010e8a
                             switchD_20010e80::caseD_8                       XREF[2]:     20010e80(j), 20014e54(*)  
        20010efc 93 05 4d f3     addi       a1=>DAT_20014f34,s10,-0xcc                       = 72h    r
        20010f00 69 b7           c.j        LAB_20010e8a
                             switchD_20010e80::caseD_9                       XREF[2]:     20010e80(j), 20014e58(*)  
        20010f02 93 85 8c f3     addi       a1=>DAT_20014f38,s9,-0xc8                        = 64h    d
        20010f06 7d b7           c.j        LAB_20010eb4
                             switchD_20010e80::caseD_a                       XREF[2]:     20010e80(j), 20014e5c(*)  
        20010f08 b7 57 01 20     lui        a5,0x20015
        20010f0c 93 85 07 f4     addi       a1=>DAT_20014f40,a5,-0xc0                        = 6Ch    l
        20010f10 55 b7           c.j        LAB_20010eb4
                             switchD_20010e80::caseD_b                       XREF[2]:     20010e80(j), 20014e60(*)  
        20010f12 b7 57 01 20     lui        a5,0x20015
        20010f16 93 85 87 f4     addi       a1=>DAT_20014f48,a5,-0xb8                        = 74h    t
        20010f1a 69 bf           c.j        LAB_20010eb4
                             switchD_20010e80::caseD_c                       XREF[2]:     20010e74(j), 20010e80(j)  
        20010f1c b7 57 01 20     lui        a5,0x20015
        20010f20 93 85 07 f5     addi       a1=>DAT_20014f50,a5,-0xb0                        = 6Ch    l
        20010f24 41 bf           c.j        LAB_20010eb4
                             LAB_20010f26                                    XREF[1]:     20010e96(j)  
        20010f26 19 47           c.li       a4,0x6
        20010f28 e3 90 e7 f8     bne        a5,a4,LAB_20010ea8
        20010f2c fd 16           c.addi     a3,-0x1
        20010f2e 36 94           c.add      s0,a3
        20010f30 b3 87 84 00     add        a5,s1,s0
        20010f34 35 47           c.li       a4,0xd
        20010f36 23 80 e7 00     sb         a4,0x0(a5=>packet[3])                            = null
        20010f3a 29 47           c.li       a4,0xa
        20010f3c 09 04           c.addi     s0,0x2
        20010f3e a3 80 e7 00     sb         a4,0x1(a5=>packet[4])                            = null
                             LAB_20010f42                                    XREF[1]:     20010eaa(j)  
        20010f42 05 0a           c.addi     s4,0x1
        20010f44 59 b3           c.j        LAB_20010cca
