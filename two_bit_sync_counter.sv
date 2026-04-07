module two_bit_sync_counter(
input logic x,clk,
output logic [2:0] q,
output logic y);

initial
begin
q=2'b00;
y=1'b0;
end

always_ff @(posedge clk) begin  // sync olmsının sebebi?

//{y,q}<=q+x;  //overflow ile output 

q[0]<=~q[0];
end

always_ff @(negedge q[0]) begin  // sync olmsının sebebi?

//{y,q}<=q+x;  //overflow ile output 

q[1]<=~q[1];
end

always_ff @(negedge q[1]) begin  // sync olmsının sebebi?

//{y,q}<=q+x;  //overflow ile output 

q[2]<=~q[2];
end



// pc counter a bak




endmodule
