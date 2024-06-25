using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class quotation : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd,cmd1;
    SqlDataReader reader;
    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conn.Open();
            string checkuser = "select count(*) from Quotation";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            txtbillno.Text = ((Convert.ToInt32(cmd.ExecuteScalar()) + 1)).ToString();
            conn.Close();
        }
        txtdate.Text = (DateTime.Today).ToString("dd/MM/yyyy");

        cmd1 = new SqlCommand("select * from Details where Stock>0", conn);
        conn.Open();
        reader = cmd1.ExecuteReader();
        while (reader.Read())
        {
            ddlmodel.Items.Add(reader["Model"].ToString());
        }
        reader.Close();
        conn.Close();
    }
    protected void ddlmodel_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from Details where Model='" + ddlmodel.SelectedItem.Text + "'", conn);
        conn.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            txtspeed.Text=reader["TopSpeed"].ToString();
            txtfunction.Text=reader["Description"].ToString ();
            txtbattery.Text=reader ["battery"].ToString () ;
            txtcapacity.Text=reader ["capacity"].ToString () ;
            txtvoltage.Text=reader["voltage"].ToString ();
            txtcharging.Text=reader ["charging"].ToString () ;
            txtlight.Text=reader ["light"].ToString () ;
            txtshowroom.Text=reader ["showroom"].ToString () ;
           txtinsurance.Text=reader ["insurance"].ToString ();
            txtonroad.Text=reader ["onroad"].ToString ();
             txtcolor.Text=reader ["color"].ToString ();
             Image1.ImageUrl = reader["image"].ToString();
             filename = reader["image"].ToString();
        }
        reader.Close();
        conn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        string myquery = null;
        myquery = "insert into Quotation values(@Srno,@Qdate,@Model,@CustName,@Contact)";
        cmd = new SqlCommand(myquery, conn);
        cmd.Parameters.AddWithValue("@Srno", txtbillno.Text);
        cmd.Parameters.AddWithValue("@Qdate", txtdate.Text);
        cmd.Parameters.AddWithValue("@Model", ddlmodel.Text);
        cmd.Parameters.AddWithValue("@CustName", txtname.Text);
        cmd.Parameters.AddWithValue("@Contact", txtcontact.Text);
         cmd.ExecuteNonQuery();
         conn.Close();
         Response.Write("<script>alert('Quotation is Taken by Customer')</script");

         Response.Redirect(Request.RawUrl);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Quotation.aspx");
    }
}