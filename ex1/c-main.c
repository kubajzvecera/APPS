#include <stdio.h>
#include <stdint.h>
uint32_t g_ip_int = 2663679810;
uint8_t g_ip_bytes[4];

uint8_t g_ip[4] = {158,196,135,66};

uint32_t g_ip_address = 0x9EC48742;

void convert_int_to_bytes();
void get_PTR_record();
void get_network_address();

int main() {
    #if 0
        convert_int_to_bytes();
        printf("IP adresa: %d.%d.%d.%d\n",g_ip_bytes[0],g_ip_bytes[1],g_ip_bytes[2],g_ip_bytes[3]);
    #endif
    #if 0
        printf("Puvodni adresa: %d.%d.%d.%d\n",g_ip[0],g_ip[1],g_ip[2],g_ip[3]);
        get_PTR_record();
        printf("Reverzni adresa: %d.%d.%d.%d\n",g_ip[0],g_ip[1],g_ip[2],g_ip[3]);
    #endif
    #if 1
    printf("Puvodni IP v hexa formatu: 0x%x\n",g_ip_address);
    get_network_address();
    printf("Adresa site v hexa formatu: 0x%x",g_ip_address);
    #endif
    return 0;
}