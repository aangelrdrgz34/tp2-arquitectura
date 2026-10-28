// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
// Date        : Sun Sep 13 12:13:34 2026
// Host        : DESKTOP-ANGH4RU running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/tp_arquitectura/arquitectura_de_comp_TP/arquitectura_de_comp_TP.sim/sim_1/synth/timing/xsim/tb_alu_time_synth.v
// Design      : ALU_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ALU
   (\alu_op_a_reg[3] ,
    O,
    \alu_op_a_reg[7] ,
    S,
    \alu_op_a_reg[7]_0 ,
    \leds_OBUF[2]_inst_i_3 ,
    \w_data[0]_i_5 ,
    \w_data[4]_i_5 ,
    \leds_OBUF[2]_inst_i_3_0 );
  output [3:0]\alu_op_a_reg[3] ;
  output [3:0]O;
  output [0:0]\alu_op_a_reg[7] ;
  output [3:0]S;
  output [3:0]\alu_op_a_reg[7]_0 ;
  input [7:0]\leds_OBUF[2]_inst_i_3 ;
  input [3:0]\w_data[0]_i_5 ;
  input [3:0]\w_data[4]_i_5 ;
  input [7:0]\leds_OBUF[2]_inst_i_3_0 ;

  wire [3:0]O;
  wire [3:0]S;
  wire [3:0]\alu_op_a_reg[3] ;
  wire [0:0]\alu_op_a_reg[7] ;
  wire [3:0]\alu_op_a_reg[7]_0 ;
  wire [7:0]\leds_OBUF[2]_inst_i_3 ;
  wire [7:0]\leds_OBUF[2]_inst_i_3_0 ;
  wire \o_result0_inferred__0/i__carry__0_n_0 ;
  wire \o_result0_inferred__0/i__carry__0_n_1 ;
  wire \o_result0_inferred__0/i__carry__0_n_2 ;
  wire \o_result0_inferred__0/i__carry__0_n_3 ;
  wire \o_result0_inferred__0/i__carry_n_0 ;
  wire \o_result0_inferred__0/i__carry_n_1 ;
  wire \o_result0_inferred__0/i__carry_n_2 ;
  wire \o_result0_inferred__0/i__carry_n_3 ;
  wire [3:0]\w_data[0]_i_5 ;
  wire [3:0]\w_data[4]_i_5 ;
  wire [3:0]\NLW_o_result0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_o_result0_inferred__0/i__carry__1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \leds_OBUF[2]_inst_i_10 
       (.I0(\leds_OBUF[2]_inst_i_3 [2]),
        .I1(\leds_OBUF[2]_inst_i_3_0 [2]),
        .O(S[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \leds_OBUF[2]_inst_i_11 
       (.I0(\leds_OBUF[2]_inst_i_3 [1]),
        .I1(\leds_OBUF[2]_inst_i_3_0 [1]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h6)) 
    \leds_OBUF[2]_inst_i_12 
       (.I0(\leds_OBUF[2]_inst_i_3 [0]),
        .I1(\leds_OBUF[2]_inst_i_3_0 [0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \leds_OBUF[2]_inst_i_5 
       (.I0(\leds_OBUF[2]_inst_i_3 [7]),
        .I1(\leds_OBUF[2]_inst_i_3_0 [7]),
        .O(\alu_op_a_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \leds_OBUF[2]_inst_i_6 
       (.I0(\leds_OBUF[2]_inst_i_3 [6]),
        .I1(\leds_OBUF[2]_inst_i_3_0 [6]),
        .O(\alu_op_a_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h6)) 
    \leds_OBUF[2]_inst_i_7 
       (.I0(\leds_OBUF[2]_inst_i_3 [5]),
        .I1(\leds_OBUF[2]_inst_i_3_0 [5]),
        .O(\alu_op_a_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \leds_OBUF[2]_inst_i_8 
       (.I0(\leds_OBUF[2]_inst_i_3 [4]),
        .I1(\leds_OBUF[2]_inst_i_3_0 [4]),
        .O(\alu_op_a_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h6)) 
    \leds_OBUF[2]_inst_i_9 
       (.I0(\leds_OBUF[2]_inst_i_3 [3]),
        .I1(\leds_OBUF[2]_inst_i_3_0 [3]),
        .O(S[3]));
  CARRY4 \o_result0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\o_result0_inferred__0/i__carry_n_0 ,\o_result0_inferred__0/i__carry_n_1 ,\o_result0_inferred__0/i__carry_n_2 ,\o_result0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI(\leds_OBUF[2]_inst_i_3 [3:0]),
        .O(\alu_op_a_reg[3] ),
        .S(\w_data[0]_i_5 ));
  CARRY4 \o_result0_inferred__0/i__carry__0 
       (.CI(\o_result0_inferred__0/i__carry_n_0 ),
        .CO({\o_result0_inferred__0/i__carry__0_n_0 ,\o_result0_inferred__0/i__carry__0_n_1 ,\o_result0_inferred__0/i__carry__0_n_2 ,\o_result0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\leds_OBUF[2]_inst_i_3 [7:4]),
        .O(O),
        .S(\w_data[4]_i_5 ));
  CARRY4 \o_result0_inferred__0/i__carry__1 
       (.CI(\o_result0_inferred__0/i__carry__0_n_0 ),
        .CO(\NLW_o_result0_inferred__0/i__carry__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_o_result0_inferred__0/i__carry__1_O_UNCONNECTED [3:1],\alu_op_a_reg[7] }),
        .S({1'b0,1'b0,1'b0,1'b1}));
endmodule

(* NotValidForBitStream *)
(* \DesignAttr:TELEMETRY_DATA  = "{\n  \"Design Flow Data\": {\n    \"Design Data\": {\n      \"Design Mode\": \"Project flow\",\n      \"Top Methodology\": \"Verilog\"\n    },\n    \"Synthesis\": {\n      \"Run Time\": \"46.739000 seconds\"\n    }\n  }\n}" *) 
module ALU_top
   (clk,
    rst,
    rx,
    tx,
    leds);
  input clk;
  input rst;
  input rx;
  output tx;
  output [2:0]leds;

  wire INTERFACE_n_17;
  wire INTERFACE_n_18;
  wire INTERFACE_n_19;
  wire INTERFACE_n_20;
  wire INTERFACE_n_29;
  wire INTERFACE_n_30;
  wire INTERFACE_n_31;
  wire INTERFACE_n_32;
  wire INTERFACE_n_33;
  wire INTERFACE_n_34;
  wire INTERFACE_n_35;
  wire INTERFACE_n_36;
  wire MON_ALU_n_0;
  wire MON_ALU_n_1;
  wire MON_ALU_n_10;
  wire MON_ALU_n_11;
  wire MON_ALU_n_12;
  wire MON_ALU_n_13;
  wire MON_ALU_n_14;
  wire MON_ALU_n_15;
  wire MON_ALU_n_16;
  wire MON_ALU_n_2;
  wire MON_ALU_n_3;
  wire MON_ALU_n_5;
  wire MON_ALU_n_6;
  wire MON_ALU_n_7;
  wire MON_ALU_n_9;
  wire RX_n_1;
  wire RX_n_10;
  wire RX_n_11;
  wire RX_n_12;
  wire RX_n_13;
  wire RX_n_2;
  wire RX_n_3;
  wire RX_n_4;
  wire RX_n_5;
  wire RX_n_6;
  wire RX_n_7;
  wire RX_n_8;
  wire RX_n_9;
  wire TX_n_2;
  wire [7:0]alu_a_wire;
  wire [7:0]alu_b_wire;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire data1;
  wire [2:0]leds;
  wire [2:0]leds_OBUF;
  wire [7:7]next_b;
  wire p_1_in;
  wire rst;
  wire rst_IBUF;
  wire rx;
  wire rx_IBUF;
  wire [0:0]state;
  wire [1:1]state_0;
  wire tick_wire;
  wire tx;
  wire tx_OBUF;
  wire tx_start_wire;
  wire [6:0]w_data;

initial begin
 $sdf_annotate("tb_alu_time_synth.sdf",,,,"tool_control");
end
  baud_rate_generator BRG
       (.CLK(clk_IBUF_BUFG),
        .tick_wire(tick_wire));
  intf INTERFACE
       (.CLK(clk_IBUF_BUFG),
        .D(next_b),
        .E(RX_n_2),
        .\FSM_onehot_state_reg[0]_0 (RX_n_1),
        .\FSM_onehot_state_reg[0]_1 (TX_n_2),
        .\FSM_onehot_state_reg[3]_0 ({INTERFACE_n_33,INTERFACE_n_34,INTERFACE_n_35,INTERFACE_n_36}),
        .O({p_1_in,MON_ALU_n_5,MON_ALU_n_6,MON_ALU_n_7}),
        .Q(w_data),
        .S({MON_ALU_n_9,MON_ALU_n_10,MON_ALU_n_11,MON_ALU_n_12}),
        .SR(rst_IBUF),
        .\alu_op_a_reg[3]_0 ({INTERFACE_n_29,INTERFACE_n_30,INTERFACE_n_31,INTERFACE_n_32}),
        .\alu_op_a_reg[7]_0 (alu_a_wire),
        .\alu_op_a_reg[7]_1 ({RX_n_6,RX_n_7,RX_n_8,RX_n_9,RX_n_10,RX_n_11,RX_n_12,RX_n_13}),
        .\alu_op_a_reg[7]_2 (RX_n_3),
        .\alu_op_b_reg[7]_0 ({INTERFACE_n_17,INTERFACE_n_18,INTERFACE_n_19,INTERFACE_n_20}),
        .\alu_op_b_reg[7]_1 (alu_b_wire),
        .\alu_opcode_reg[0]_0 (RX_n_4),
        .\leds[1] (data1),
        .leds_OBUF(leds_OBUF),
        .state(state_0),
        .state_0(state),
        .tx_start_reg_0(RX_n_5),
        .tx_start_wire(tx_start_wire),
        .\w_data[4]_i_4_0 ({MON_ALU_n_13,MON_ALU_n_14,MON_ALU_n_15,MON_ALU_n_16}),
        .\w_data_reg[3]_i_2_0 ({MON_ALU_n_0,MON_ALU_n_1,MON_ALU_n_2,MON_ALU_n_3}));
  ALU MON_ALU
       (.O({p_1_in,MON_ALU_n_5,MON_ALU_n_6,MON_ALU_n_7}),
        .S({MON_ALU_n_9,MON_ALU_n_10,MON_ALU_n_11,MON_ALU_n_12}),
        .\alu_op_a_reg[3] ({MON_ALU_n_0,MON_ALU_n_1,MON_ALU_n_2,MON_ALU_n_3}),
        .\alu_op_a_reg[7] (data1),
        .\alu_op_a_reg[7]_0 ({MON_ALU_n_13,MON_ALU_n_14,MON_ALU_n_15,MON_ALU_n_16}),
        .\leds_OBUF[2]_inst_i_3 (alu_a_wire),
        .\leds_OBUF[2]_inst_i_3_0 (alu_b_wire),
        .\w_data[0]_i_5 ({INTERFACE_n_29,INTERFACE_n_30,INTERFACE_n_31,INTERFACE_n_32}),
        .\w_data[4]_i_5 ({INTERFACE_n_17,INTERFACE_n_18,INTERFACE_n_19,INTERFACE_n_20}));
  uart_rx RX
       (.CLK(clk_IBUF_BUFG),
        .D(rx_IBUF),
        .E(RX_n_2),
        .Q({RX_n_6,RX_n_7,RX_n_8,RX_n_9,RX_n_10,RX_n_11,RX_n_12,RX_n_13}),
        .SR(rst_IBUF),
        .\alu_opcode_reg[0] ({INTERFACE_n_34,INTERFACE_n_35,INTERFACE_n_36}),
        .\state_reg[0]_0 (state),
        .\state_reg[0]_1 (RX_n_3),
        .\state_reg[0]_2 (RX_n_4),
        .\state_reg[0]_3 (RX_n_5),
        .tick_reg(RX_n_1),
        .tick_wire(tick_wire));
  uart_tx TX
       (.CLK(clk_IBUF_BUFG),
        .D(next_b),
        .\FSM_onehot_state_reg[0] (INTERFACE_n_33),
        .\FSM_onehot_state_reg[3] (TX_n_2),
        .Q(w_data),
        .\state_reg[1]_0 (state_0),
        .tick_wire(tick_wire),
        .tx_OBUF(tx_OBUF),
        .tx_start_wire(tx_start_wire));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \leds_OBUF[0]_inst 
       (.I(leds_OBUF[0]),
        .O(leds[0]));
  OBUF \leds_OBUF[1]_inst 
       (.I(leds_OBUF[1]),
        .O(leds[1]));
  OBUF \leds_OBUF[2]_inst 
       (.I(leds_OBUF[2]),
        .O(leds[2]));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  IBUF rx_IBUF_inst
       (.I(rx),
        .O(rx_IBUF));
  OBUF tx_OBUF_inst
       (.I(tx_OBUF),
        .O(tx));
endmodule

module baud_rate_generator
   (tick_wire,
    CLK);
  output tick_wire;
  input CLK;

  wire CLK;
  wire [8:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[8]_i_2_n_0 ;
  wire \counter[8]_i_3_n_0 ;
  wire \counter[8]_i_4_n_0 ;
  wire tick_wire;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[3]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[5]_i_1 
       (.I0(counter[5]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(counter[0]),
        .I5(counter[4]),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[6]_i_1 
       (.I0(counter[6]),
        .I1(counter[4]),
        .I2(\counter[8]_i_4_n_0 ),
        .I3(counter[5]),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[7]_i_1 
       (.I0(counter[7]),
        .I1(counter[5]),
        .I2(\counter[8]_i_4_n_0 ),
        .I3(counter[4]),
        .I4(counter[6]),
        .O(\counter[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0040)) 
    \counter[8]_i_1 
       (.I0(counter[4]),
        .I1(counter[6]),
        .I2(counter[8]),
        .I3(\counter[8]_i_3_n_0 ),
        .O(\counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \counter[8]_i_2 
       (.I0(counter[8]),
        .I1(counter[6]),
        .I2(counter[4]),
        .I3(\counter[8]_i_4_n_0 ),
        .I4(counter[5]),
        .I5(counter[7]),
        .O(\counter[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \counter[8]_i_3 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[5]),
        .I3(counter[2]),
        .I4(counter[3]),
        .I5(counter[7]),
        .O(\counter[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[8]_i_4 
       (.I0(counter[3]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[0]),
        .O(\counter[8]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(\counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(\counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(\counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]),
        .R(\counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]),
        .R(\counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]),
        .R(\counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[8]_i_2_n_0 ),
        .Q(counter[8]),
        .R(\counter[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[8]_i_1_n_0 ),
        .Q(tick_wire),
        .R(1'b0));
endmodule

module intf
   (tx_start_wire,
    D,
    Q,
    \alu_op_a_reg[7]_0 ,
    \alu_op_b_reg[7]_0 ,
    \alu_op_b_reg[7]_1 ,
    \alu_op_a_reg[3]_0 ,
    \FSM_onehot_state_reg[3]_0 ,
    leds_OBUF,
    tx_start_reg_0,
    CLK,
    state,
    S,
    \w_data[4]_i_4_0 ,
    \FSM_onehot_state_reg[0]_0 ,
    state_0,
    \FSM_onehot_state_reg[0]_1 ,
    SR,
    E,
    \alu_op_a_reg[7]_1 ,
    \alu_op_a_reg[7]_2 ,
    \alu_opcode_reg[0]_0 ,
    O,
    \leds[1] ,
    \w_data_reg[3]_i_2_0 );
  output tx_start_wire;
  output [0:0]D;
  output [6:0]Q;
  output [7:0]\alu_op_a_reg[7]_0 ;
  output [3:0]\alu_op_b_reg[7]_0 ;
  output [7:0]\alu_op_b_reg[7]_1 ;
  output [3:0]\alu_op_a_reg[3]_0 ;
  output [3:0]\FSM_onehot_state_reg[3]_0 ;
  output [2:0]leds_OBUF;
  input tx_start_reg_0;
  input CLK;
  input [0:0]state;
  input [3:0]S;
  input [3:0]\w_data[4]_i_4_0 ;
  input \FSM_onehot_state_reg[0]_0 ;
  input [0:0]state_0;
  input \FSM_onehot_state_reg[0]_1 ;
  input [0:0]SR;
  input [0:0]E;
  input [7:0]\alu_op_a_reg[7]_1 ;
  input [0:0]\alu_op_a_reg[7]_2 ;
  input [0:0]\alu_opcode_reg[0]_0 ;
  input [3:0]O;
  input [0:0]\leds[1] ;
  input [3:0]\w_data_reg[3]_i_2_0 ;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[0]_0 ;
  wire \FSM_onehot_state_reg[0]_1 ;
  wire [3:0]\FSM_onehot_state_reg[3]_0 ;
  wire [3:0]O;
  wire [6:0]Q;
  wire [3:0]S;
  wire [0:0]SR;
  wire [3:0]\alu_op_a_reg[3]_0 ;
  wire [7:0]\alu_op_a_reg[7]_0 ;
  wire [7:0]\alu_op_a_reg[7]_1 ;
  wire [0:0]\alu_op_a_reg[7]_2 ;
  wire [3:0]\alu_op_b_reg[7]_0 ;
  wire [7:0]\alu_op_b_reg[7]_1 ;
  wire [5:0]alu_opcode;
  wire [0:0]\alu_opcode_reg[0]_0 ;
  wire data0;
  wire [6:6]data6;
  wire [6:6]data7;
  wire [0:0]\leds[1] ;
  wire [2:0]leds_OBUF;
  wire \leds_OBUF[0]_inst_i_2_n_0 ;
  wire \leds_OBUF[0]_inst_i_3_n_0 ;
  wire \leds_OBUF[0]_inst_i_4_n_0 ;
  wire \leds_OBUF[0]_inst_i_5_n_0 ;
  wire \leds_OBUF[0]_inst_i_6_n_0 ;
  wire \leds_OBUF[2]_inst_i_2_n_0 ;
  wire \leds_OBUF[2]_inst_i_3_n_0 ;
  wire \leds_OBUF[2]_inst_i_3_n_1 ;
  wire \leds_OBUF[2]_inst_i_3_n_2 ;
  wire \leds_OBUF[2]_inst_i_3_n_3 ;
  wire \leds_OBUF[2]_inst_i_3_n_5 ;
  wire \leds_OBUF[2]_inst_i_3_n_6 ;
  wire \leds_OBUF[2]_inst_i_3_n_7 ;
  wire \leds_OBUF[2]_inst_i_4_n_0 ;
  wire \leds_OBUF[2]_inst_i_4_n_1 ;
  wire \leds_OBUF[2]_inst_i_4_n_2 ;
  wire \leds_OBUF[2]_inst_i_4_n_3 ;
  wire \leds_OBUF[2]_inst_i_4_n_4 ;
  wire \leds_OBUF[2]_inst_i_4_n_5 ;
  wire \leds_OBUF[2]_inst_i_4_n_6 ;
  wire \leds_OBUF[2]_inst_i_4_n_7 ;
  wire p_1_in2_in;
  wire [0:0]state;
  wire [0:0]state_0;
  wire tx_start_reg_0;
  wire tx_start_wire;
  wire [7:7]w_data;
  wire \w_data[0]_i_1_n_0 ;
  wire \w_data[0]_i_3_n_0 ;
  wire \w_data[0]_i_4_n_0 ;
  wire \w_data[0]_i_5_n_0 ;
  wire \w_data[0]_i_6_n_0 ;
  wire \w_data[0]_i_7_n_0 ;
  wire \w_data[1]_i_1_n_0 ;
  wire \w_data[1]_i_4_n_0 ;
  wire \w_data[1]_i_5_n_0 ;
  wire \w_data[1]_i_6_n_0 ;
  wire \w_data[1]_i_7_n_0 ;
  wire \w_data[1]_i_8_n_0 ;
  wire \w_data[2]_i_1_n_0 ;
  wire \w_data[2]_i_4_n_0 ;
  wire \w_data[2]_i_5_n_0 ;
  wire \w_data[2]_i_6_n_0 ;
  wire \w_data[2]_i_7_n_0 ;
  wire \w_data[2]_i_8_n_0 ;
  wire \w_data[2]_i_9_n_0 ;
  wire \w_data[3]_i_1_n_0 ;
  wire \w_data[3]_i_4_n_0 ;
  wire \w_data[3]_i_5_n_0 ;
  wire \w_data[3]_i_6_n_0 ;
  wire \w_data[3]_i_7_n_0 ;
  wire \w_data[3]_i_8_n_0 ;
  wire \w_data[3]_i_9_n_0 ;
  wire \w_data[4]_i_1_n_0 ;
  wire \w_data[4]_i_3_n_0 ;
  wire [3:0]\w_data[4]_i_4_0 ;
  wire \w_data[4]_i_4_n_0 ;
  wire \w_data[4]_i_5_n_0 ;
  wire \w_data[4]_i_6_n_0 ;
  wire \w_data[4]_i_7_n_0 ;
  wire \w_data[4]_i_8_n_0 ;
  wire \w_data[4]_i_9_n_0 ;
  wire \w_data[5]_i_1_n_0 ;
  wire \w_data[5]_i_3_n_0 ;
  wire \w_data[5]_i_4_n_0 ;
  wire \w_data[5]_i_5_n_0 ;
  wire \w_data[5]_i_6_n_0 ;
  wire \w_data[5]_i_7_n_0 ;
  wire \w_data[6]_i_1_n_0 ;
  wire \w_data[6]_i_3_n_0 ;
  wire \w_data[6]_i_4_n_0 ;
  wire \w_data[6]_i_5_n_0 ;
  wire \w_data[6]_i_6_n_0 ;
  wire \w_data[6]_i_7_n_0 ;
  wire \w_data[7]_i_1_n_0 ;
  wire \w_data[7]_i_3_n_0 ;
  wire \w_data[7]_i_4_n_0 ;
  wire \w_data[7]_i_5_n_0 ;
  wire \w_data[7]_i_6_n_0 ;
  wire \w_data[7]_i_7_n_0 ;
  wire \w_data_reg[0]_i_2_n_0 ;
  wire \w_data_reg[1]_i_2_n_0 ;
  wire \w_data_reg[1]_i_3_n_0 ;
  wire \w_data_reg[2]_i_2_n_0 ;
  wire \w_data_reg[2]_i_3_n_0 ;
  wire [3:0]\w_data_reg[3]_i_2_0 ;
  wire \w_data_reg[3]_i_2_n_0 ;
  wire \w_data_reg[3]_i_3_n_0 ;
  wire \w_data_reg[4]_i_2_n_0 ;
  wire \w_data_reg[5]_i_2_n_0 ;
  wire \w_data_reg[6]_i_2_n_0 ;
  wire \w_data_reg[7]_i_2_n_0 ;
  wire [3:1]\NLW_leds_OBUF[1]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_leds_OBUF[1]_inst_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF88888880)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg[0]_0 ),
        .I1(state_0),
        .I2(\FSM_onehot_state_reg[3]_0 [0]),
        .I3(\FSM_onehot_state_reg[3]_0 [1]),
        .I4(\FSM_onehot_state_reg[3]_0 [2]),
        .I5(\FSM_onehot_state_reg[0]_1 ),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_A:0001,WAIT_B:0010,WAIT_OP:0100,WAIT_TX:1000," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(CLK),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg[3]_0 [3]),
        .Q(\FSM_onehot_state_reg[3]_0 [0]),
        .S(SR));
  (* FSM_ENCODED_STATES = "WAIT_A:0001,WAIT_B:0010,WAIT_OP:0100,WAIT_TX:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(CLK),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg[3]_0 [0]),
        .Q(\FSM_onehot_state_reg[3]_0 [1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "WAIT_A:0001,WAIT_B:0010,WAIT_OP:0100,WAIT_TX:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(CLK),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg[3]_0 [1]),
        .Q(\FSM_onehot_state_reg[3]_0 [2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "WAIT_A:0001,WAIT_B:0010,WAIT_OP:0100,WAIT_TX:1000," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(CLK),
        .CE(\FSM_onehot_state[3]_i_1_n_0 ),
        .D(\FSM_onehot_state_reg[3]_0 [2]),
        .Q(\FSM_onehot_state_reg[3]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_a_reg[0] 
       (.C(CLK),
        .CE(\alu_op_a_reg[7]_2 ),
        .D(\alu_op_a_reg[7]_1 [0]),
        .Q(\alu_op_a_reg[7]_0 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_a_reg[1] 
       (.C(CLK),
        .CE(\alu_op_a_reg[7]_2 ),
        .D(\alu_op_a_reg[7]_1 [1]),
        .Q(\alu_op_a_reg[7]_0 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_a_reg[2] 
       (.C(CLK),
        .CE(\alu_op_a_reg[7]_2 ),
        .D(\alu_op_a_reg[7]_1 [2]),
        .Q(\alu_op_a_reg[7]_0 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_a_reg[3] 
       (.C(CLK),
        .CE(\alu_op_a_reg[7]_2 ),
        .D(\alu_op_a_reg[7]_1 [3]),
        .Q(\alu_op_a_reg[7]_0 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_a_reg[4] 
       (.C(CLK),
        .CE(\alu_op_a_reg[7]_2 ),
        .D(\alu_op_a_reg[7]_1 [4]),
        .Q(\alu_op_a_reg[7]_0 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_a_reg[5] 
       (.C(CLK),
        .CE(\alu_op_a_reg[7]_2 ),
        .D(\alu_op_a_reg[7]_1 [5]),
        .Q(\alu_op_a_reg[7]_0 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_a_reg[6] 
       (.C(CLK),
        .CE(\alu_op_a_reg[7]_2 ),
        .D(\alu_op_a_reg[7]_1 [6]),
        .Q(\alu_op_a_reg[7]_0 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_a_reg[7] 
       (.C(CLK),
        .CE(\alu_op_a_reg[7]_2 ),
        .D(\alu_op_a_reg[7]_1 [7]),
        .Q(\alu_op_a_reg[7]_0 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_b_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\alu_op_a_reg[7]_1 [0]),
        .Q(\alu_op_b_reg[7]_1 [0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_b_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\alu_op_a_reg[7]_1 [1]),
        .Q(\alu_op_b_reg[7]_1 [1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_b_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\alu_op_a_reg[7]_1 [2]),
        .Q(\alu_op_b_reg[7]_1 [2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_b_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\alu_op_a_reg[7]_1 [3]),
        .Q(\alu_op_b_reg[7]_1 [3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_b_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\alu_op_a_reg[7]_1 [4]),
        .Q(\alu_op_b_reg[7]_1 [4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_b_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\alu_op_a_reg[7]_1 [5]),
        .Q(\alu_op_b_reg[7]_1 [5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_b_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\alu_op_a_reg[7]_1 [6]),
        .Q(\alu_op_b_reg[7]_1 [6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_op_b_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\alu_op_a_reg[7]_1 [7]),
        .Q(\alu_op_b_reg[7]_1 [7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_opcode_reg[0] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\alu_op_a_reg[7]_1 [0]),
        .Q(alu_opcode[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_opcode_reg[1] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\alu_op_a_reg[7]_1 [1]),
        .Q(alu_opcode[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_opcode_reg[2] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\alu_op_a_reg[7]_1 [2]),
        .Q(alu_opcode[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_opcode_reg[3] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\alu_op_a_reg[7]_1 [3]),
        .Q(alu_opcode[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_opcode_reg[4] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\alu_op_a_reg[7]_1 [4]),
        .Q(alu_opcode[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \alu_opcode_reg[5] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\alu_op_a_reg[7]_1 [5]),
        .Q(alu_opcode[5]),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \b[7]_i_2 
       (.I0(w_data),
        .I1(state),
        .O(D));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1
       (.I0(\alu_op_b_reg[7]_1 [7]),
        .I1(\alu_op_a_reg[7]_0 [7]),
        .O(\alu_op_b_reg[7]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2
       (.I0(\alu_op_a_reg[7]_0 [6]),
        .I1(\alu_op_b_reg[7]_1 [6]),
        .O(\alu_op_b_reg[7]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3
       (.I0(\alu_op_a_reg[7]_0 [5]),
        .I1(\alu_op_b_reg[7]_1 [5]),
        .O(\alu_op_b_reg[7]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(\alu_op_a_reg[7]_0 [4]),
        .I1(\alu_op_b_reg[7]_1 [4]),
        .O(\alu_op_b_reg[7]_0 [0]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1
       (.I0(\alu_op_a_reg[7]_0 [3]),
        .I1(\alu_op_b_reg[7]_1 [3]),
        .O(\alu_op_a_reg[3]_0 [3]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2
       (.I0(\alu_op_a_reg[7]_0 [2]),
        .I1(\alu_op_b_reg[7]_1 [2]),
        .O(\alu_op_a_reg[3]_0 [2]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3
       (.I0(\alu_op_a_reg[7]_0 [1]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .O(\alu_op_a_reg[3]_0 [1]));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(\alu_op_a_reg[7]_0 [0]),
        .I1(\alu_op_b_reg[7]_1 [0]),
        .O(\alu_op_a_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \leds_OBUF[0]_inst_i_1 
       (.I0(\w_data[4]_i_1_n_0 ),
        .I1(\w_data[5]_i_1_n_0 ),
        .I2(\leds_OBUF[0]_inst_i_2_n_0 ),
        .I3(\w_data[2]_i_1_n_0 ),
        .I4(\w_data[3]_i_1_n_0 ),
        .I5(\leds_OBUF[0]_inst_i_3_n_0 ),
        .O(leds_OBUF[0]));
  LUT6 #(
    .INIT(64'hDDDDDDDDCCCDDDCD)) 
    \leds_OBUF[0]_inst_i_2 
       (.I0(\leds_OBUF[0]_inst_i_4_n_0 ),
        .I1(alu_opcode[4]),
        .I2(\leds_OBUF[0]_inst_i_5_n_0 ),
        .I3(alu_opcode[5]),
        .I4(\w_data_reg[6]_i_2_n_0 ),
        .I5(alu_opcode[3]),
        .O(\leds_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000FFFFFF1D)) 
    \leds_OBUF[0]_inst_i_3 
       (.I0(\w_data[0]_i_3_n_0 ),
        .I1(alu_opcode[5]),
        .I2(\w_data_reg[0]_i_2_n_0 ),
        .I3(alu_opcode[3]),
        .I4(alu_opcode[4]),
        .I5(\leds_OBUF[0]_inst_i_6_n_0 ),
        .O(\leds_OBUF[0]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \leds_OBUF[0]_inst_i_4 
       (.I0(\w_data[7]_i_3_n_0 ),
        .I1(alu_opcode[1]),
        .I2(alu_opcode[5]),
        .I3(\w_data[7]_i_4_n_0 ),
        .I4(\w_data[7]_i_5_n_0 ),
        .I5(alu_opcode[3]),
        .O(\leds_OBUF[0]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h22200020)) 
    \leds_OBUF[0]_inst_i_5 
       (.I0(alu_opcode[1]),
        .I1(alu_opcode[2]),
        .I2(data6),
        .I3(alu_opcode[0]),
        .I4(data7),
        .O(\leds_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F8C83808)) 
    \leds_OBUF[0]_inst_i_6 
       (.I0(\w_data_reg[1]_i_3_n_0 ),
        .I1(alu_opcode[1]),
        .I2(alu_opcode[5]),
        .I3(\w_data[1]_i_4_n_0 ),
        .I4(\w_data[1]_i_5_n_0 ),
        .I5(alu_opcode[3]),
        .O(\leds_OBUF[0]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0022002000000020)) 
    \leds_OBUF[0]_inst_i_7 
       (.I0(\w_data[7]_i_7_n_0 ),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_a_reg[7]_0 [6]),
        .I3(\alu_op_b_reg[7]_1 [2]),
        .I4(\alu_op_b_reg[7]_1 [0]),
        .I5(\alu_op_a_reg[7]_0 [7]),
        .O(data6));
  LUT6 #(
    .INIT(64'hFFFEFFFF01000000)) 
    \leds_OBUF[0]_inst_i_8 
       (.I0(\alu_op_b_reg[7]_1 [0]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_b_reg[7]_1 [2]),
        .I3(\alu_op_a_reg[7]_0 [6]),
        .I4(\w_data[7]_i_7_n_0 ),
        .I5(\alu_op_a_reg[7]_0 [7]),
        .O(data7));
  LUT4 #(
    .INIT(16'hA808)) 
    \leds_OBUF[1]_inst_i_1 
       (.I0(\leds_OBUF[2]_inst_i_2_n_0 ),
        .I1(data0),
        .I2(alu_opcode[1]),
        .I3(\leds[1] ),
        .O(leds_OBUF[1]));
  CARRY4 \leds_OBUF[1]_inst_i_2 
       (.CI(\leds_OBUF[2]_inst_i_3_n_0 ),
        .CO({\NLW_leds_OBUF[1]_inst_i_2_CO_UNCONNECTED [3:1],data0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_leds_OBUF[1]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT6 #(
    .INIT(64'h2020028008080280)) 
    \leds_OBUF[2]_inst_i_1 
       (.I0(\leds_OBUF[2]_inst_i_2_n_0 ),
        .I1(\alu_op_a_reg[7]_0 [7]),
        .I2(\alu_op_b_reg[7]_1 [7]),
        .I3(p_1_in2_in),
        .I4(alu_opcode[1]),
        .I5(O[3]),
        .O(leds_OBUF[2]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \leds_OBUF[2]_inst_i_2 
       (.I0(alu_opcode[5]),
        .I1(alu_opcode[3]),
        .I2(alu_opcode[2]),
        .I3(alu_opcode[4]),
        .I4(alu_opcode[0]),
        .O(\leds_OBUF[2]_inst_i_2_n_0 ));
  CARRY4 \leds_OBUF[2]_inst_i_3 
       (.CI(\leds_OBUF[2]_inst_i_4_n_0 ),
        .CO({\leds_OBUF[2]_inst_i_3_n_0 ,\leds_OBUF[2]_inst_i_3_n_1 ,\leds_OBUF[2]_inst_i_3_n_2 ,\leds_OBUF[2]_inst_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\alu_op_a_reg[7]_0 [7:4]),
        .O({p_1_in2_in,\leds_OBUF[2]_inst_i_3_n_5 ,\leds_OBUF[2]_inst_i_3_n_6 ,\leds_OBUF[2]_inst_i_3_n_7 }),
        .S(\w_data[4]_i_4_0 ));
  CARRY4 \leds_OBUF[2]_inst_i_4 
       (.CI(1'b0),
        .CO({\leds_OBUF[2]_inst_i_4_n_0 ,\leds_OBUF[2]_inst_i_4_n_1 ,\leds_OBUF[2]_inst_i_4_n_2 ,\leds_OBUF[2]_inst_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(\alu_op_a_reg[7]_0 [3:0]),
        .O({\leds_OBUF[2]_inst_i_4_n_4 ,\leds_OBUF[2]_inst_i_4_n_5 ,\leds_OBUF[2]_inst_i_4_n_6 ,\leds_OBUF[2]_inst_i_4_n_7 }),
        .S(S));
  FDRE #(
    .INIT(1'b0)) 
    tx_start_reg
       (.C(CLK),
        .CE(1'b1),
        .D(tx_start_reg_0),
        .Q(tx_start_wire),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004540)) 
    \w_data[0]_i_1 
       (.I0(alu_opcode[3]),
        .I1(\w_data_reg[0]_i_2_n_0 ),
        .I2(alu_opcode[5]),
        .I3(\w_data[0]_i_3_n_0 ),
        .I4(alu_opcode[4]),
        .O(\w_data[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2202200020002000)) 
    \w_data[0]_i_3 
       (.I0(alu_opcode[1]),
        .I1(alu_opcode[2]),
        .I2(\w_data[7]_i_7_n_0 ),
        .I3(\w_data[0]_i_6_n_0 ),
        .I4(alu_opcode[0]),
        .I5(\alu_op_a_reg[7]_0 [7]),
        .O(\w_data[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE855E800)) 
    \w_data[0]_i_4 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_a_reg[7]_0 [0]),
        .I2(\alu_op_b_reg[7]_1 [0]),
        .I3(alu_opcode[2]),
        .I4(\leds_OBUF[2]_inst_i_4_n_7 ),
        .O(\w_data[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h16551600)) 
    \w_data[0]_i_5 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_b_reg[7]_1 [0]),
        .I2(\alu_op_a_reg[7]_0 [0]),
        .I3(alu_opcode[2]),
        .I4(\w_data_reg[3]_i_2_0 [0]),
        .O(\w_data[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \w_data[0]_i_6 
       (.I0(\w_data[1]_i_8_n_0 ),
        .I1(\alu_op_b_reg[7]_1 [0]),
        .I2(\w_data[0]_i_7_n_0 ),
        .O(\w_data[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \w_data[0]_i_7 
       (.I0(\alu_op_a_reg[7]_0 [6]),
        .I1(\alu_op_a_reg[7]_0 [2]),
        .I2(\alu_op_b_reg[7]_1 [1]),
        .I3(\alu_op_a_reg[7]_0 [4]),
        .I4(\alu_op_b_reg[7]_1 [2]),
        .I5(\alu_op_a_reg[7]_0 [0]),
        .O(\w_data[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045404040)) 
    \w_data[1]_i_1 
       (.I0(alu_opcode[3]),
        .I1(\w_data_reg[1]_i_2_n_0 ),
        .I2(alu_opcode[5]),
        .I3(alu_opcode[1]),
        .I4(\w_data_reg[1]_i_3_n_0 ),
        .I5(alu_opcode[4]),
        .O(\w_data[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE855E800)) 
    \w_data[1]_i_4 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_a_reg[7]_0 [1]),
        .I2(\alu_op_b_reg[7]_1 [1]),
        .I3(alu_opcode[2]),
        .I4(\leds_OBUF[2]_inst_i_4_n_6 ),
        .O(\w_data[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h16551600)) 
    \w_data[1]_i_5 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_a_reg[7]_0 [1]),
        .I3(alu_opcode[2]),
        .I4(\w_data_reg[3]_i_2_0 [1]),
        .O(\w_data[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \w_data[1]_i_6 
       (.I0(\w_data[2]_i_8_n_0 ),
        .I1(\alu_op_b_reg[7]_1 [0]),
        .I2(\w_data[1]_i_8_n_0 ),
        .I3(\w_data[7]_i_7_n_0 ),
        .I4(alu_opcode[2]),
        .O(\w_data[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \w_data[1]_i_7 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\w_data[7]_i_7_n_0 ),
        .I2(\w_data[1]_i_8_n_0 ),
        .I3(\alu_op_b_reg[7]_1 [0]),
        .I4(\w_data[2]_i_9_n_0 ),
        .I5(alu_opcode[2]),
        .O(\w_data[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \w_data[1]_i_8 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\alu_op_a_reg[7]_0 [3]),
        .I2(\alu_op_b_reg[7]_1 [1]),
        .I3(\alu_op_a_reg[7]_0 [5]),
        .I4(\alu_op_b_reg[7]_1 [2]),
        .I5(\alu_op_a_reg[7]_0 [1]),
        .O(\w_data[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045404040)) 
    \w_data[2]_i_1 
       (.I0(alu_opcode[3]),
        .I1(\w_data_reg[2]_i_2_n_0 ),
        .I2(alu_opcode[5]),
        .I3(alu_opcode[1]),
        .I4(\w_data_reg[2]_i_3_n_0 ),
        .I5(alu_opcode[4]),
        .O(\w_data[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE855E800)) 
    \w_data[2]_i_4 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_a_reg[7]_0 [2]),
        .I2(\alu_op_b_reg[7]_1 [2]),
        .I3(alu_opcode[2]),
        .I4(\leds_OBUF[2]_inst_i_4_n_5 ),
        .O(\w_data[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h16551600)) 
    \w_data[2]_i_5 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_b_reg[7]_1 [2]),
        .I2(\alu_op_a_reg[7]_0 [2]),
        .I3(alu_opcode[2]),
        .I4(\w_data_reg[3]_i_2_0 [2]),
        .O(\w_data[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \w_data[2]_i_6 
       (.I0(\w_data[3]_i_8_n_0 ),
        .I1(\alu_op_b_reg[7]_1 [0]),
        .I2(\w_data[2]_i_8_n_0 ),
        .I3(\w_data[7]_i_7_n_0 ),
        .I4(alu_opcode[2]),
        .O(\w_data[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \w_data[2]_i_7 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\w_data[7]_i_7_n_0 ),
        .I2(\w_data[2]_i_9_n_0 ),
        .I3(\alu_op_b_reg[7]_1 [0]),
        .I4(\w_data[3]_i_9_n_0 ),
        .I5(alu_opcode[2]),
        .O(\w_data[2]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \w_data[2]_i_8 
       (.I0(\alu_op_a_reg[7]_0 [4]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_a_reg[7]_0 [6]),
        .I3(\alu_op_b_reg[7]_1 [2]),
        .I4(\alu_op_a_reg[7]_0 [2]),
        .O(\w_data[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \w_data[2]_i_9 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\alu_op_a_reg[7]_0 [4]),
        .I2(\alu_op_b_reg[7]_1 [1]),
        .I3(\alu_op_a_reg[7]_0 [6]),
        .I4(\alu_op_b_reg[7]_1 [2]),
        .I5(\alu_op_a_reg[7]_0 [2]),
        .O(\w_data[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045404040)) 
    \w_data[3]_i_1 
       (.I0(alu_opcode[3]),
        .I1(\w_data_reg[3]_i_2_n_0 ),
        .I2(alu_opcode[5]),
        .I3(alu_opcode[1]),
        .I4(\w_data_reg[3]_i_3_n_0 ),
        .I5(alu_opcode[4]),
        .O(\w_data[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hE855E800)) 
    \w_data[3]_i_4 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_a_reg[7]_0 [3]),
        .I2(\alu_op_b_reg[7]_1 [3]),
        .I3(alu_opcode[2]),
        .I4(\leds_OBUF[2]_inst_i_4_n_4 ),
        .O(\w_data[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h16551600)) 
    \w_data[3]_i_5 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_b_reg[7]_1 [3]),
        .I2(\alu_op_a_reg[7]_0 [3]),
        .I3(alu_opcode[2]),
        .I4(\w_data_reg[3]_i_2_0 [3]),
        .O(\w_data[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h0000B800)) 
    \w_data[3]_i_6 
       (.I0(\w_data[4]_i_9_n_0 ),
        .I1(\alu_op_b_reg[7]_1 [0]),
        .I2(\w_data[3]_i_8_n_0 ),
        .I3(\w_data[7]_i_7_n_0 ),
        .I4(alu_opcode[2]),
        .O(\w_data[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \w_data[3]_i_7 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\w_data[7]_i_7_n_0 ),
        .I2(\w_data[3]_i_9_n_0 ),
        .I3(\alu_op_b_reg[7]_1 [0]),
        .I4(\w_data[4]_i_8_n_0 ),
        .I5(alu_opcode[2]),
        .O(\w_data[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \w_data[3]_i_8 
       (.I0(\alu_op_a_reg[7]_0 [5]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_a_reg[7]_0 [7]),
        .I3(\alu_op_b_reg[7]_1 [2]),
        .I4(\alu_op_a_reg[7]_0 [3]),
        .O(\w_data[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \w_data[3]_i_9 
       (.I0(\alu_op_a_reg[7]_0 [5]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_a_reg[7]_0 [7]),
        .I3(\alu_op_b_reg[7]_1 [2]),
        .I4(\alu_op_a_reg[7]_0 [3]),
        .O(\w_data[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045404040)) 
    \w_data[4]_i_1 
       (.I0(alu_opcode[3]),
        .I1(\w_data_reg[4]_i_2_n_0 ),
        .I2(alu_opcode[5]),
        .I3(alu_opcode[1]),
        .I4(\w_data[4]_i_3_n_0 ),
        .I5(alu_opcode[4]),
        .O(\w_data[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFC0A0A0)) 
    \w_data[4]_i_3 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\w_data[4]_i_6_n_0 ),
        .I2(alu_opcode[0]),
        .I3(\w_data[4]_i_7_n_0 ),
        .I4(\w_data[7]_i_7_n_0 ),
        .I5(alu_opcode[2]),
        .O(\w_data[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE855E800)) 
    \w_data[4]_i_4 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_a_reg[7]_0 [4]),
        .I2(\alu_op_b_reg[7]_1 [4]),
        .I3(alu_opcode[2]),
        .I4(\leds_OBUF[2]_inst_i_3_n_7 ),
        .O(\w_data[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h16551600)) 
    \w_data[4]_i_5 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_b_reg[7]_1 [4]),
        .I2(\alu_op_a_reg[7]_0 [4]),
        .I3(alu_opcode[2]),
        .I4(O[0]),
        .O(\w_data[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8FFFFCDC80000)) 
    \w_data[4]_i_6 
       (.I0(\alu_op_b_reg[7]_1 [1]),
        .I1(\alu_op_a_reg[7]_0 [7]),
        .I2(\alu_op_b_reg[7]_1 [2]),
        .I3(\alu_op_a_reg[7]_0 [5]),
        .I4(\alu_op_b_reg[7]_1 [0]),
        .I5(\w_data[4]_i_8_n_0 ),
        .O(\w_data[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \w_data[4]_i_7 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_a_reg[7]_0 [5]),
        .I3(\alu_op_b_reg[7]_1 [2]),
        .I4(\alu_op_b_reg[7]_1 [0]),
        .I5(\w_data[4]_i_9_n_0 ),
        .O(\w_data[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hF0BBF088)) 
    \w_data[4]_i_8 
       (.I0(\alu_op_a_reg[7]_0 [6]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_a_reg[7]_0 [7]),
        .I3(\alu_op_b_reg[7]_1 [2]),
        .I4(\alu_op_a_reg[7]_0 [4]),
        .O(\w_data[4]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \w_data[4]_i_9 
       (.I0(\alu_op_a_reg[7]_0 [6]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_a_reg[7]_0 [4]),
        .I3(\alu_op_b_reg[7]_1 [2]),
        .O(\w_data[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045404040)) 
    \w_data[5]_i_1 
       (.I0(alu_opcode[3]),
        .I1(\w_data_reg[5]_i_2_n_0 ),
        .I2(alu_opcode[5]),
        .I3(alu_opcode[1]),
        .I4(\w_data[5]_i_3_n_0 ),
        .I5(alu_opcode[4]),
        .O(\w_data[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFC0A0A0)) 
    \w_data[5]_i_3 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\w_data[5]_i_6_n_0 ),
        .I2(alu_opcode[0]),
        .I3(\w_data[5]_i_7_n_0 ),
        .I4(\w_data[7]_i_7_n_0 ),
        .I5(alu_opcode[2]),
        .O(\w_data[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE855E800)) 
    \w_data[5]_i_4 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_a_reg[7]_0 [5]),
        .I2(\alu_op_b_reg[7]_1 [5]),
        .I3(alu_opcode[2]),
        .I4(\leds_OBUF[2]_inst_i_3_n_6 ),
        .O(\w_data[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h16551600)) 
    \w_data[5]_i_5 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_b_reg[7]_1 [5]),
        .I2(\alu_op_a_reg[7]_0 [5]),
        .I3(alu_opcode[2]),
        .I4(O[1]),
        .O(\w_data[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FB0BFF00F808)) 
    \w_data[5]_i_6 
       (.I0(\alu_op_a_reg[7]_0 [6]),
        .I1(\alu_op_b_reg[7]_1 [0]),
        .I2(\alu_op_b_reg[7]_1 [1]),
        .I3(\alu_op_a_reg[7]_0 [7]),
        .I4(\alu_op_b_reg[7]_1 [2]),
        .I5(\alu_op_a_reg[7]_0 [5]),
        .O(\w_data[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \w_data[5]_i_7 
       (.I0(\alu_op_a_reg[7]_0 [6]),
        .I1(\alu_op_b_reg[7]_1 [0]),
        .I2(\alu_op_a_reg[7]_0 [7]),
        .I3(\alu_op_b_reg[7]_1 [1]),
        .I4(\alu_op_a_reg[7]_0 [5]),
        .I5(\alu_op_b_reg[7]_1 [2]),
        .O(\w_data[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045404040)) 
    \w_data[6]_i_1 
       (.I0(alu_opcode[3]),
        .I1(\w_data_reg[6]_i_2_n_0 ),
        .I2(alu_opcode[5]),
        .I3(alu_opcode[1]),
        .I4(\w_data[6]_i_3_n_0 ),
        .I5(alu_opcode[4]),
        .O(\w_data[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000CFC0A0A0)) 
    \w_data[6]_i_3 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\w_data[6]_i_6_n_0 ),
        .I2(alu_opcode[0]),
        .I3(\w_data[6]_i_7_n_0 ),
        .I4(\w_data[7]_i_7_n_0 ),
        .I5(alu_opcode[2]),
        .O(\w_data[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE855E800)) 
    \w_data[6]_i_4 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_a_reg[7]_0 [6]),
        .I2(\alu_op_b_reg[7]_1 [6]),
        .I3(alu_opcode[2]),
        .I4(\leds_OBUF[2]_inst_i_3_n_5 ),
        .O(\w_data[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h16551600)) 
    \w_data[6]_i_5 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_b_reg[7]_1 [6]),
        .I2(\alu_op_a_reg[7]_0 [6]),
        .I3(alu_opcode[2]),
        .I4(O[2]),
        .O(\w_data[6]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hF0F1F0E0)) 
    \w_data[6]_i_6 
       (.I0(\alu_op_b_reg[7]_1 [0]),
        .I1(\alu_op_b_reg[7]_1 [1]),
        .I2(\alu_op_a_reg[7]_0 [7]),
        .I3(\alu_op_b_reg[7]_1 [2]),
        .I4(\alu_op_a_reg[7]_0 [6]),
        .O(\w_data[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \w_data[6]_i_7 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(\alu_op_b_reg[7]_1 [0]),
        .I2(\alu_op_b_reg[7]_1 [2]),
        .I3(\alu_op_a_reg[7]_0 [6]),
        .I4(\alu_op_b_reg[7]_1 [1]),
        .O(\w_data[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000045404040)) 
    \w_data[7]_i_1 
       (.I0(alu_opcode[3]),
        .I1(\w_data_reg[7]_i_2_n_0 ),
        .I2(alu_opcode[5]),
        .I3(alu_opcode[1]),
        .I4(\w_data[7]_i_3_n_0 ),
        .I5(alu_opcode[4]),
        .O(\w_data[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000088B88888)) 
    \w_data[7]_i_3 
       (.I0(\alu_op_a_reg[7]_0 [7]),
        .I1(alu_opcode[0]),
        .I2(\w_data[7]_i_6_n_0 ),
        .I3(\alu_op_b_reg[7]_1 [0]),
        .I4(\w_data[7]_i_7_n_0 ),
        .I5(alu_opcode[2]),
        .O(\w_data[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hE855E800)) 
    \w_data[7]_i_4 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_a_reg[7]_0 [7]),
        .I2(\alu_op_b_reg[7]_1 [7]),
        .I3(alu_opcode[2]),
        .I4(p_1_in2_in),
        .O(\w_data[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h16551600)) 
    \w_data[7]_i_5 
       (.I0(alu_opcode[0]),
        .I1(\alu_op_b_reg[7]_1 [7]),
        .I2(\alu_op_a_reg[7]_0 [7]),
        .I3(alu_opcode[2]),
        .I4(O[3]),
        .O(\w_data[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \w_data[7]_i_6 
       (.I0(\alu_op_b_reg[7]_1 [2]),
        .I1(\alu_op_a_reg[7]_0 [7]),
        .I2(\alu_op_b_reg[7]_1 [1]),
        .O(\w_data[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \w_data[7]_i_7 
       (.I0(\alu_op_b_reg[7]_1 [7]),
        .I1(\alu_op_b_reg[7]_1 [4]),
        .I2(\alu_op_b_reg[7]_1 [3]),
        .I3(\alu_op_b_reg[7]_1 [6]),
        .I4(\alu_op_b_reg[7]_1 [5]),
        .O(\w_data[7]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[0] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\w_data[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  MUXF7 \w_data_reg[0]_i_2 
       (.I0(\w_data[0]_i_4_n_0 ),
        .I1(\w_data[0]_i_5_n_0 ),
        .O(\w_data_reg[0]_i_2_n_0 ),
        .S(alu_opcode[1]));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[1] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\w_data[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  MUXF7 \w_data_reg[1]_i_2 
       (.I0(\w_data[1]_i_4_n_0 ),
        .I1(\w_data[1]_i_5_n_0 ),
        .O(\w_data_reg[1]_i_2_n_0 ),
        .S(alu_opcode[1]));
  MUXF7 \w_data_reg[1]_i_3 
       (.I0(\w_data[1]_i_6_n_0 ),
        .I1(\w_data[1]_i_7_n_0 ),
        .O(\w_data_reg[1]_i_3_n_0 ),
        .S(alu_opcode[0]));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[2] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\w_data[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  MUXF7 \w_data_reg[2]_i_2 
       (.I0(\w_data[2]_i_4_n_0 ),
        .I1(\w_data[2]_i_5_n_0 ),
        .O(\w_data_reg[2]_i_2_n_0 ),
        .S(alu_opcode[1]));
  MUXF7 \w_data_reg[2]_i_3 
       (.I0(\w_data[2]_i_6_n_0 ),
        .I1(\w_data[2]_i_7_n_0 ),
        .O(\w_data_reg[2]_i_3_n_0 ),
        .S(alu_opcode[0]));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[3] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\w_data[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  MUXF7 \w_data_reg[3]_i_2 
       (.I0(\w_data[3]_i_4_n_0 ),
        .I1(\w_data[3]_i_5_n_0 ),
        .O(\w_data_reg[3]_i_2_n_0 ),
        .S(alu_opcode[1]));
  MUXF7 \w_data_reg[3]_i_3 
       (.I0(\w_data[3]_i_6_n_0 ),
        .I1(\w_data[3]_i_7_n_0 ),
        .O(\w_data_reg[3]_i_3_n_0 ),
        .S(alu_opcode[0]));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[4] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\w_data[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  MUXF7 \w_data_reg[4]_i_2 
       (.I0(\w_data[4]_i_4_n_0 ),
        .I1(\w_data[4]_i_5_n_0 ),
        .O(\w_data_reg[4]_i_2_n_0 ),
        .S(alu_opcode[1]));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[5] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\w_data[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  MUXF7 \w_data_reg[5]_i_2 
       (.I0(\w_data[5]_i_4_n_0 ),
        .I1(\w_data[5]_i_5_n_0 ),
        .O(\w_data_reg[5]_i_2_n_0 ),
        .S(alu_opcode[1]));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[6] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\w_data[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(SR));
  MUXF7 \w_data_reg[6]_i_2 
       (.I0(\w_data[6]_i_4_n_0 ),
        .I1(\w_data[6]_i_5_n_0 ),
        .O(\w_data_reg[6]_i_2_n_0 ),
        .S(alu_opcode[1]));
  FDRE #(
    .INIT(1'b0)) 
    \w_data_reg[7] 
       (.C(CLK),
        .CE(\alu_opcode_reg[0]_0 ),
        .D(\w_data[7]_i_1_n_0 ),
        .Q(w_data),
        .R(SR));
  MUXF7 \w_data_reg[7]_i_2 
       (.I0(\w_data[7]_i_4_n_0 ),
        .I1(\w_data[7]_i_5_n_0 ),
        .O(\w_data_reg[7]_i_2_n_0 ),
        .S(alu_opcode[1]));
endmodule

module uart_rx
   (\state_reg[0]_0 ,
    tick_reg,
    E,
    \state_reg[0]_1 ,
    \state_reg[0]_2 ,
    \state_reg[0]_3 ,
    Q,
    tick_wire,
    D,
    \alu_opcode_reg[0] ,
    SR,
    CLK);
  output [0:0]\state_reg[0]_0 ;
  output tick_reg;
  output [0:0]E;
  output [0:0]\state_reg[0]_1 ;
  output [0:0]\state_reg[0]_2 ;
  output \state_reg[0]_3 ;
  output [7:0]Q;
  input tick_wire;
  input [0:0]D;
  input [2:0]\alu_opcode_reg[0] ;
  input [0:0]SR;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [7:0]Q;
  wire [0:0]SR;
  wire [2:0]\alu_opcode_reg[0] ;
  wire [2:0]n;
  wire \n[0]_i_1_n_0 ;
  wire \n[1]_i_1_n_0 ;
  wire \n[2]_i_1_n_0 ;
  wire [0:0]next_b;
  wire [0:0]next_n;
  wire [0:0]next_s;
  wire [3:0]s;
  wire \s[0]_i_1_n_0 ;
  wire \s[1]_i_1_n_0 ;
  wire \s[2]_i_1_n_0 ;
  wire \s[3]_i_2_n_0 ;
  wire \s[3]_i_3_n_0 ;
  wire [1:1]state;
  wire \state[0]_i_1__0_n_0 ;
  wire \state[0]_i_2_n_0 ;
  wire \state[1]_i_1__0_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire [0:0]\state_reg[0]_0 ;
  wire [0:0]\state_reg[0]_1 ;
  wire [0:0]\state_reg[0]_2 ;
  wire \state_reg[0]_3 ;
  wire tick_reg;
  wire tick_wire;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \alu_op_a[7]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(tick_reg),
        .I2(\alu_opcode_reg[0] [0]),
        .O(\state_reg[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \alu_op_b[7]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(tick_reg),
        .I2(\alu_opcode_reg[0] [1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \alu_opcode[5]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(tick_reg),
        .I2(\alu_opcode_reg[0] [2]),
        .O(\state_reg[0]_2 ));
  LUT2 #(
    .INIT(4'h2)) 
    \b[7]_i_1 
       (.I0(tick_reg),
        .I1(\state_reg[0]_0 ),
        .O(next_b));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(CLK),
        .CE(next_b),
        .D(Q[1]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(CLK),
        .CE(next_b),
        .D(Q[2]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(CLK),
        .CE(next_b),
        .D(Q[3]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(CLK),
        .CE(next_b),
        .D(Q[4]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(CLK),
        .CE(next_b),
        .D(Q[5]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(CLK),
        .CE(next_b),
        .D(Q[6]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(CLK),
        .CE(next_b),
        .D(Q[7]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(CLK),
        .CE(next_b),
        .D(D),
        .Q(Q[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \n[0]_i_1 
       (.I0(state),
        .I1(next_n),
        .I2(n[0]),
        .O(\n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \n[1]_i_1 
       (.I0(n[0]),
        .I1(state),
        .I2(next_n),
        .I3(n[1]),
        .O(\n[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \n[2]_i_1 
       (.I0(n[0]),
        .I1(n[1]),
        .I2(state),
        .I3(next_n),
        .I4(n[2]),
        .O(\n[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000030020000000)) 
    \n[2]_i_2 
       (.I0(\state[0]_i_2_n_0 ),
        .I1(\s[3]_i_3_n_0 ),
        .I2(s[3]),
        .I3(tick_wire),
        .I4(state),
        .I5(\state_reg[0]_0 ),
        .O(next_n));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n[0]_i_1_n_0 ),
        .Q(n[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n[1]_i_1_n_0 ),
        .Q(n[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n[2]_i_1_n_0 ),
        .Q(n[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \s[0]_i_1 
       (.I0(state),
        .I1(\state_reg[0]_0 ),
        .I2(s[0]),
        .O(\s[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \s[1]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(state),
        .I2(s[0]),
        .I3(s[1]),
        .O(\s[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h0EEEE000)) 
    \s[2]_i_1 
       (.I0(\state_reg[0]_0 ),
        .I1(state),
        .I2(s[1]),
        .I3(s[0]),
        .I4(s[2]),
        .O(\s[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC50CC5CCC5CCC5)) 
    \s[3]_i_1 
       (.I0(D),
        .I1(tick_wire),
        .I2(state),
        .I3(\state_reg[0]_0 ),
        .I4(\s[3]_i_3_n_0 ),
        .I5(s[3]),
        .O(next_s));
  LUT6 #(
    .INIT(64'h3FFF2AAAC0000000)) 
    \s[3]_i_2 
       (.I0(\state_reg[0]_0 ),
        .I1(s[1]),
        .I2(s[0]),
        .I3(s[2]),
        .I4(state),
        .I5(s[3]),
        .O(\s[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \s[3]_i_3 
       (.I0(s[1]),
        .I1(s[0]),
        .I2(s[2]),
        .O(\s[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[0] 
       (.C(CLK),
        .CE(next_s),
        .D(\s[0]_i_1_n_0 ),
        .Q(s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1] 
       (.C(CLK),
        .CE(next_s),
        .D(\s[1]_i_1_n_0 ),
        .Q(s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[2] 
       (.C(CLK),
        .CE(next_s),
        .D(\s[2]_i_1_n_0 ),
        .Q(s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[3] 
       (.C(CLK),
        .CE(next_s),
        .D(\s[3]_i_2_n_0 ),
        .Q(s[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h550155AB555555AB)) 
    \state[0]_i_1__0 
       (.I0(\state_reg[0]_0 ),
        .I1(state),
        .I2(D),
        .I3(\state[1]_i_2_n_0 ),
        .I4(tick_reg),
        .I5(\state[0]_i_2_n_0 ),
        .O(\state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \state[0]_i_2 
       (.I0(n[1]),
        .I1(n[0]),
        .I2(n[2]),
        .O(\state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h666C)) 
    \state[1]_i_1__0 
       (.I0(\state_reg[0]_0 ),
        .I1(state),
        .I2(\state[1]_i_2_n_0 ),
        .I3(tick_reg),
        .O(\state[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \state[1]_i_2 
       (.I0(\state_reg[0]_0 ),
        .I1(state),
        .I2(tick_wire),
        .I3(s[3]),
        .I4(\s[3]_i_3_n_0 ),
        .O(\state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \state[1]_i_3 
       (.I0(tick_wire),
        .I1(state),
        .I2(s[3]),
        .I3(s[1]),
        .I4(s[0]),
        .I5(s[2]),
        .O(tick_reg));
  (* FSM_ENCODED_STATES = "IDLE:00,START:01,DATA:10,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[0]_i_1__0_n_0 ),
        .Q(\state_reg[0]_0 ),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:00,START:01,DATA:10,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[1]_i_1__0_n_0 ),
        .Q(state),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    tx_start_i_1
       (.I0(\state_reg[0]_0 ),
        .I1(tick_reg),
        .I2(\alu_opcode_reg[0] [2]),
        .I3(SR),
        .O(\state_reg[0]_3 ));
endmodule

module uart_tx
   (tx_OBUF,
    \state_reg[1]_0 ,
    \FSM_onehot_state_reg[3] ,
    CLK,
    tx_start_wire,
    tick_wire,
    \FSM_onehot_state_reg[0] ,
    D,
    Q);
  output tx_OBUF;
  output [0:0]\state_reg[1]_0 ;
  output \FSM_onehot_state_reg[3] ;
  input CLK;
  input tx_start_wire;
  input tick_wire;
  input [0:0]\FSM_onehot_state_reg[0] ;
  input [0:0]D;
  input [6:0]Q;

  wire CLK;
  wire [0:0]D;
  wire [0:0]\FSM_onehot_state_reg[0] ;
  wire \FSM_onehot_state_reg[3] ;
  wire [6:0]Q;
  wire [0:0]b;
  wire \b_reg_n_0_[1] ;
  wire \b_reg_n_0_[2] ;
  wire \b_reg_n_0_[3] ;
  wire \b_reg_n_0_[4] ;
  wire \b_reg_n_0_[5] ;
  wire \b_reg_n_0_[6] ;
  wire \b_reg_n_0_[7] ;
  wire [2:0]n;
  wire \n[0]_i_1_n_0 ;
  wire \n[1]_i_1_n_0 ;
  wire \n[2]_i_1_n_0 ;
  wire \n[2]_i_3_n_0 ;
  wire [6:0]next_b;
  wire [0:0]next_b_0;
  wire [0:0]next_n;
  wire [0:0]next_s;
  wire next_tx_reg;
  wire [3:0]s;
  wire \s[0]_i_1__0_n_0 ;
  wire \s[1]_i_1__0_n_0 ;
  wire \s[2]_i_1__0_n_0 ;
  wire \s[3]_i_2__0_n_0 ;
  wire \s[3]_i_3__0_n_0 ;
  wire [0:0]state;
  wire \state[0]_i_1_n_0 ;
  wire \state[0]_i_2__0_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2__0_n_0 ;
  wire [0:0]\state_reg[1]_0 ;
  wire tick_wire;
  wire tx_OBUF;
  wire tx_start_wire;

  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_onehot_state[3]_i_2 
       (.I0(\FSM_onehot_state_reg[0] ),
        .I1(\state_reg[1]_0 ),
        .I2(tick_wire),
        .I3(\s[3]_i_3__0_n_0 ),
        .O(\FSM_onehot_state_reg[3] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \b[0]_i_1 
       (.I0(\b_reg_n_0_[1] ),
        .I1(\state_reg[1]_0 ),
        .I2(Q[0]),
        .O(next_b[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b[1]_i_1 
       (.I0(\b_reg_n_0_[2] ),
        .I1(\state_reg[1]_0 ),
        .I2(Q[1]),
        .O(next_b[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b[2]_i_1 
       (.I0(\b_reg_n_0_[3] ),
        .I1(\state_reg[1]_0 ),
        .I2(Q[2]),
        .O(next_b[2]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b[3]_i_1 
       (.I0(\b_reg_n_0_[4] ),
        .I1(\state_reg[1]_0 ),
        .I2(Q[3]),
        .O(next_b[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b[4]_i_1 
       (.I0(\b_reg_n_0_[5] ),
        .I1(\state_reg[1]_0 ),
        .I2(Q[4]),
        .O(next_b[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b[5]_i_1 
       (.I0(\b_reg_n_0_[6] ),
        .I1(\state_reg[1]_0 ),
        .I2(Q[5]),
        .O(next_b[5]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \b[6]_i_1 
       (.I0(\b_reg_n_0_[7] ),
        .I1(\state_reg[1]_0 ),
        .I2(Q[6]),
        .O(next_b[6]));
  LUT5 #(
    .INIT(32'h000030AA)) 
    \b[7]_i_1__0 
       (.I0(tx_start_wire),
        .I1(\state[1]_i_2__0_n_0 ),
        .I2(tick_wire),
        .I3(\state_reg[1]_0 ),
        .I4(state),
        .O(next_b_0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[0] 
       (.C(CLK),
        .CE(next_b_0),
        .D(next_b[0]),
        .Q(b),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[1] 
       (.C(CLK),
        .CE(next_b_0),
        .D(next_b[1]),
        .Q(\b_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[2] 
       (.C(CLK),
        .CE(next_b_0),
        .D(next_b[2]),
        .Q(\b_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[3] 
       (.C(CLK),
        .CE(next_b_0),
        .D(next_b[3]),
        .Q(\b_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[4] 
       (.C(CLK),
        .CE(next_b_0),
        .D(next_b[4]),
        .Q(\b_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[5] 
       (.C(CLK),
        .CE(next_b_0),
        .D(next_b[5]),
        .Q(\b_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[6] 
       (.C(CLK),
        .CE(next_b_0),
        .D(next_b[6]),
        .Q(\b_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \b_reg[7] 
       (.C(CLK),
        .CE(next_b_0),
        .D(D),
        .Q(\b_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h38)) 
    \n[0]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(next_n),
        .I2(n[0]),
        .O(\n[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4F80)) 
    \n[1]_i_1 
       (.I0(n[0]),
        .I1(\state_reg[1]_0 ),
        .I2(next_n),
        .I3(n[1]),
        .O(\n[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h70FF8000)) 
    \n[2]_i_1 
       (.I0(n[0]),
        .I1(n[1]),
        .I2(\state_reg[1]_0 ),
        .I3(next_n),
        .I4(n[2]),
        .O(\n[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1400140004001400)) 
    \n[2]_i_2__0 
       (.I0(\state[1]_i_2__0_n_0 ),
        .I1(state),
        .I2(\state_reg[1]_0 ),
        .I3(tick_wire),
        .I4(n[2]),
        .I5(\n[2]_i_3_n_0 ),
        .O(next_n));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \n[2]_i_3 
       (.I0(n[0]),
        .I1(n[1]),
        .O(\n[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n[0]_i_1_n_0 ),
        .Q(n[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n[1]_i_1_n_0 ),
        .Q(n[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \n_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\n[2]_i_1_n_0 ),
        .Q(n[2]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \s[0]_i_1__0 
       (.I0(\state_reg[1]_0 ),
        .I1(state),
        .I2(s[0]),
        .O(\s[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \s[1]_i_1__0 
       (.I0(state),
        .I1(\state_reg[1]_0 ),
        .I2(s[0]),
        .I3(s[1]),
        .O(\s[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h77708880)) 
    \s[2]_i_1__0 
       (.I0(s[0]),
        .I1(s[1]),
        .I2(\state_reg[1]_0 ),
        .I3(state),
        .I4(s[2]),
        .O(\s[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF0E23022)) 
    \s[3]_i_1__0 
       (.I0(tx_start_wire),
        .I1(\state_reg[1]_0 ),
        .I2(tick_wire),
        .I3(state),
        .I4(\s[3]_i_3__0_n_0 ),
        .O(next_s));
  LUT6 #(
    .INIT(64'h7F7F7F0080808000)) 
    \s[3]_i_2__0 
       (.I0(s[1]),
        .I1(s[0]),
        .I2(s[2]),
        .I3(\state_reg[1]_0 ),
        .I4(state),
        .I5(s[3]),
        .O(\s[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \s[3]_i_3__0 
       (.I0(s[3]),
        .I1(s[1]),
        .I2(s[0]),
        .I3(s[2]),
        .I4(state),
        .O(\s[3]_i_3__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[0] 
       (.C(CLK),
        .CE(next_s),
        .D(\s[0]_i_1__0_n_0 ),
        .Q(s[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[1] 
       (.C(CLK),
        .CE(next_s),
        .D(\s[1]_i_1__0_n_0 ),
        .Q(s[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[2] 
       (.C(CLK),
        .CE(next_s),
        .D(\s[2]_i_1__0_n_0 ),
        .Q(s[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_reg[3] 
       (.C(CLK),
        .CE(next_s),
        .D(\s[3]_i_2__0_n_0 ),
        .Q(s[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBBBBBBBB0F4F0040)) 
    \state[0]_i_1 
       (.I0(\state[1]_i_2__0_n_0 ),
        .I1(tick_wire),
        .I2(\state_reg[1]_0 ),
        .I3(\state[0]_i_2__0_n_0 ),
        .I4(tx_start_wire),
        .I5(state),
        .O(\state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \state[0]_i_2__0 
       (.I0(n[1]),
        .I1(n[0]),
        .I2(n[2]),
        .O(\state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \state[1]_i_1 
       (.I0(\state_reg[1]_0 ),
        .I1(tick_wire),
        .I2(\state[1]_i_2__0_n_0 ),
        .I3(state),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \state[1]_i_2__0 
       (.I0(s[2]),
        .I1(s[0]),
        .I2(s[1]),
        .I3(s[3]),
        .O(\state[1]_i_2__0_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00,START:01,DATA:10,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(state),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "IDLE:00,START:01,DATA:10,STOP:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hD9)) 
    tx_reg_i_1
       (.I0(state),
        .I1(\state_reg[1]_0 ),
        .I2(b),
        .O(next_tx_reg));
  FDRE #(
    .INIT(1'b0)) 
    tx_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(next_tx_reg),
        .Q(tx_OBUF),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
