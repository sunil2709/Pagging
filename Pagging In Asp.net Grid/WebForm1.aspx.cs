using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Pagging_In_Asp.net_Grid
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=CSMBHUL562\SQLEXPRESS;Initial Catalog=B_task;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataSource = loadGrid();
            GridView1.DataBind();
        }

      public DataTable loadGrid()
        {
            DataTable dt = new DataTable();
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from AppointmentBook";
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            con.Close();
            return dt;

        }
    }
}