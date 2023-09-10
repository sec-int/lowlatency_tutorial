//////////////////////////////////////////////////
// Prince enc/dec module
//
module  pcore  ( d , inp , key , out ) ;


// Inputs
input           d   ;
input   [0:63]  inp ;
input   [0:127] key ;

// Outputs
output  [0:63]  out ;

// Internal wires
wire    [0:63]   k0    ;
wire    [0:63]   k0p   ;
wire    [0:63]   k1    ;
wire    [0:63]   alpha ;
wire    [0:63]   rc     [0:4] ;
wire    [0:63]   rndi  ;
wire    [0:63]   irndi ;
wire    [0:63]   sm    ;
wire    [0:63]   mxm   ;
wire    [0:63]   sx     [0:9] ;
wire    [0:63]   sxi    [0:4] ;
wire    [0:63]   mxi    [0:9] ;
wire    [0:63]   mxo    [0:9] ;
wire    [0:63]   mxr    [0:9] ;

// Key expansion
assign  k0   =  key[0:63] ;
assign  k0p  =  { key[63] , key[0:61] , key[62] ^ key[0] } ;
assign  k1   =  key[64:127] ;

// Constant
assign  alpha  =  64'hc0ac29b7c97c50dd ;

// Round constant
assign  rc[0]  =  64'h13198a2e03707344 ;
assign  rc[1]  =  64'ha4093822299f31d0 ;
assign  rc[2]  =  64'h082efa98ec4e6c89 ;
assign  rc[3]  =  64'h452821e638d01377 ;
assign  rc[4]  =  64'hbe5466cf34e90c6c ;

// Init
assign  rndi  =  inp  ^  ( d  ?  ( k0p ^ alpha )  :  k0 )  ^  k1 ;

