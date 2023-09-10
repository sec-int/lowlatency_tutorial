//////////////////////////////////////////////////
// PRESENT SBoxes module
//
module  sboxes  ( a , y ) ;


input   [0:63]  a ;  // 128-bit input A

output  [0:63]  y ;  // 128-bit output Y

wire    [0:3]  ba  [0:15] ;  // Input bytes
wire    [0:3]  by  [0:15] ;  // Output bytes


// Split input into bytes
assign  ba[0]   =  a[0:3] ;
assign  ba[1]   =  a[4:7] ;
assign  ba[2]   =  a[8:11] ;
assign  ba[3]   =  a[12:15] ;
assign  ba[4]   =  a[16:19] ;
assign  ba[5]   =  a[20:23] ;
assign  ba[6]   =  a[24:27] ;
assign  ba[7]   =  a[28:31] ;
assign  ba[8]   =  a[32:35] ;
assign  ba[9]   =  a[36:39] ;
assign  ba[10]  =  a[40:43] ;
assign  ba[11]  =  a[44:47] ;
assign  ba[12]  =  a[48:51] ;
assign  ba[13]  =  a[52:55] ;
assign  ba[14]  =  a[56:59] ;
assign  ba[15]  =  a[60:63] ;

// Sbox modules
sbox  m00  ( .a(ba[0])  , .y(by[0])  ) ;
sbox  m01  ( .a(ba[1])  , .y(by[1])  ) ;
sbox  m02  ( .a(ba[2])  , .y(by[2])  ) ;
sbox  m03  ( .a(ba[3])  , .y(by[3])  ) ;
sbox  m04  ( .a(ba[4])  , .y(by[4])  ) ;
sbox  m05  ( .a(ba[5])  , .y(by[5])  ) ;
sbox  m06  ( .a(ba[6])  , .y(by[6])  ) ;
sbox  m07  ( .a(ba[7])  , .y(by[7])  ) ;
sbox  m08  ( .a(ba[8])  , .y(by[8])  ) ;
sbox  m09  ( .a(ba[9])  , .y(by[9])  ) ;
sbox  m10  ( .a(ba[10]) , .y(by[10]) ) ;
sbox  m11  ( .a(ba[11]) , .y(by[11]) ) ;
sbox  m12  ( .a(ba[12]) , .y(by[12]) ) ;
sbox  m13  ( .a(ba[13]) , .y(by[13]) ) ;
sbox  m14  ( .a(ba[14]) , .y(by[14]) ) ;
sbox  m15  ( .a(ba[15]) , .y(by[15]) ) ;

// Join output bytes
assign  y  =  { by[0]  , by[1]  , by[2]  , by[3]  ,
                by[4]  , by[5]  , by[6]  , by[7]  ,
                by[8]  , by[9]  , by[10] , by[11] ,
                by[12] , by[13] , by[14] , by[15] } ;


endmodule

