
`define GPIO_DIRECTION    8'h0

    `define GPIO_DIRECTION_OUTPUT_DEFAULT    0
    `define GPIO_DIRECTION_OUTPUT_B          0
    `define GPIO_DIRECTION_OUTPUT_T          31
    `define GPIO_DIRECTION_OUTPUT_W          32
    `define GPIO_DIRECTION_OUTPUT_R          31:0

`define GPIO_INPUT    8'h4

    `define GPIO_INPUT_VALUE_DEFAULT    0
    `define GPIO_INPUT_VALUE_B          0
    `define GPIO_INPUT_VALUE_T          31
    `define GPIO_INPUT_VALUE_W          32
    `define GPIO_INPUT_VALUE_R          31:0

`define GPIO_OUTPUT    8'h8

    `define GPIO_OUTPUT_DATA_DEFAULT    0
    `define GPIO_OUTPUT_DATA_B          0
    `define GPIO_OUTPUT_DATA_T          31
    `define GPIO_OUTPUT_DATA_W          32
    `define GPIO_OUTPUT_DATA_R          31:0

`define GPIO_OUTPUT_SET    8'hc

    `define GPIO_OUTPUT_SET_DATA_DEFAULT    0
    `define GPIO_OUTPUT_SET_DATA_B          0
    `define GPIO_OUTPUT_SET_DATA_T          31
    `define GPIO_OUTPUT_SET_DATA_W          32
    `define GPIO_OUTPUT_SET_DATA_R          31:0

`define GPIO_OUTPUT_CLR    8'h10

    `define GPIO_OUTPUT_CLR_DATA_DEFAULT    0
    `define GPIO_OUTPUT_CLR_DATA_B          0
    `define GPIO_OUTPUT_CLR_DATA_T          31
    `define GPIO_OUTPUT_CLR_DATA_W          32
    `define GPIO_OUTPUT_CLR_DATA_R          31:0

`define GPIO_INT_MASK    8'h14

    `define GPIO_INT_MASK_ENABLE_DEFAULT    0
    `define GPIO_INT_MASK_ENABLE_B          0
    `define GPIO_INT_MASK_ENABLE_T          31
    `define GPIO_INT_MASK_ENABLE_W          32
    `define GPIO_INT_MASK_ENABLE_R          31:0

`define GPIO_INT_SET    8'h18

    `define GPIO_INT_SET_SW_IRQ_DEFAULT    0
    `define GPIO_INT_SET_SW_IRQ_B          0
    `define GPIO_INT_SET_SW_IRQ_T          31
    `define GPIO_INT_SET_SW_IRQ_W          32
    `define GPIO_INT_SET_SW_IRQ_R          31:0

`define GPIO_INT_CLR    8'h1c

    `define GPIO_INT_CLR_ACK_DEFAULT    0
    `define GPIO_INT_CLR_ACK_B          0
    `define GPIO_INT_CLR_ACK_T          31
    `define GPIO_INT_CLR_ACK_W          32
    `define GPIO_INT_CLR_ACK_R          31:0

`define GPIO_INT_STATUS    8'h20

    `define GPIO_INT_STATUS_RAW_DEFAULT    0
    `define GPIO_INT_STATUS_RAW_B          0
    `define GPIO_INT_STATUS_RAW_T          31
    `define GPIO_INT_STATUS_RAW_W          32
    `define GPIO_INT_STATUS_RAW_R          31:0

`define GPIO_INT_LEVEL    8'h24

    `define GPIO_INT_LEVEL_ACTIVE_HIGH_DEFAULT    0
    `define GPIO_INT_LEVEL_ACTIVE_HIGH_B          0
    `define GPIO_INT_LEVEL_ACTIVE_HIGH_T          31
    `define GPIO_INT_LEVEL_ACTIVE_HIGH_W          32
    `define GPIO_INT_LEVEL_ACTIVE_HIGH_R          31:0

`define GPIO_INT_MODE    8'h28

    `define GPIO_INT_MODE_EDGE_DEFAULT    0
    `define GPIO_INT_MODE_EDGE_B          0
    `define GPIO_INT_MODE_EDGE_T          31
    `define GPIO_INT_MODE_EDGE_W          32
    `define GPIO_INT_MODE_EDGE_R          31:0

