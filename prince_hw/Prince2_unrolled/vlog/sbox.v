//////////////////////////////////////////////////
// sBox
//
module  sbox  ( a , d , y ) ;


input   [0:3]  a ;  // 4-bit input
input          d ;  // Decryption enable

output  [0:3]  y ;  // 4-bit output

reg     [0:3]  y ;  // 4-bit output

// Output
always  @ ( * )
  case  ( { d , a } )
    5'h00  :  y  =  4'hB ;
    5'h01  :  y  =  4'hF ;
    5'h02  :  y  =  4'h3 ;
    5'h03  :  y  =  4'h2 ;
    5'h04  :  y  =  4'hA ;
    5'h05  :  y  =  4'hC ;
    5'h06  :  y  =  4'h9 ;
    5'h07  :  y  =  4'h1 ;
    5'h08  :  y  =  4'h6 ;
    5'h09  :  y  =  4'h7 ;
    5'h0A  :  y  =  4'h8 ;
    5'h0B  :  y  =  4'h0 ;
    5'h0C  :  y  =  4'hE ;
    5'h0D  :  y  =  4'h5 ;
    5'h0E  :  y  =  4'hD ;
    5'h0F  :  y  =  4'h4 ;
    5'h10  :  y  =  4'hB ;
    5'h11  :  y  =  4'h7 ;
    5'h12  :  y  =  4'h3 ;
    5'h13  :  y  =  4'h2 ;
    5'h14  :  y  =  4'hF ;
    5'h15  :  y  =  4'hD ;
    5'h16  :  y  =  4'h8 ;
    5'h17  :  y  =  4'h9 ;
    5'h18  :  y  =  4'hA ;
    5'h19  :  y  =  4'h6 ;
    5'h1A  :  y  =  4'h4 ;
    5'h1B  :  y  =  4'h0 ;
    5'h1C  :  y  =  4'h5 ;
    5'h1D  :  y  =  4'hE ;
    5'h1E  :  y  =  4'hC ;
    5'h1F  :  y  =  4'h1 ;
  endcase


endmodule

