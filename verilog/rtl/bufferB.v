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
