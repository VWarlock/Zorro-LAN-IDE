/*
  enc624j6l.h

  author: Henryk Richter <henryk.richter@gmx.net>

  purpose: header for low-level board access
           to memory mapped ENC624J600 networking 
           device

  note:    all functions are relative to the base pointer,
           determine IO space by a respective expansion.library
           call
*/
#ifndef _INC_ENC624J6L_H
#define _INC_ENC624J6L_H

#include "asminterface.h"

/*
  Defines: flags copied from PlipBox
*/
/* result values */
#define PIO_OK            0
#define PIO_NOT_FOUND     1
#define PIO_TOO_LARGE     2
#define PIO_IO_ERR        3

/* init flags */
#define PIO_INIT_FULL_DUPLEX    1
#define PIO_INIT_LOOP_BACK      2
#define PIO_INIT_BROAD_CAST     4
#define PIO_INIT_FLOW_CONTROL   8
#define PIO_INIT_MULTI_CAST     16
#define PIO_INIT_PROMISC        32

/* status flags */
#define PIO_STATUS_VERSION      0
#define PIO_STATUS_LINK_UP      1 

/* control ids */
#define PIO_CONTROL_FLOW        0



/*
  Purpose: check whether the board is operating as needed

  input:   board  - mmapped board base address

  output:  success/failure
            >0 - all fine
	   <=0 - problem (codes undefined yet)

  notes:   The Olimex module on the Matze/Scrat ZII IDE LAN CP prototype
           tends to boot in SPI mode instead of PSP (parallel) mode.
           That case is detected by writing/reading data. If both bytes
           of the words are equal to the last written byte, the board is likely
           showing this issue.

           Please note that this call will overwrite Board registers and
           buffer memory. Call before initialization.
*/
ASM SAVEDS int enc624j6l_CheckBoard( ASMR(a0) void *board ASMREG(a0) );


/*
  Purpose: obtain current MAC address
  input:   board  - mmapped board base address
           buffer - 6 bytes space to write into (network notation, big endian)
  output:  success/failure
            >0 - all fine
	   <=0 - problem (codes undefined yet)
*/
ASM SAVEDS int enc624j6l_GetMAC( ASMR(a0) void *board ASMREG(a0),
                                 ASMR(a1) unsigned char *buffer ASMREG(a1) );

/*
  Purpose: change current MAC address
  input:   board  - mmapped board base address
           buffer - 6 bytes space to read from (network notation, big endian)
  output:  success/failure
            >0 - all fine
	   <=0 - problem (codes undefined yet)
*/
ASM SAVEDS int enc624j6l_SetMAC( ASMR(a0) void *board ASMREG(a0),
                                 ASMR(a1) unsigned char *buffer ASMREG(a1) );

/*
  Purpose: delay at least the given amount of microseconds 
  input:   delay time in microseconds
  output:  -
*/
ASM SAVEDS void enc28j60l_UMinDelay(  
                         ASMR(d0) unsigned long udelay ASMREG(d0) );


/*
  Purpose: initialize a board

  input:   board  - mmapped board base address
           flags  - init flags (0 if in doubt)

  output:  success/failure
            >0 - all fine
	   <=0 - problem (codes undefined yet)

  notes:   
*/
ASM SAVEDS int enc624j6l_Init( ASMR(a0) void *board         ASMREG(a0),
                               ASMR(d1) unsigned long flags ASMREG(d1) );


/*
  Purpose: stop a board

  input:   board  - mmapped board base address

  output:  success/failure
            >0 - all fine
	   <=0 - problem (codes undefined yet)

  notes:   Shutdown means to disconnect the PHY, put the chip
           into low power mode and disable interrupts
           
*/
ASM SAVEDS int enc624j6l_Shutdown( ASMR(a0) void *board ASMREG(a0) );


/*
  Purpose: check for pending receive frames

  input:   board  - mmapped board base address

  output:  <0  - error
            0  - no pending frames
           >0  - number of pending frames

  notes:   
           
*/
ASM SAVEDS int enc624j6l_HaveRecv( ASMR(a0) void *board ASMREG(a0) );

/*
  Purpose: copy received frame to supplied buffer

  input:   board      - mmapped board base address
           buffer     - output buffer (should have >=1514 bytes)
           buffersize - size of buffer

  output:  <0  - error
            0  - nothing in receive buffer
           >0  - size of received frame

  notes:   
           
*/
ASM SAVEDS int enc624j6l_RecvFrame( ASMR(a0) void *board           ASMREG(a0),
                                    ASMR(a1) unsigned char* buffer ASMREG(a1),
                                    ASMR(d0) short buffersize      ASMREG(d0) );


/*
  Purpose: send single frame out

  input:   board      - mmapped board base address
           buffer     - output buffer (should have >=1514 bytes)
           sendsize   - size of buffer in bytes ( no CRC appended (!) )

  output:  <0  - error
            0  - nothing in receive buffer
           >0  - size of received frame

  notes:   
         
*/
ASM SAVEDS int enc624j6l_TransmitFrame( ASMR(a0) void *board           ASMREG(a0),
                                        ASMR(a1) unsigned char* buffer ASMREG(a1),
                                        ASMR(d0) short sendsize        ASMREG(d0) );


/*
  Purpose: enable RX/TX, perform autonegotiation etc.

  input:   board      - mmapped board base address

  output:  <0  - error
           >=0 - OK

  notes:   in current implementation, enc624j6l_Init() will 
           also attach the card to the line. So this
	   call is not exactly needed in the init phase.
*/
ASM SAVEDS int enc624j6l_SetOnline( ASMR(a0) void *board           ASMREG(a0) );


/*
  Purpose: disable RX/TX, power down

  input:   board      - mmapped board base address

  output:  <0  - error
           >=0 - OK

  notes:    
*/
ASM SAVEDS int enc624j6l_SetOffline( ASMR(a0) void *board           ASMREG(a0) );


/*
  Purpose: enable HW interrupt 

  input:   board      - mmapped board base address
           SigTask    - task to signal upon interrupt (or NULL)
	   SigBit     - Signal bit to send upon interrupt (or -1)
	   IntMask    - ENC HW interrupts to enable (set 0, for now) = RX PACKET only

  output:  <0  - error
           >=0 - OK

  notes:    
*/
ASM SAVEDS int enc624j6l_EnableInterrupt( ASMR(a0) void *board        ASMREG(a0),
                                          ASMR(a1) void* SigTask      ASMREG(a1),
                                          ASMR(d0) int   SigBit       ASMREG(d0),
                                          ASMR(d1) unsigned int IntMask ASMREG(d1) );


/*
  Purpose: disable HW interrupt 

  input:   board      - mmapped board base address

  output:  <0  - error
           >=0 - OK

  notes:    
*/
ASM SAVEDS int enc624j6l_DisableInterrupt( ASMR(a0) void *board        ASMREG(a0) );


/*
  Purpose: interrupt service routine ( after EnableInterrupt() )
  
  This function will signal the task passed at EnableInterrupt time with
  the given sigbit when at least one frame is pending.

  input:   -
  output:  -  
*/
ASM SAVEDS void enc624j6l_IntServer( void );


#endif /* _INC_ENC624J6L_H */
