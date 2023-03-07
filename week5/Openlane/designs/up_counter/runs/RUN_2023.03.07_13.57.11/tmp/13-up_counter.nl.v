module up_counter (clk,
    en,
    reset,
    counter,
    countern);
 input clk;
 input en;
 input reset;
 output [3:0] counter;
 output [3:0] countern;

 wire _00_;
 wire _01_;
 wire _02_;
 wire _03_;
 wire _04_;
 wire _05_;
 wire _06_;
 wire _07_;
 wire _08_;
 wire _09_;
 wire _10_;
 wire net1;
 wire net2;
 wire net3;
 wire net4;
 wire net5;
 wire net6;
 wire net7;
 wire net8;
 wire net9;
 wire net10;
 wire clknet_0_clk;
 wire clknet_1_0__leaf_clk;
 wire clknet_1_1__leaf_clk;

 sky130_fd_sc_hd__and3_1 _11_ (.A(net1),
    .B(net4),
    .C(net3),
    .X(_08_));
 sky130_fd_sc_hd__and4_1 _12_ (.A(net5),
    .B(net1),
    .C(net4),
    .D(net3),
    .X(_09_));
 sky130_fd_sc_hd__o21ba_1 _13_ (.A1(net5),
    .A2(_08_),
    .B1_N(_09_),
    .X(_07_));
 sky130_fd_sc_hd__a21oi_1 _14_ (.A1(net1),
    .A2(net3),
    .B1(net4),
    .Y(_10_));
 sky130_fd_sc_hd__nor2_1 _15_ (.A(_08_),
    .B(_10_),
    .Y(_06_));
 sky130_fd_sc_hd__inv_2 _16_ (.A(net3),
    .Y(net7));
 sky130_fd_sc_hd__xor2_1 _17_ (.A(net1),
    .B(net3),
    .X(_05_));
 sky130_fd_sc_hd__inv_2 _18_ (.A(net6),
    .Y(net10));
 sky130_fd_sc_hd__xnor2_1 _19_ (.A(net10),
    .B(_09_),
    .Y(_04_));
 sky130_fd_sc_hd__inv_2 _20_ (.A(net4),
    .Y(net8));
 sky130_fd_sc_hd__inv_2 _21_ (.A(net5),
    .Y(net9));
 sky130_fd_sc_hd__inv_2 _22_ (.A(net2),
    .Y(_00_));
 sky130_fd_sc_hd__inv_2 _23_ (.A(net2),
    .Y(_01_));
 sky130_fd_sc_hd__inv_2 _24_ (.A(net2),
    .Y(_02_));
 sky130_fd_sc_hd__inv_2 _25_ (.A(net2),
    .Y(_03_));
 sky130_fd_sc_hd__dfrtp_1 _26_ (.CLK(clknet_1_1__leaf_clk),
    .D(_04_),
    .RESET_B(_00_),
    .Q(net6));
 sky130_fd_sc_hd__dfrtp_2 _27_ (.CLK(clknet_1_1__leaf_clk),
    .D(_05_),
    .RESET_B(_01_),
    .Q(net3));
 sky130_fd_sc_hd__dfrtp_1 _28_ (.CLK(clknet_1_0__leaf_clk),
    .D(_06_),
    .RESET_B(_02_),
    .Q(net4));
 sky130_fd_sc_hd__dfrtp_1 _29_ (.CLK(clknet_1_0__leaf_clk),
    .D(_07_),
    .RESET_B(_03_),
    .Q(net5));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_26 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_27 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_28 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_29 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_30 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_31 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 TAP_32 ();
 sky130_fd_sc_hd__dlymetal6s2s_1 input1 (.A(en),
    .X(net1));
 sky130_fd_sc_hd__clkbuf_2 input2 (.A(reset),
    .X(net2));
 sky130_fd_sc_hd__buf_2 output3 (.A(net3),
    .X(counter[0]));
 sky130_fd_sc_hd__buf_2 output4 (.A(net4),
    .X(counter[1]));
 sky130_fd_sc_hd__buf_2 output5 (.A(net5),
    .X(counter[2]));
 sky130_fd_sc_hd__buf_2 output6 (.A(net6),
    .X(counter[3]));
 sky130_fd_sc_hd__buf_2 output7 (.A(net7),
    .X(countern[0]));
 sky130_fd_sc_hd__buf_2 output8 (.A(net8),
    .X(countern[1]));
 sky130_fd_sc_hd__buf_2 output9 (.A(net9),
    .X(countern[2]));
 sky130_fd_sc_hd__buf_2 output10 (.A(net10),
    .X(countern[3]));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_0_clk (.A(clk),
    .X(clknet_0_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_0__f_clk (.A(clknet_0_clk),
    .X(clknet_1_0__leaf_clk));
 sky130_fd_sc_hd__clkbuf_16 clkbuf_1_1__f_clk (.A(clknet_0_clk),
    .X(clknet_1_1__leaf_clk));
endmodule
