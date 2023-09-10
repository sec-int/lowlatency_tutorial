//////////////////////////////////////////////////
// Top module
//
module  ptop  ( st , inp , key , d , out , clk ) ;


input            st  ;
input   [0:63]   inp ;
input   [0:127]  key ;
input            d   ;
input            clk  ;

output  [0:63]   out   ;

reg              sti   ;
reg     [0:63]   inpi  ;
reg     [0:127]  keyi  ;
reg              di    ;
wire    [0:63]   outi  ;
reg     [0:63]   out   ;


// Input regs
always  @ ( posedge clk )  sti   <=  st  ;
always  @ ( posedge clk )  inpi  <=  inp ;
always  @ ( posedge clk )  keyi  <=  key ;
always  @ ( posedge clk )  di    <=  d   ;

// Core
pcore  u_core  ( .st( sti ) , .d( di ) , .inp( inpi ) , .key( keyi ) , .out( outi ) , .clk( clk ) ) ;

// Output regs
always  @ ( posedge clk )  out  <=  outi ;


endmodule
//////////////////////////////////////////////////

