#ifndef FIRMWARE_H  
#define FIRMWARE_H  
#include <stdlib.h> // For _ERROR (assuming it's defined somewhere)  
#include <string.h> // For strcmp  
#include <time.h> // For time functions  

#include "./base/eth_recv_send.h"
#include "./base/info_manager.h"
#include "configures.h"




typedef void (*Dealer)(const char* listened_interface, const char* msg);  

typedef struct {  
    Dealer deal_func;  
    char msg[MAX_MSG_LEN];
	char* listened_interface;
} DealData; 


int receive_message(const char *source_interface,Dealer deal,long max_waiting_time);

int send_message(const char *source_interface,const char *message);



#endif
