//////////////////////////////////////////////////
// Prince enc/dec module
//
module  pcore  ( st , d , inp , key , out , clk ) ;


// Inputs
input           st  ;
input           d   ;
input   [0:63]  inp ;
input   [0:127] key ;
input           clk ;

// Outputs
output  [0:63]  out ;

// Internal wires
wire             act   ;
wire    [0:1]    s     ;
wire    [0:2]    cnt   ;
wire    [0:63]   k0    ;
wire    [0:63]   k0p   ;
wire    [0:63]   k1    ;
wire    [0:63]   alpha ;
reg     [0:63]   sr    ;
reg     [0:63]   rc    ;
wire    [0:63]   irclk  ;
wire    [0:63]   rndi  ;
wire    [0:63]   sx    ;
wire    [0:63]   krcd  ;
wire    [0:63]   srinv ;
wire    [0:63]   mxi   ;
wire    [0:63]   mxo   ;
wire    [0:63]   srm   ;
wire    [0:63]   krce  ;
wire    [0:63]   isx   ;
wire    [0:63]   rout  ;

// Control signals
cntrl  u_ctrl  ( .st( st ) , .act( act ) , .s( s ) , .cnt( cnt ) , .clk( clk ) ) ;

// Key expansion
assign  k0   =  key[0:63] ;
assign  k0p  =  { key[63] , key[0:61] , key[62] ^ key[0] } ;
assign  k1   =  key[64:127] ;

// Constant
assign  alpha  =  64'hc0ac29b7c97c50dd ;

// State register
always  @ ( posedge clk )  if  ( act )  sr  <=  rout ;