// Round 1
// S-boxes
genvar  j1 ;
generate
  for  ( j1  =  0 ;  j1  <  16 ;  j1  =  j1 + 1 )
    begin  :  inst_sbox
       sbox  u_sb  ( .a( rndi[4*j1:(4*j1+3)] ) , .d( 1'b0 ) , .y( sx[0][4*j1:(4*j1+3)] ) ) ;
    end
endgenerate

assign  mxi[0] = sx[0] ;

// Mixlayer
mixt  mml  ( .a( mxi[0] ) , .y( mxo[0] ) ) ;

// Rotated output of mixlayer
assign  mxr[0]  =  { mxo[0][00:03] , mxo[0][20:23] , mxo[0][40:43] , mxo[0][60:63] ,
                     mxo[0][16:19] , mxo[0][36:39] , mxo[0][56:59] , mxo[0][12:15] ,
                     mxo[0][32:35] , mxo[0][52:55] , mxo[0][08:11] , mxo[0][28:31] ,
                     mxo[0][48:51] , mxo[0][04:07] , mxo[0][24:27] , mxo[0][44:47] } ;

// Key and RC addition
assign  sxi[0]  =  mxr[0]  ^  rc[0]  ^  ( d ? alpha : 64'd0 )  ^  k1 ;

// Rounds 2-5
// S-boxes
genvar  i1 ;
genvar  j2 ;
generate
  for  ( i1  =  1 ;  i1  <  5 ;  i1  =  i1 + 1 )
    begin  :  inst_rnd
      for  ( j2  =  0 ;  j2  <  16 ;  j2  =  j2 + 1 )
        begin  :  inst_sbox_rnd
          sbox  u_sb_r  ( .a( sxi[i1-1][4*j2:(4*j2+3)] ) , .d( 1'b0 ) , .y( sx[i1][4*j2:(4*j2+3)] ) ) ;
        end

      assign  mxi[i1] = sx[i1] ;

      // Mixlayer
      mixt  mml  ( .a( mxi[i1] ) , .y( mxo[i1] ) ) ;

      // Rotated output of mixlayer
      assign  mxr[i1]  =  { mxo[i1][00:03] , mxo[i1][20:23] , mxo[i1][40:43] , mxo[i1][60:63] ,
                            mxo[i1][16:19] , mxo[i1][36:39] , mxo[i1][56:59] , mxo[i1][12:15] ,
                            mxo[i1][32:35] , mxo[i1][52:55] , mxo[i1][08:11] , mxo[i1][28:31] ,
                            mxo[i1][48:51] , mxo[i1][04:07] , mxo[i1][24:27] , mxo[i1][44:47] } ;

      // Key and RC addition
      assign  sxi[i1]  =  mxr[i1]  ^  rc[i1]  ^  ( d ? alpha : 64'd0 )  ^  k1 ;
    end
endgenerate

// Mid layer
genvar  m1 ;
generate
  for  ( m1  =  0 ;  m1  <  16 ;  m1  =  m1 + 1 )
    begin  :  inst_sbox_mid
      sbox  u_sb_m  ( .a( sxi[4][4*m1:(4*m1+3)] ) , .d( 1'b0 ) , .y( sm[4*m1:(4*m1+3)] ) ) ;
    end
endgenerate
mixt  mml_m   ( .a( sm ) , .y( mxm ) ) ;
genvar  m2 ;
generate
  for  ( m2  =  0 ;  m2  <  16 ;  m2  =  m2 + 1 )
    begin  :  inst_isbox_mid
      sbox  u_isb_m  ( .a( mxm[4*m2:(4*m2+3)] ) , .d( 1'b1 ) , .y( irndi[4*m2:(4*m2+3)] ) ) ;
    end
endgenerate

// Round 6
// Key and RC addition
assign  mxi[5]  =  irndi  ^  rc[4]  ^  ( d ? 64'd0 : alpha )  ^  k1 ;

// Rotated output of mixlayer
assign  mxr[5]  =  { mxi[5][00:03] , mxi[5][52:55] , mxi[5][40:43] , mxi[5][28:31] ,
                     mxi[5][16:19] , mxi[5][04:07] , mxi[5][56:59] , mxi[5][44:47] ,
                     mxi[5][32:35] , mxi[5][20:23] , mxi[5][08:11] , mxi[5][60:63] ,
                     mxi[5][48:51] , mxi[5][36:39] , mxi[5][24:27] , mxi[5][12:15] } ;
// Mixlayer
mixt  mmli  ( .a( mxr[5] ) , .y( mxo[5] ) ) ;
// S-boxes
genvar  j3 ;
generate
  for  ( j3  =  0 ;  j3  <  16 ;  j3  =  j3 + 1 )
    begin  :  inst_sbox_inv
      sbox  u_isb  ( .a( mxo[5][4*j3:(4*j3+3)] ) , .d( 1'b1 ) , .y( sx[5][4*j3:(4*j3+3)] ) ) ;
    end
endgenerate

// Rounds 7-10
genvar  i2 ;
genvar  j4 ;
generate
  for  ( i2  =  6 ;  i2  <  10 ;  i2  =  i2 + 1 )
    begin  :  inst_rnd_inv
      // Key and RC addition
      assign  mxi[i2]  =  sx[i2-1]  ^  rc[9-i2]  ^  ( d ? 64'd0 : alpha )  ^  k1 ;

      // Rotated output of mixlayer
      assign  mxr[i2]  =  { mxi[i2][00:03] , mxi[i2][52:55] , mxi[i2][40:43] , mxi[i2][28:31] ,
                            mxi[i2][16:19] , mxi[i2][04:07] , mxi[i2][56:59] , mxi[i2][44:47] ,
                            mxi[i2][32:35] , mxi[i2][20:23] , mxi[i2][08:11] , mxi[i2][60:63] ,
                            mxi[i2][48:51] , mxi[i2][36:39] , mxi[i2][24:27] , mxi[i2][12:15] } ;
      // Mixlayer
      mixt  mmli  ( .a( mxr[i2] ) , .y( mxo[i2] ) ) ;
      // S-boxes
      for  ( j4  =  0 ;  j4  <  16 ;  j4  =  j4 + 1 )
        begin  :  inst_sbox_inv_rnd
          sbox  u_isb_r  ( .a( mxo[i2][4*j4:(4*j4+3)] ) , .d( 1'b1 ) , .y( sx[i2][4*j4:(4*j4+3)] ) ) ;
        end
    end
endgenerate

// Assign output
assign  out  =  sx[9]  ^  ( d  ?  k0  :  ( k0p ^ alpha ) )  ^  k1 ;


endmodule

