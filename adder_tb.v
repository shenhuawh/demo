`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
Company : Liyang Milian Electronic Technology Co., Ltd.
Brand: 米联客(msxbo)
Technical forum：uisrc.com
taobao: osrc.taobao.com
Create Date: 2020/09/30
Module Name: adder_tb
Description: adder_tb
Copyright: Copyright (c) msxbo
Revision: 1.0
Signal description：
1) _i input
2) _o output
3) _n activ low
4) _dg debug signal 
5) _r delay or register
6) _s state mechine
*/
////////////////////////////////////////////////////////////////////////////////

module adder_tb();
reg [5:0] a;
reg [5:0] b;
reg [5:0] c;
reg [5:0] d;
wire[7:0] e;
reg [5:0] i; //中间变量
// 调用被仿真模块模块
add uut (.a(a), .b(b),.c(c),.d(d),.e(e));
initial begin // initial 是仿真用的初始化关键词
a=0;b=0;c=0;d=0; // 必须初始化输入信号
for(i=1;i<31;i=i+1) begin
#10 ;
a = i;
b = i;
c = i;
d = i;
end // 给是输入信号a 赋值
end
initial begin
$monitor($time,,,"%d + %d + %d + %d ={%d}",a,b,c,d,e); // 信号打印输出
#500 $finish;
end



endmodule