// Round constant
always  @ ( * )
  casex  ( cnt )
    3'b000  :  rc  =  64'h13198a2e03707344 ;
    3'b001  :  rc  =  64'ha4093822299f31d0 ;
    3'b010  :  rc  =  64'h082efa98ec4e6c89 ;
    3'b011  :  rc  =  64'h452821e638d01377 ;
    3'b100  :  rc  =  64'hbe5466cf34e90c6c ;
    default :  rc  =  {64{1'bx}} ;
  endcase

// Init
assign  irclk  =  inp  ^  ( d  ?  ( k0p ^ alpha )  :  k0 )  ^  k1 ;
assign  rndi   =  st  ?  irclk  :  sr ;

// S-boxes
sbox  sb0  ( .a( rndi[00:03] ) , .d( 1'b0 ) , .y( sx[00:03] ) ) ;
sbox  sb1  ( .a( rndi[04:07] ) , .d( 1'b0 ) , .y( sx[04:07] ) ) ;
sbox  sb2  ( .a( rndi[08:11] ) , .d( 1'b0 ) , .y( sx[08:11] ) ) ;
sbox  sb3  ( .a( rndi[12:15] ) , .d( 1'b0 ) , .y( sx[12:15] ) ) ;
sbox  sb4  ( .a( rndi[16:19] ) , .d( 1'b0 ) , .y( sx[16:19] ) ) ;
sbox  sb5  ( .a( rndi[20:23] ) , .d( 1'b0 ) , .y( sx[20:23] ) ) ;
sbox  sb6  ( .a( rndi[24:27] ) , .d( 1'b0 ) , .y( sx[24:27] ) ) ;
sbox  sb7  ( .a( rndi[28:31] ) , .d( 1'b0 ) , .y( sx[28:31] ) ) ;
sbox  sb8  ( .a( rndi[32:35] ) , .d( 1'b0 ) , .y( sx[32:35] ) ) ;
sbox  sb9  ( .a( rndi[36:39] ) , .d( 1'b0 ) , .y( sx[36:39] ) ) ;
sbox  sba  ( .a( rndi[40:43] ) , .d( 1'b0 ) , .y( sx[40:43] ) ) ;
sbox  sbb  ( .a( rndi[44:47] ) , .d( 1'b0 ) , .y( sx[44:47] ) ) ;
sbox  sbc  ( .a( rndi[48:51] ) , .d( 1'b0 ) , .y( sx[48:51] ) ) ;
sbox  sbd  ( .a( rndi[52:55] ) , .d( 1'b0 ) , .y( sx[52:55] ) ) ;
sbox  sbe  ( .a( rndi[56:59] ) , .d( 1'b0 ) , .y( sx[56:59] ) ) ;
sbox  sbf  ( .a( rndi[60:63] ) , .d( 1'b0 ) , .y( sx[60:63] ) ) ;

// Dec key and RC addition
assign  krcd  =  rndi  ^  rc  ^  ( d ? 64'd0 : alpha )  ^  k1 ;

// Rotated input for mixlayer
assign  srinv  =  { krcd[00:03] , krcd[52:55] , krcd[40:43] , krcd[28:31] ,
                    krcd[16:19] , krcd[04:07] , krcd[56:59] , krcd[44:47] ,
					krcd[32:35] , krcd[20:23] , krcd[08:11] , krcd[60:63] ,
					krcd[48:51] , krcd[36:39] , krcd[24:27] , krcd[12:15] } ;

// Mixlayer
assign  mxi  =  s[0]  ?  sx  :  srinv ;
mixt  mml  ( .a( mxi ) , .y( mxo ) ) ;

// Rotated output of mixlayer
assign  srm  =  { mxo[00:03] , mxo[20:23] , mxo[40:43] , mxo[60:63] ,
                  mxo[16:19] , mxo[36:39] , mxo[56:59] , mxo[12:15] ,
			      mxo[32:35] , mxo[52:55] , mxo[08:11] , mxo[28:31] ,
				  mxo[48:51] , mxo[04:07] , mxo[24:27] , mxo[44:47] } ;

// Enc key and RC addition
assign  krce  =  srm  ^  rc  ^  ( d ? alpha : 64'd0 )  ^  k1 ;

// Inverse S-boxes
sbox  isb0  ( .a( mxo[00:03] ) , .d( 1'b1 ) , .y( isx[00:03] ) ) ;
sbox  isb1  ( .a( mxo[04:07] ) , .d( 1'b1 ) , .y( isx[04:07] ) ) ;
sbox  isb2  ( .a( mxo[08:11] ) , .d( 1'b1 ) , .y( isx[08:11] ) ) ;
sbox  isb3  ( .a( mxo[12:15] ) , .d( 1'b1 ) , .y( isx[12:15] ) ) ;
sbox  isb4  ( .a( mxo[16:19] ) , .d( 1'b1 ) , .y( isx[16:19] ) ) ;
sbox  isb5  ( .a( mxo[20:23] ) , .d( 1'b1 ) , .y( isx[20:23] ) ) ;
sbox  isb6  ( .a( mxo[24:27] ) , .d( 1'b1 ) , .y( isx[24:27] ) ) ;
sbox  isb7  ( .a( mxo[28:31] ) , .d( 1'b1 ) , .y( isx[28:31] ) ) ;
sbox  isb8  ( .a( mxo[32:35] ) , .d( 1'b1 ) , .y( isx[32:35] ) ) ;
sbox  isb9  ( .a( mxo[36:39] ) , .d( 1'b1 ) , .y( isx[36:39] ) ) ;
sbox  isba  ( .a( mxo[40:43] ) , .d( 1'b1 ) , .y( isx[40:43] ) ) ;
sbox  isbb  ( .a( mxo[44:47] ) , .d( 1'b1 ) , .y( isx[44:47] ) ) ;
sbox  isbc  ( .a( mxo[48:51] ) , .d( 1'b1 ) , .y( isx[48:51] ) ) ;
sbox  isbd  ( .a( mxo[52:55] ) , .d( 1'b1 ) , .y( isx[52:55] ) ) ;
sbox  isbe  ( .a( mxo[56:59] ) , .d( 1'b1 ) , .y( isx[56:59] ) ) ;
sbox  isbf  ( .a( mxo[60:63] ) , .d( 1'b1 ) , .y( isx[60:63] ) ) ;

// Select state register input
assign  rout  =  s[1]  ?  krce  : isx ;

// Assign output
assign  out  =  sr  ^  ( d  ?  k0  :  ( k0p ^ alpha ) )  ^  k1 ;


endmodule

