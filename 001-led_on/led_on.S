/*
 *  点亮主板上LED1---GPF4
 *  输出低电平---点亮
 *  输出高电平---熄灭
 */
.text
.global _start

_start:
/*
 *   1.配置GPF4为输出模式
 *     GPFCON(0x56000050)  [9:8] = 01
 */
  ldr r1, =0x56000050
  ldr r0, =0x100
  str r0, [r1]

/*
 *  2.配置GPF4输出低电平
 *    GPFDAT(0x56000054)   bit4 = 0  
 */
  ldr r1, =0x56000054
  ldr r0, =0x0
  str r0, [r1]

//3.死循环
halt:
  b halt

