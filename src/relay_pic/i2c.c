#include"i2c.h"

uint16_t i2cSlaveRecv; // Data received on i2c
uint16_t i2cSlaveSend; // Data to be sent on i2c

void i2c_slave_init(uint16_t address) {
    SSPSTAT = 0x80;
    SSPADD = address;
    SSPCON = 0x36;
    SSPCON2 = 0x01;
    TRISB1 = 1; // SDA
    TRISB4 = 1; // SCL
    GIE = 1;
    PEIE = 1;
    SSP1IF = 0;
    SSP1IE = 1;
}

void i2c_handle_interrupt(void) {
     uint16_t temp;
        SSPCONbits.CKP = 0;
       
        // If overflow or collision.
        if ((SSPCONbits.SSPOV) || (SSPCONbits.WCOL)) {
            temp = SSPBUF; // Read the previous value to clear the buffer
            SSPCONbits.SSPOV = 0; // Clear the overflow flag
            SSPCONbits.WCOL = 0;   // Clear the collision bit
            SSPCONbits.CKP = 1;
        }

        // If last byte was Address + write
        if (!SSPSTATbits.D_nA && !SSPSTATbits.R_nW) {
            temp = SSPBUF;
            while(!BF);
            i2cSlaveRecv = SSPBUF;
            SSPCONbits.CKP = 1;
            SSPM3 = 0;
       }
        
       // If last byte was Address + read
       else if(!SSPSTATbits.D_nA && SSPSTATbits.R_nW) {
           temp = SSPBUF;
           BF = 0;
           SSPBUF = i2cSlaveSend;
           SSPCONbits.CKP = 1;
           while(SSPSTATbits.BF);
       }
       
       SSP1IF = 0;
}