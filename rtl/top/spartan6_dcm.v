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
module spartan6_dcm
(
    // Inputs
     input           clkref_i

    // Outputs
    ,output          clkout0_o
);





wire clkref_buffered_w;
wire clkfb;
wire clk0;
wire clkfx;

// Input buffering
IBUFG IBUFG_IN
(
    .I (clkref_i),
    .O (clkref_buffered_w)
);

// Clocking primitive
DCM_SP
#(
    .CLKDV_DIVIDE(2.000),
    .CLKFX_DIVIDE(1),
    .CLKFX_MULTIPLY(8),
    .CLKIN_PERIOD(166.666666667),
    .CLKOUT_PHASE_SHIFT("NONE"),
    .CLK_FEEDBACK("1X"),
    .DESKEW_ADJUST("SYSTEM_SYNCHRONOUS"),
    .PHASE_SHIFT(0)
)
dcm_sp_inst
(
    .CLKIN(clkref_buffered_w),
    .CLKFB(clkfb),
    // Output clocks
    .CLK0(clk0), // 48MHz
    .CLK90(),
    .CLK180(),
    .CLK270(),
    .CLK2X(),
    .CLK2X180(),
    .CLKFX(clkfx),
    .CLKFX180(),
    .CLKDV(),
    // Ports for dynamic phase shift
    .PSCLK(1'b0),
    .PSEN(1'b0),
    .PSINCDEC(1'b0),
    .PSDONE(),
    // Other control and status signals,
    .LOCKED(),
    .STATUS(),
    .RST(1'b0),
    // Unused pin, tie low
    .DSSEN(1'b0)
);

BUFG clkfb_buf
(
    .I(clk0),
    .O(clkfb)
);

//-----------------------------------------------------------------
// CLK_OUT0
//-----------------------------------------------------------------
BUFG clkout0_buf
(
    .I(clkfx),
    .O(clkout0_o)
);

endmodule
