
`define TIMER_CTRL0    8'h8

    `define TIMER_CTRL0_INTERRUPT      1
    `define TIMER_CTRL0_INTERRUPT_DEFAULT    0
    `define TIMER_CTRL0_INTERRUPT_B          1
    `define TIMER_CTRL0_INTERRUPT_T          1
    `define TIMER_CTRL0_INTERRUPT_W          1
    `define TIMER_CTRL0_INTERRUPT_R          1:1

    `define TIMER_CTRL0_ENABLE      2
    `define TIMER_CTRL0_ENABLE_DEFAULT    0
    `define TIMER_CTRL0_ENABLE_B          2
    `define TIMER_CTRL0_ENABLE_T          2
    `define TIMER_CTRL0_ENABLE_W          1
    `define TIMER_CTRL0_ENABLE_R          2:2

`define TIMER_CMP0    8'hc

    `define TIMER_CMP0_VALUE_DEFAULT    0
    `define TIMER_CMP0_VALUE_B          0
    `define TIMER_CMP0_VALUE_T          31
    `define TIMER_CMP0_VALUE_W          32
    `define TIMER_CMP0_VALUE_R          31:0

`define TIMER_VAL0    8'h10

    `define TIMER_VAL0_CURRENT_DEFAULT    0
    `define TIMER_VAL0_CURRENT_B          0
    `define TIMER_VAL0_CURRENT_T          31
    `define TIMER_VAL0_CURRENT_W          32
    `define TIMER_VAL0_CURRENT_R          31:0

`define TIMER_CTRL1    8'h14

    `define TIMER_CTRL1_INTERRUPT      1
    `define TIMER_CTRL1_INTERRUPT_DEFAULT    0
    `define TIMER_CTRL1_INTERRUPT_B          1
    `define TIMER_CTRL1_INTERRUPT_T          1
    `define TIMER_CTRL1_INTERRUPT_W          1
    `define TIMER_CTRL1_INTERRUPT_R          1:1

    `define TIMER_CTRL1_ENABLE      2
    `define TIMER_CTRL1_ENABLE_DEFAULT    0
    `define TIMER_CTRL1_ENABLE_B          2
    `define TIMER_CTRL1_ENABLE_T          2
    `define TIMER_CTRL1_ENABLE_W          1
    `define TIMER_CTRL1_ENABLE_R          2:2

`define TIMER_CMP1    8'h18

    `define TIMER_CMP1_VALUE_DEFAULT    0
    `define TIMER_CMP1_VALUE_B          0
    `define TIMER_CMP1_VALUE_T          31
    `define TIMER_CMP1_VALUE_W          32
    `define TIMER_CMP1_VALUE_R          31:0

`define TIMER_VAL1    8'h1c

    `define TIMER_VAL1_CURRENT_DEFAULT    0
    `define TIMER_VAL1_CURRENT_B          0
    `define TIMER_VAL1_CURRENT_T          31
    `define TIMER_VAL1_CURRENT_W          32
    `define TIMER_VAL1_CURRENT_R          31:0

