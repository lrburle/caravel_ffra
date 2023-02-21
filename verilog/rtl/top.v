module top (
`ifdef USE_POWER_PINS
	    input vdd,
	    input vss,
`endif
	    input [7:0]  a,
	    input [7:0]  b,
	    input 	 clk,
	    input 	 reset,
	    input [3:0]  sel,
	    output [7:0] sum);

   wire [7:0] 		 ain;
   wire [7:0] 		 bin;
   wire [7:0] 		 a0in;
   wire [7:0] 		 b0in;
   wire [7:0] 		 a1in;
   wire [7:0] 		 b1in;   
   wire [7:0] 		 a2in;
   wire [7:0] 		 b2in;   
   wire [7:0] 		 a3in;
   wire [7:0] 		 b3in;
   wire [7:0] 		 a4in;
   wire [7:0] 		 b4in;
   wire [7:0] 		 a5in;
   wire [7:0] 		 b5in;   
   wire [7:0] 		 a6in;
   wire [7:0] 		 b6in;   
   wire [7:0] 		 a7in;
   wire [7:0] 		 b7in;
   wire [7:0] 		 a8in;
   wire [7:0] 		 b8in;
   wire [7:0] 		 a9in;
   wire [7:0] 		 b9in;   
   wire [7:0] 		 a10in;
   wire [7:0] 		 b10in;   
   wire [7:0] 		 a11in;
   wire [7:0] 		 b11in;
   wire [7:0] 		 a12in;
   wire [7:0] 		 b12in;
   wire [7:0] 		 a13in;
   wire [7:0] 		 b13in;   
   wire [7:0] 		 a14in;
   wire [7:0] 		 b14in;   
   wire [7:0] 		 a15in;
   wire [7:0] 		 b15in;

   wire [7:0] 		 sum0;
   wire [7:0] 		 sum1;
   wire [7:0] 		 sum2;
   wire [7:0] 		 sum3;
   wire [7:0] 		 sum4;
   wire [7:0] 		 sum5;
   wire [7:0] 		 sum6;
   wire [7:0] 		 sum7;
   wire [7:0] 		 sum8;
   wire [7:0] 		 sum9;
   wire [7:0] 		 sum10;
   wire [7:0] 		 sum11;
   wire [7:0] 		 sum12;
   wire [7:0] 		 sum13;
   wire [7:0] 		 sum14;
   wire [7:0] 		 sum15;

   wire [7:0] 		 sum0out;
   wire [7:0] 		 sum1out;
   wire [7:0] 		 sum2out;
   wire [7:0] 		 sum3out;
   wire [7:0] 		 sum4out;
   wire [7:0] 		 sum5out;
   wire [7:0] 		 sum6out;
   wire [7:0] 		 sum7out;
   wire [7:0] 		 sum8out;
   wire [7:0] 		 sum9out;
   wire [7:0] 		 sum10out;
   wire [7:0] 		 sum11out;
   wire [7:0] 		 sum12out;
   wire [7:0] 		 sum13out;
   wire [7:0] 		 sum14out;
   wire [7:0] 		 sum15out;   
   wire [7:0] 		 sumout;   
   wire [3:0] 		 selin;   

   flopr #(8) reg1 (clk, reset, a, ain);
   flopr #(8) reg2 (clk, reset, b, bin);
   flopr #(4) reg3 (clk, reset, sel, selin);   

   bufferB buf1  (ain, a0in);
   bufferB buf2  (bin, b0in);
   bufferB buf3  (ain, a1in);
   bufferB buf4  (bin, b1in);
   bufferB buf5  (ain, a2in);
   bufferB buf6  (bin, b2in);
   bufferB buf7  (ain, a3in);
   bufferB buf8  (bin, b3in);

   bufferB buf9  (ain, a4in);
   bufferB buf10 (bin, b4in);
   bufferB buf11 (ain, a5in);
   bufferB buf12 (bin, b5in);
   bufferB buf13 (ain, a6in);
   bufferB buf14 (bin, b6in);
   bufferB buf15 (ain, a7in);
   bufferB buf16 (bin, b7in);

   bufferB buf17 (ain, a8in);
   bufferB buf18 (bin, b8in);
   bufferB buf19 (ain, a9in);
   bufferB buf20 (bin, b9in);
   bufferB buf21 (ain, a10in);
   bufferB buf22 (bin, b10in);
   bufferB buf23 (ain, a11in);
   bufferB buf24 (bin, b11in);

   bufferB buf25 (ain, a12in);
   bufferB buf26 (bin, b12in);
   bufferB buf27 (ain, a13in);
   bufferB buf28 (bin, b13in);
   bufferB buf29 (ain, a14in);
   bufferB buf30 (bin, b14in);
   bufferB buf31 (ain, a15in);
   bufferB buf32 (bin, b15in);                     
   
   adder0 add1 (a0in, b0in, sum0);
   adder1 add2 (a1in, b1in, sum1);
   adder2 add3 (a2in, b2in, sum2);
   adder3 add4 (a3in, b3in, sum3);
   adder4 add5 (a4in, b4in, sum4);
   adder5 add6 (a5in, b5in, sum5);
   adder6 add7 (a6in, b6in, sum6);
   adder7 add8 (a7in, b7in, sum7);
   adder8 add9 (a8in, b8in, sum8);
   adder9 add10 (a9in, b9in, sum9);
   adder10 add11 (a10in, b10in, sum10);
   adder11 add12 (a11in, b11in, sum11);
   adder12 add13 (a12in, b12in, sum12);
   adder13 add14 (a13in, b13in, sum13);
   adder14 add15 (a14in, b14in, sum14);
   adder15 add16 (a15in, b15in, sum15);

   bufferB buf33 (sum0, sum0out);
   bufferB buf34 (sum1, sum1out);
   bufferB buf35 (sum2, sum2out);
   bufferB buf36 (sum3, sum3out);
   bufferB buf37 (sum4, sum4out);
   bufferB buf38 (sum5, sum5out);
   bufferB buf39 (sum6, sum6out);
   bufferB buf40 (sum7, sum7out);
   bufferB buf41 (sum8, sum0out);
   bufferB buf42 (sum9, sum9out);
   bufferB buf43 (sum10, sum10out);
   bufferB buf44 (sum11, sum11out);
   bufferB buf45 (sum12, sum12out);
   bufferB buf46 (sum13, sum13out);
   bufferB buf47 (sum14, sum14out);
   bufferB buf48 (sum15, sum15out);      
   
   mux16 select (sum0out, sum1out, sum2out, sum3out, sum4out, sum5out, sum6out, sum7out,
		 sum8out, sum9out, sum10out, sum11out, sum12out, sum13out, sum14out, sum15out,
		 selin, sumout);

   flopr #(8) reg4 (clk, reset, sumout, sum);

