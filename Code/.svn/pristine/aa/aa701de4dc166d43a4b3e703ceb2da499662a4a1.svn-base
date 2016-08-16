using System;
using System.Runtime.InteropServices;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Threading;


namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {

//--------------------
   
        //蜂鸣器
        [DllImport("K9RF.dll", EntryPoint = "Buzzer")]
        public static extern int Buzzer( int sc);

        //读DLL版本号
        [DllImport("K9RF.dll", EntryPoint = "GetDLLVersion")]
        public static extern int GetDLLVersion(byte[] aType);

        //从发卡器中读取酒店标识
        [DllImport("K9RF.dll", EntryPoint = "GetCoid")]
        public static extern int GetCoid(byte[] dlscoid);

        //读卡数据
        [DllImport("K9RF.dll", EntryPoint = "ReadCard")]
        public static extern int ReadCard( byte[] carddata);

        //注销卡片
        [DllImport("K9RF.dll", EntryPoint = "CardErase")]
        public static extern int CardErase(int coid,byte[] carddata);

        //客人卡
        [DllImport("K9RF.dll", EntryPoint = "WriteGuestCard")]
        public static extern int WriteGuestCard( int dlscoid, byte cardno, byte dai, byte llock, char[] EDate, char[] RoomNo, byte[] cardhexstr);
       

        //获得客人卡信息
        [DllImport("K9RF.dll", EntryPoint = "GetGuestCardinfo")]
        public static extern int GetGuestCardinfo(int dlscoid, byte[] carddata, byte[] lockno);
      

 
        byte[] carddata = new byte[128];

        public Form1()
        {
            InitializeComponent();
       
        }


        private void button24_Click(object sender, EventArgs e)//获取DLL动态库版本号
        {
            byte[] types = new byte[20];
            string strp="";
            int i,st;
            st=GetDLLVersion(types);
            if (st == 0)
            {
                for (i = 0; i < 20; i++)
                {
                    strp = strp + ((char)types[i]).ToString();
                }
                MessageBox.Show("动态库版本："+strp);
            }
            else MessageBox.Show("Getdll Fails!");

        }

        private void button25_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }


        private void Form1_Shown(object sender, EventArgs e)
        {
      
            dateTimePicker1.Value = DateTime.Now.AddDays(1);
            textBox2.Text = "0";
            textBox3.Text = "001002003";
            textBox4.Text = "0";
        }

        private void button4_Click(object sender, EventArgs e)//验证发卡器鸣叫
        {
            Buzzer( 50);
        }



        private void button3_Click(object sender, EventArgs e)
        {
            textBox2.Text = "0";
            textBox3.Text = "001002003";
            textBox4.Text = "0";
            dateTimePicker1.Value = DateTime.Now.AddDays(1);
        }

   

        private void button1_Click(object sender, EventArgs e)//获取酒店标识
        {
    
            int i,k;
            byte[] Dcoid = new byte[20];
              string coid = "";
            k = GetCoid(Dcoid);
            if (k==0)
            {
                for (i = 0; i < 6; i++)
                coid = coid + ((char)Dcoid[i]).ToString();
                textBox5.Text = coid;
                i= Convert.ToInt32(coid.Substring(0,2),16)*65536+Convert.ToInt32(coid.Substring(2,4),16) % 16383;   
                textBox1.Text = i.ToString();

            }
            else MessageBox.Show("获得酒店标识失败，返回值：" + k.ToString());

        }

        private void button7_Click(object sender, EventArgs e)//注销卡片
        {
           
            int i,st;
            string datastr = "";
            byte[] cardbuf = new byte [128];
            int dlscoid;
            dlscoid = Convert.ToInt32(textBox1.Text);
            st = CardErase(dlscoid,cardbuf);
            Thread.Sleep(400);//建议延时500毫秒，等待硬件响应
            if (st == 0)
                {
                    Buzzer(50); 
                    for (i = 0; i < 38; i++)
                        datastr = datastr + ((char)carddata[i]).ToString();
                    textBox5.Text = datastr;

                        MessageBox.Show("注销卡片成功！");
                }
                else
                {
                    MessageBox.Show("注销卡片失败，返回值：" + st.ToString());
                }          

            
        }

     

        private void button6_Click(object sender, EventArgs e)//制作客人卡
        {
     
            int i, st;
            int dlscoid;
            byte cardno;
            byte dai;
            byte llock;
            string datastr = "";
            string lockstr,EDatestr;
            byte[] cardbuf = new byte[128];

            char[] lockno = new char[9];
            char[] EDate = new char[10];

            lockstr=textBox3.Text;//锁号
            for (i = 0; i < 9; i++)
               lockno[i] =Convert.ToChar(lockstr.Substring(i, 1));
            EDatestr = dateTimePicker1.Value.ToString("yyMMdd") + dateTimePicker2.Value.ToString("HHmm");//有效时间
            for (i = 0; i < 10; i++)
               EDate[i] = Convert.ToChar(EDatestr.Substring(i, 1));

            dlscoid = Convert.ToInt32(textBox1.Text);//酒店标识
            cardno = Convert.ToByte(textBox2.Text);  //卡号 0..15循环
            dai = Convert.ToByte(textBox4.Text);   //屏蔽前卡标志 0..255递增循环
            if (radioButton3.Checked) llock = 1;  //开反锁标志
            else llock = 0;
    
                st = WriteGuestCard( dlscoid, cardno, dai, llock, EDate, lockno, cardbuf);
                Thread.Sleep(400);//建议延时400毫秒，等待硬件响应
                if (st == 0)
                {
                   Buzzer(50);     
                   for (i = 0; i < 32; i++)
                       datastr = datastr + ((char)carddata[i]).ToString();
                   textBox5.Text = datastr;

                    MessageBox.Show("发宾客卡成功！");
                }
                else
                {
                    MessageBox.Show("发宾客卡失败，返回值："+st.ToString());
                }
        }

 

        private void button10_Click(object sender, EventArgs e)//读客人卡锁号
        {
            byte[] lockno = new byte[50];

            int i,st;
            string locknostr="",datastr="",btime="",etime="",ulock="",cardno="";
            int dlscoid;
            dlscoid= Convert.ToInt32(textBox1.Text);
            st = GetGuestCardinfo(dlscoid, carddata, lockno);
            for (i = 0; i < 38; i++)
                datastr = datastr + ((char)carddata[i]).ToString();
            textBox5.Text = datastr;
            if (st == 0)
                {
                    for (i = 0; i < 9; i++)
                       locknostr=locknostr+((char)lockno[i]).ToString();
                    for (i = 9; i < 21; i++)
                        btime = btime + ((char)lockno[i]).ToString();
                    for (i = 21; i < 33; i++)
                        etime = etime + ((char)lockno[i]).ToString();
                    for (i = 34; i < 42; i++)
                        cardno = cardno + ((char)lockno[i]).ToString();
                    ulock = ulock + ((char)lockno[33]).ToString();

                    MessageBox.Show("卡    号:" + cardno + "\n" + "锁    号:" + locknostr + "\n" + "发卡时间:" + btime + "\n" + "到期时间:" + etime + "\n" + "是否开反锁:" + ulock);

                }
                else if (st == 1)
                {
                    MessageBox.Show("连接发卡器失败,返回值：" + st.ToString());

                }
                else if (st == -2)
                {
                    MessageBox.Show("没有有效卡片,返回值：" + st.ToString());

                }
                else if (st == -3)
                {
                    MessageBox.Show("非本酒店卡,酒店标识不匹配,返回值：" + st.ToString());

                }
                else if (st == -4)
                {
                    MessageBox.Show(" 空白卡或者已经注销的卡片,返回值：" + st.ToString());

                }
                else
                {
                    MessageBox.Show("未知返回值："+st.ToString());

                }

        }



    }
}
