using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class viewincome : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {

        decimal a = 0, c = 0;
        for (int i = 0; i < (GridView1.Rows.Count); i++)
        {
            a = Convert.ToDecimal(GridView1.Rows[i].Cells[4].Text.ToString());
            c = c + a; //storing total qty into variable 
        }
        txttotal.Text = Convert.ToString(c);
        
    }
    
}