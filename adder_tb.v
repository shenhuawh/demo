`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
/*
Company : Liyang Milian Electronic Technology Co., Ltd.
Brand: ������(msxbo)
Technical forum��uisrc.com
taobao: osrc.taobao.com
Create Date: 2020/09/30
Module Name: adder_tb
Description: adder_tb
Copyright: Copyright (c) msxbo
Revision: 1.0
Signal description��
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
reg [5:0] i; //�м����
// ���ñ�����ģ��ģ��
add uut (.a(a), .b(b),.c(c),.d(d),.e(e));
initial begin // initial �Ƿ����õĳ�ʼ���ؼ���
a=0;b=0;c=0;d=0; // �����ʼ�������ź�
for(i=1;i<31;i=i+1) begin
#10 ;
a = i;
b = i;
c = i;
d = i;
end // ���������ź�a ��ֵ
end
initial begin
$monitor($time,,,"%d + %d + %d + %d ={%d}",a,b,c,d,e); // �źŴ�ӡ���
#500 $finish;
end



endmodule