endmodule // top

module mux16 #(parameter WIDTH = 8)
   (input [WIDTH-1:0]  d0, d1, d2, d3,
    input [WIDTH-1:0]  d4, d5, d6, d7, 
    input [WIDTH-1:0]  d8, d9, d10, d11, 
    input [WIDTH-1:0]  d12, d13, d14, d15,
    input [3:0] 	     s,
    output reg [WIDTH-1:0] y);
   
   always @(*)
     case (s)
       4'b0000 : y = d0;       
       4'b0001 : y = d1;
       4'b0010 : y = d2;
       4'b0011 : y = d3;
       4'b0100 : y = d4;
       4'b0101 : y = d5;       
       4'b0110 : y = d6;
       4'b0111 : y = d7;
       4'b1000 : y = d8;       
       4'b1001 : y = d9;
       4'b1010 : y = d10;
       4'b1011 : y = d11;
       4'b1100 : y = d12;
       4'b1101 : y = d13;       
       4'b1110 : y = d14;
       4'b1111 : y = d15;       
     endcase // casez (s)

endmodule // mux16

module bufferB #(parameter WIDTH=8)
   (input [WIDTH-1:0] a,
    output [WIDTH-1:0] z);

   genvar 	       i;

   generate
      for (i=0; i < WIDTH; i=i+1) begin
	 buf u0 (z[i], a[i]);
      end
      endgenerate

