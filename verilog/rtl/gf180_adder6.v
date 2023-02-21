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
