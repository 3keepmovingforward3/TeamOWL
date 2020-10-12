
int challenge(char *param_1)

{
  int iVar1;
  size_t sVar2;
  int iVar3;
  char *__dest;
  char *__src;
  int iVar4;
  int iVar5;
  int iVar6;
  
  memset(packet,0,0x41);
  strcpy(packet,"Computing...\r\n");
  sVar2 = strlen(packet);
  sniprintf(at_cmd,0x800,"AT+CIPSEND=0,%d\r\n",sVar2);
  spi_send(at_cmd);
  spi_send(packet);
  LED_off(0x80000);
  iVar3 = amnesia_check(packet,0x200);
  sVar2 = strnlen(param_1,0x40);
  amnesia_clear();
  delay(10000000);
  if ((int)sVar2 < 7) {
    strcpy(packet,"Longer yodels are more fun\r\n");
  }
  else {
    if (iVar3 == 1) {
      sVar2 = strlen(packet);
      strcpy(packet + sVar2,"Correct! Save key for report\r\n");
      sVar2 = strlen(packet);
      sniprintf(at_cmd,0x800,"AT+CIPSEND=0,%d\r\n",sVar2);
      spi_send(at_cmd);
      spi_send(packet);
      delay(10000000);
      LED_on(0x80000);
      spi_send(at_cmd);
      spi_send(packet);
      delay(10000000);
      gp = (undefined1 *)((int)at_cmd + 0x7a0);
      return 1;
    }
    memset(packet,0,0x41);
    strncpy(packet,param_1,0x40);
    if ((int)sVar2 < 0x19) {
      memset(at_cmd + sVar2 + 0x7fe,0x42,0x1b - sVar2);
    }
    packet[25] = 0x30;
    packet._26_2_ = 0x3032;
    packet._28_2_ = 0x2e30;
    packet[12] = 0x2a;
    packet[30] = 0x2a;
    amnesia_save(packet);
  }
  delay(20000000);
  LED_on(0x80000);
  iVar6 = 0;
  iVar1 = 0;
  iVar5 = sVar2 - (int)sVar2 % 7;
  do {
    if (iVar5 <= iVar6) {
      delay(20000000);
      LED_off(0x80000);
      if (iVar1 == 0) {
        iVar1 = 0x1b;
      }
      strncpy(packet + iVar1,"\r\nEnter a string to yodel:\r\n",0x200 - iVar1);
      packet[iVar1 + 0x1c] = 0;
      delay(20000000);
      LED_on(0x80000);
      sniprintf(at_cmd,0x800,"AT+CIPSEND=0,%d\r\n",iVar1 + 0x1c);
      spi_send(at_cmd);
      spi_send(packet);
      delay(20000000);
      LED_off(0x80000);
      delay(20000000);
      LED_on(0x80000);
      amnesia_clear();
      LED_on(0x80000);
      amnesia_save(packet);
      gp = (undefined1 *)((int)at_cmd + 0x7a0);
      return iVar3;
    }
    __dest = packet + iVar1;
    iVar4 = (int)(((uint)(byte)param_1[iVar6] + iVar1 + iVar5) - iVar6) % 0xd;
    switch(iVar4) {
    case 0:
      __src = "oo-";
      break;
    case 1:
      __src = "del-";
      goto LAB_20010eb4;
    case 2:
      __src = "la-";
      break;
    case 3:
      strcpy(__dest,"yo-");
      goto LAB_20010e90;
    case 4:
      __src = "ho-";
      break;
    case 5:
      __src = "ee-";
      break;
    case 6:
      __src = "he-";
      break;
    case 7:
      __src = "oh-";
      break;
    case 8:
      __src = "ro-";
      break;
    case 9:
      __src = "dee-";
      goto LAB_20010eb4;
    case 10:
      __src = "lay-";
      goto LAB_20010eb4;
    case 0xb:
      __src = "tra-";
      goto LAB_20010eb4;
    default:
      __src = "lee-";
LAB_20010eb4:
      strcpy(__dest,__src);
      iVar4 = 4;
      goto LAB_20010e90;
    }
    strcpy(__dest,__src);
    iVar4 = 3;
LAB_20010e90:
    if (iVar6 % 7 == 0) {
      packet[iVar1] = packet[iVar1] & 0xdf;
LAB_20010ea8:
      iVar1 = iVar1 + iVar4;
    }
    else {
      if (iVar6 % 7 != 6) goto LAB_20010ea8;
      iVar4 = iVar1 + iVar4 + -1;
      packet[iVar4] = 0xd;
      iVar1 = iVar4 + 2;
      packet[iVar4 + 1] = 10;
    }
    iVar6 = iVar6 + 1;
  } while( true );
}

