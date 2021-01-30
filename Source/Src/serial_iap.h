/*
 * serial_iap.h
 *
 *  Created on: 2021年1月22日
 *      Author: c
 */

#ifndef SERIAL_IAP_H_
#define SERIAL_IAP_H_

#include "main.h"

#define HEADER_LOW  0X7a
#define HEADER_HIGH 0x55

#define PROTOCOL_VERSION 0X01

#define HEADER_POS 0
#define HEADER_LEN 2
#define COMM_NUM_POS 2
#define COMM_NUM_LEN 2
#define CMD_POS  4
#define DATA_LEN_POS 5
#define DATA_LEN_LEN 2
#define DATA_POS 7


uint8_t serial_DataHandle(void);

void rec_TimeCheck(void);

void rec_SerialData(uint8_t data);

void serial_DataInit(void);
void serial_Iap(u8 iapMode);





#endif /* SERIAL_IAP_H_ */
