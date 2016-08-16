using DBHelper.MSSQLSERVER;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public static string ConnectionStrings = System.Configuration.ConfigurationManager.ConnectionStrings["EFDbContext"].ConnectionString;
        public static DateTime initDate = DateTime.Parse("2015-01-01");


        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string createSQL = @"IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TempDailyStroeRooms]') AND type in (N'U'))
                                DROP TABLE [dbo].[TempDailyStroeRooms]


                                SET ANSI_NULLS ON
                                GO

                                SET QUOTED_IDENTIFIER ON
                                GO

                                CREATE TABLE [dbo].[TempDailyStroeRooms](
	                                [ID] [int] NULL,
	                                [ContractID] [int] NULL,
	                                [StoreID] [int] NULL,
	                                [RoomID] [int] NULL,
	                                [CheckDate] [date] NULL,
	                                [iMonth] [int] NULL,
	                                [iYear] [int] NULL
                                ) ON [PRIMARY]

                                GO";

            string strSQL = string.Format(
                    @"select * from (
                    select ct.ID as ContractID,ct.RoomID,rm.StoreID,ct.StartDate,case when ct.Status = 4 then ISNULL(RealEndDate,T3.Date) else ct.EndDate end as endDate from Contracts ct 
	                    inner join Rooms rm on ct.RoomID = rm.ID 
	                    left join 
	                    (select ContractID,MAX(Date) Date  from DailyRentApportion Group by ContractID) T3
	                    on T3.ContractID = ct.ID
                    where ct.Status != 2  ) T where t.endDate is not  null order by StartDate");

            DataTable paymentDt = SQLHelper.ExecuteDataset(ConnectionStrings, CommandType.Text, strSQL).Tables[0];
            List<string> sqlList = new List<string>();

            int iDay = 0;
            int k = 1;

//            for (int i = 0; i < paymentDt.Rows.Count; i++)
//            {
//                iDay = 0;
//                DateTime startDate = DateTime.Parse(paymentDt.Rows[i]["StartDate"].ToString());
//                DateTime endDate = DateTime.Parse(paymentDt.Rows[i]["EndDate"].ToString());
              
//                while (initDate.AddDays(iDay) <= DateTime.Now.Date)
//                {
//                    DateTime currenDate = initDate.AddDays(iDay);

//                    if (currenDate >= startDate && endDate <= currenDate)
//                    {
//                        strSQL = string.Format(@"INSERT INTO [AMS].[dbo].[TempDailyStroeRooms]([ID]
//                            ,[ContractID]
//                            ,[StoreID]
//                            ,[RoomID]
//                            ,[CheckDate])
//                        VALUES({0},{1},{2},{3},'{4}')", k, paymentDt.Rows[i]["ContractID"], paymentDt.Rows[i]["RoomID"], paymentDt.Rows[i]["RoomID"], currenDate);

//                        sqlList.Add(strSQL);

//                        k++;
//                    }

//                    iDay++;
//                }

//                SQLHelper.ExecuteNonQuery(ConnectionStrings, sqlList);
//            }

            while (initDate.AddDays(iDay) <= DateTime.Now.Date)
            {
                DateTime currenDate = initDate.AddDays(iDay);

                DataRow[] rows = paymentDt.Select(" '" + currenDate.ToString() + "' >= StartDate and '" + currenDate.ToString() + "' <= EndDate");

                for (int i = 0; i < rows.Length; i++)
                {
                    strSQL = string.Format(@"INSERT INTO [AMS].[dbo].[TempDailyStroeRooms]([ID]
                            ,[ContractID]
                            ,[StoreID]
                            ,[RoomID]
                            ,[CheckDate],[iMonth],[iYear])
                        VALUES({0},{1},{2},{3},'{4}',{5},{6})", k, rows[i]["ContractID"], rows[i]["StoreID"], rows[i]["RoomID"], currenDate,currenDate.Month,currenDate.Year);

                    sqlList.Add(strSQL);

                    k++;
                }

                SQLHelper.ExecuteNonQuery(ConnectionStrings, sqlList);
                sqlList = new List<string>();

                iDay++;
            }

            MessageBox.Show("插入成功！记录数:" + k);
            
        }
    }
}
