//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>
#include <stdint.h>
#define N       10
#define LEN     128
// Functions
// void some_asm_function();
void edit_string();
void swap_arr_elements();
void separate_elements();
void decode();
// Variables
// type g_some_c_variable;
char g_string[ LEN ] = "Ahoj.";
int64_t g_passwrd = 0x70617373776f7264;
char g_s_passwrd[8] = {0};
int64_t g_lng_arr[4] = {33,44,55,0x66554433221100};
int64_t g_long = 0x66554433221100;
int32_t g_int_up = 0;
int32_t g_int_down = 0;
void print_string() {
    for (int i = 0; i < 5; i++)
    {
        printf("%c",g_string[i]);
    }
    printf("\n\n");
}
void print_array() {
    for (int i = 0; i < 4; i++)
    {
        printf((i!=3)?"%ld ":"0x%lx",g_lng_arr[i]);
    }
    printf("\n\n");
}
void print_password() {
    printf("[ ");
    for (int i = 0; i < 8; i++)
    {
        printf("%c",g_s_passwrd[i]);
    }
   
    printf(" ]");
    printf("\n\n");
}
int main()
{
    //swap . with !
#if 0
    edit_string();
    print_string();
#endif    
    //swap 1st and snd
#if 0
    print_array();
    swap_arr_elements();
    print_array();
#endif
#if 0
    print_array();
    separate_elements();
    printf("int up:%x\n",g_int_up);
    printf("int down:%x\n\n",g_int_down);
#endif
#if 1
    decode();
    print_password();
#endif
    return 0;
}
