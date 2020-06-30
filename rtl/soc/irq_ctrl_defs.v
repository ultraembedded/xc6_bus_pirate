
`define IRQ_ISR    8'h0

    `define IRQ_ISR_STATUS_DEFAULT    0
    `define IRQ_ISR_STATUS_B          0
    `define IRQ_ISR_STATUS_T          6
    `define IRQ_ISR_STATUS_W          7
    `define IRQ_ISR_STATUS_R          6:0

`define IRQ_IPR    8'h4

    `define IRQ_IPR_PENDING_DEFAULT    0
    `define IRQ_IPR_PENDING_B          0
    `define IRQ_IPR_PENDING_T          6
    `define IRQ_IPR_PENDING_W          7
    `define IRQ_IPR_PENDING_R          6:0

`define IRQ_IER    8'h8

    `define IRQ_IER_ENABLE_DEFAULT    0
    `define IRQ_IER_ENABLE_B          0
    `define IRQ_IER_ENABLE_T          6
    `define IRQ_IER_ENABLE_W          7
    `define IRQ_IER_ENABLE_R          6:0

`define IRQ_IAR    8'hc

    `define IRQ_IAR_ACK_DEFAULT    0
    `define IRQ_IAR_ACK_B          0
    `define IRQ_IAR_ACK_T          6
    `define IRQ_IAR_ACK_W          7
    `define IRQ_IAR_ACK_R          6:0

`define IRQ_SIE    8'h10

    `define IRQ_SIE_SET_DEFAULT    0
    `define IRQ_SIE_SET_B          0
    `define IRQ_SIE_SET_T          6
    `define IRQ_SIE_SET_W          7
    `define IRQ_SIE_SET_R          6:0

`define IRQ_CIE    8'h14

    `define IRQ_CIE_CLR_DEFAULT    0
    `define IRQ_CIE_CLR_B          0
    `define IRQ_CIE_CLR_T          6
    `define IRQ_CIE_CLR_W          7
    `define IRQ_CIE_CLR_R          6:0

`define IRQ_IVR    8'h18

    `define IRQ_IVR_VECTOR_DEFAULT    0
    `define IRQ_IVR_VECTOR_B          0
    `define IRQ_IVR_VECTOR_T          31
    `define IRQ_IVR_VECTOR_W          32
    `define IRQ_IVR_VECTOR_R          31:0

`define IRQ_MER    8'h1c

    `define IRQ_MER_ME      0
    `define IRQ_MER_ME_DEFAULT    0
    `define IRQ_MER_ME_B          0
    `define IRQ_MER_ME_T          0
    `define IRQ_MER_ME_W          1
    `define IRQ_MER_ME_R          0:0

