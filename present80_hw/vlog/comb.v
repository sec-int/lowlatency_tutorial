//////////////////////////////////////////////////
// Combinational circuit block for PRESENT
//
module  comb  ( sp , kp , cnt , r0 , sn , kn ) ;


input   [0:63]  sp  ; // State in
input   [0:79]  kp  ; // Key in
input   [0:4]   cnt ; // Counter
input           r0  ; // Round-0 flag

output  [0:63]  sn  ; // State out
output  [0:79]  kn  ; // Key out

wire    [0:63]  ssb ; // Sbox output
wire    [0:63]  ssp ; // Permutation output
wire    [0:63]  sss ; // Select sbox or permutation
wire    [0:79]  kkr ; // Key schedule output
wire    [0:79]  kks ; // Select initial key or schedule output


// Sboxes on sp
sboxes  sb ( .a(sp) , .y(ssb) ) ;

// Permutation on ssb
perm  pm ( .inp(ssb) , .out(ssp) ) ;

// select sout
assign  sss  =  r0  ?  sp  :  ssp ;

// Kround
kr  kmod  ( .kinp(kp) , .cnt(cnt) , .kout(kkr) ) ;

// Select kout
assign  kks  =  r0  ?  kp  :  kkr ;

// Sout (sn)
assign  sn  =  sss  ^  kks[0:63] ;

// Kout (kn)
assign  kn  =  kks ;


endmodule

