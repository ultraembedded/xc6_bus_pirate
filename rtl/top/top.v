//-----------------------------------------------------------------
//                       XC6 Bus Pirate
//                           V0.2
//                     Ultra-Embedded.com
//                     Copyright 2013-2020
//
//                 Email: admin@ultra-embedded.com
//
//                         License: GPL
// If you would like a version with a more permissive license for
// use in closed source commercial applications please contact me
// for details.
//-----------------------------------------------------------------
//
// This file is open source HDL; you can redistribute it and/or 
// modify it under the terms of the GNU General Public License as 
// published by the Free Software Foundation; either version 2 of 
// the License, or (at your option) any later version.
//
// This file is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public 
// License along with this file; if not, write to the Free Software
// Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307
// USA
//-----------------------------------------------------------------

//-----------------------------------------------------------------
// TOP
//-----------------------------------------------------------------
module top
(
    // 6MHz clock
    input           clk,

    // USB
    output          usb_speed,
    output          usb_vpo,
    output          usb_vmo,
    input           usb_vm,
    input           usb_vp,
    input           usb_rx,
    output          usb_oe,
    output          usb_mode,
    output          usb_en,

    // UART
    input           tx,
    output          rx,

    // GPIO
    inout [7:0]     io,

    // LED
    output          led,

    // SPI-Flash
    output          flash_cs,
    output          flash_si,
    input           flash_so,
    output          flash_sck
);

//-----------------------------------------------------------------
// Clocking
//-----------------------------------------------------------------
wire clk_w;

spartan6_dcm
u_dcm
(
    .clkref_i(clk),
    .clkout0_o(clk_w)
);

//-----------------------------------------------------------------
// Reset
//-----------------------------------------------------------------
wire rst_w;

reset_gen
u_rst
(
    .clk_i(clk_w),
    .rst_o(rst_w)
);

//-----------------------------------------------------------------
// Core
//-----------------------------------------------------------------
wire        spi_clk_w;
wire        spi_so_w;
wire        spi_si_w;
wire [7:0]  spi_cs_w;

wire [31:0] gpio_out_w;
wire [31:0] gpio_out_en_w;
wire [31:0] gpio_in_w;

fpga_top
u_top
(
     .clk_i(clk_w)
    ,.rst_i(rst_w)

    // SPI
    ,.spi_clk_o(spi_clk_w)
    ,.spi_mosi_o(spi_si_w)
    ,.spi_miso_i(spi_so_w)
    ,.spi_cs_o(spi_cs_w)

    // GPIO
    ,.gpio_input_i(gpio_in_w)
    ,.gpio_output_o(gpio_out_w)
    ,.gpio_output_enable_o(gpio_out_en_w)

    // USB
    ,.usb_rx_rcv_i(usb_rx)
    ,.usb_rx_dp_i(usb_vp)
    ,.usb_rx_dn_i(usb_vm)
    ,.usb_tx_dp_o(usb_vpo)
    ,.usb_tx_dn_o(usb_vmo)
    ,.usb_tx_oen_o(usb_oe)
    ,.usb_en_o(usb_en)
);

assign flash_sck = spi_clk_w;
assign flash_si  = spi_si_w;
assign flash_cs  = spi_cs_w[0];
assign spi_so_w  = flash_so;

assign gpio_in_w = {24'b0, io};

genvar i;
generate  
for (i = 0; i < 8; i = i + 1)
begin
    assign io[i] = gpio_out_en_w[i] ? gpio_out_w[i] : 1'bz;
end
endgenerate

//-----------------------------------------------------------------
// External Interface
//-----------------------------------------------------------------

// USB
assign usb_speed    = 1'b1; // USB_SPEED_O
assign usb_mode     = 1'b1; // USB_MODE_O

assign rx           = 1'b1;
assign led          = gpio_out_w[0];

endmodule