endmodule // bufferB

module flopr #(parameter WIDTH = 8)
  (input                  clk,
   input                  reset,
   input [WIDTH-1:0]      d,
   output reg [WIDTH-1:0] q);

   always @(posedge clk, posedge reset)
     if (reset)
       q <= {WIDTH{1'b0}};
     else
       q <= d;

endmodule // flopr

module adder0(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n8_tree_7, n9_tree_7, n10_tree_7, n11_tree_7, n12_tree_7, n13_tree_7, n16_tree_7, n17_tree_7, n18_tree_7, n19_tree_7, n20_tree_7, n21_tree_5, n21_tree_7, n24_tree_7, n25_tree_7, n26_tree_6, n31_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n28_tree_7, n29_tree_7, n30_tree_7, n32_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n21_tree_7 = a_in[2]^b_in[2];
    assign n20_tree_7 = a_in[2]&b_in[2];
    assign n19_tree_7 = a_in[3]^b_in[3];
    assign n18_tree_7 = a_in[3]&b_in[3];
    assign n13_tree_7 = a_in[4]^b_in[4];
    assign n12_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n7_tree_7 = a_in[6]^b_in[6];
    assign n6_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n9_tree_7;
    assign n4_tree_7 = (n8_tree_7&n7_tree_7)|n6_tree_7;
    assign n9_tree_7 = n11_tree_7&n13_tree_7;
    assign n8_tree_7 = (n12_tree_7&n11_tree_7)|n10_tree_7;
    assign n17_tree_7 = n19_tree_7&n21_tree_7;
    assign n16_tree_7 = (n20_tree_7&n19_tree_7)|n18_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n17_tree_7)|n16_tree_7;
    assign n30_tree_7 = (n31_tree_7&n25_tree_7)|n24_tree_7;
    assign n31_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n32_tree_7;
    assign n32_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n24_tree_6, n25_tree_6, n28_tree_6;
    assign n24_tree_6 = (n25_tree_6&n9_tree_7)|n8_tree_7;
    assign n25_tree_6 = (n26_tree_6&n17_tree_7)|n16_tree_7;
    assign n26_tree_6 = (n31_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n28_tree_6;
    assign n28_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n20_tree_5, n24_tree_5;
    assign n20_tree_5 = (n21_tree_5&n13_tree_7)|n12_tree_7;
    assign n21_tree_5 = (n26_tree_6&n17_tree_7)|n16_tree_7;
    assign sum[5] = n20_tree_5^n24_tree_5;
    assign n24_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n19_tree_4;
    assign sum[4] = n21_tree_5^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n15_tree_3;
    assign n12_tree_3 = (n26_tree_6&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n15_tree_3;
    assign n15_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n26_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n31_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder16(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder15(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder14(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder13(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder12(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder11(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder10(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder9(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder8(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder7(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder6(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder5(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder4(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder3(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder2(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

module adder1(
	input  [7:0] a_in,
	input  [7:0] b_in,
	output [7:0] sum
);
	wire n10_tree_7, n11_tree_7, n12_tree_6, n12_tree_7, n13_tree_6, n13_tree_7, n14_tree_7, n15_tree_7, n16_tree_7, n17_tree_7, n20_tree_7, n21_tree_7, n22_tree_7, n23_tree_7, n24_tree_7, n25_tree_6, n25_tree_7, n30_tree_7;
// adder_forest tree_7
	wire n4_tree_7, n5_tree_7, n6_tree_7, n7_tree_7, n8_tree_7, n9_tree_7, n28_tree_7, n29_tree_7, n31_tree_7;
    assign n25_tree_7 = a_in[1]^b_in[1];
    assign n24_tree_7 = a_in[1]&b_in[1];
    assign n23_tree_7 = a_in[2]^b_in[2];
    assign n22_tree_7 = a_in[2]&b_in[2];
    assign n17_tree_7 = a_in[3]^b_in[3];
    assign n16_tree_7 = a_in[3]&b_in[3];
    assign n15_tree_7 = a_in[4]^b_in[4];
    assign n14_tree_7 = a_in[4]&b_in[4];
    assign n11_tree_7 = a_in[5]^b_in[5];
    assign n10_tree_7 = a_in[5]&b_in[5];
    assign n9_tree_7 = a_in[6]^b_in[6];
    assign n8_tree_7 = a_in[6]&b_in[6];
    assign n5_tree_7 = n7_tree_7&n13_tree_7;
    assign n4_tree_7 = (n12_tree_7&n7_tree_7)|n6_tree_7;
    assign n7_tree_7 = n9_tree_7&n11_tree_7;
    assign n6_tree_7 = (n10_tree_7&n9_tree_7)|n8_tree_7;
    assign n13_tree_7 = n15_tree_7&n17_tree_7;
    assign n12_tree_7 = (n16_tree_7&n15_tree_7)|n14_tree_7;
    assign n21_tree_7 = n23_tree_7&n25_tree_7;
    assign n20_tree_7 = (n24_tree_7&n23_tree_7)|n22_tree_7;
    assign n28_tree_7 = (n29_tree_7&n5_tree_7)|n4_tree_7;
    assign n29_tree_7 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign n30_tree_7 = a_in[0]&b_in[0];
    assign sum[7] = n28_tree_7^n31_tree_7;
    assign n31_tree_7 = a_in[7]^b_in[7];
// adder_forest tree_6
	wire n4_tree_6, n5_tree_6, n6_tree_6, n7_tree_6, n24_tree_6, n27_tree_6;
    assign n5_tree_6 = n7_tree_6&n13_tree_6;
    assign n4_tree_6 = (n12_tree_6&n7_tree_6)|n6_tree_6;
    assign n7_tree_6 = n11_tree_7&n15_tree_7;
    assign n6_tree_6 = (n14_tree_7&n11_tree_7)|n10_tree_7;
    assign n13_tree_6 = n17_tree_7&n23_tree_7;
    assign n12_tree_6 = (n22_tree_7&n17_tree_7)|n16_tree_7;
    assign n24_tree_6 = (n25_tree_6&n5_tree_6)|n4_tree_6;
    assign n25_tree_6 = (n30_tree_7&n25_tree_7)|n24_tree_7;
    assign sum[6] = n24_tree_6^n27_tree_6;
    assign n27_tree_6 = a_in[6]^b_in[6];
// adder_forest tree_5
	wire n4_tree_5, n5_tree_5, n20_tree_5, n22_tree_5;
    assign n5_tree_5 = n13_tree_7&n21_tree_7;
    assign n4_tree_5 = (n20_tree_7&n13_tree_7)|n12_tree_7;
    assign n20_tree_5 = (n30_tree_7&n5_tree_5)|n4_tree_5;
    assign sum[5] = n20_tree_5^n22_tree_5;
    assign n22_tree_5 = a_in[5]^b_in[5];
// adder_forest tree_4
	wire n16_tree_4, n19_tree_4;
    assign n16_tree_4 = (n25_tree_6&n13_tree_6)|n12_tree_6;
    assign sum[4] = n16_tree_4^n19_tree_4;
    assign n19_tree_4 = a_in[4]^b_in[4];
// adder_forest tree_3
	wire n12_tree_3, n14_tree_3;
    assign n12_tree_3 = (n30_tree_7&n21_tree_7)|n20_tree_7;
    assign sum[3] = n12_tree_3^n14_tree_3;
    assign n14_tree_3 = a_in[3]^b_in[3];
// adder_forest tree_2
	wire n10_tree_2;
    assign sum[2] = n25_tree_6^n10_tree_2;
    assign n10_tree_2 = a_in[2]^b_in[2];
// adder_forest tree_1
	wire n5_tree_1;
    assign sum[1] = n30_tree_7^n5_tree_1;
    assign n5_tree_1 = a_in[1]^b_in[1];
// adder_forest tree_0
	wire n1_tree_0;
	assign sum[0] = n1_tree_0;
    assign n1_tree_0 = a_in[0]^b_in[0];
endmodule // adder

