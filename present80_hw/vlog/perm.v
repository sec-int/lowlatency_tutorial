//////////////////////////////////////////////////
// Permutation block for PRESENT
//
module  perm  ( inp , out ) ;


input   [0:63]   inp ;  // 64-bit input

output  [0:63]   out ;  // 64-bit output


// Permutation
assign  out  =  { inp[00],inp[04],inp[08],inp[12],inp[16],inp[20],inp[24],inp[28], 
                  inp[32],inp[36],inp[40],inp[44],inp[48],inp[52],inp[56],inp[60], 
                  inp[01],inp[05],inp[09],inp[13],inp[17],inp[21],inp[25],inp[29], 
                  inp[33],inp[37],inp[41],inp[45],inp[49],inp[53],inp[57],inp[61], 
                  inp[02],inp[06],inp[10],inp[14],inp[18],inp[22],inp[26],inp[30], 
                  inp[34],inp[38],inp[42],inp[46],inp[50],inp[54],inp[58],inp[62], 
                  inp[03],inp[07],inp[11],inp[15],inp[19],inp[23],inp[27],inp[31], 
                  inp[35],inp[39],inp[43],inp[47],inp[51],inp[55],inp[59],inp[63] } ;


endmodule

