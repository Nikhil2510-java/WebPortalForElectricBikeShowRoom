using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class sale : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conn.Open();
            string checkuser = "select count(*) from Sale";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            txtbillno.Text = ((Convert.ToInt32(cmd.ExecuteScalar()) + 1)).ToString();
            conn.Close();
        }
        txtdate.Text = (DateTime.Today).ToString("dd/MM/yyyy");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        conn.Open();
        string myquery = null;
        myquery = "insert into Sale values(@BillNo,@Bdate,@CustName,@Contact,@Address,@Model,@color,@showroom,@Insurance,@Onroad)";
        cmd = new SqlCommand(myquery, conn);
        cmd.Parameters.AddWithValue("@Billno", txtbillno.Text);
        cmd.Parameters.AddWithValue("@Bdate", txtdate.Text);
        cmd.Parameters.AddWithValue("@CustName", txtname.Text);
        cmd.Parameters.AddWithValue("@Contact", txtcontact.Text);
        cmd.Parameters.AddWithValue("@Address", txtaddress.Text);
        cmd.Parameters.AddWithValue("@Model", txtname.Text);
        cmd.Parameters.AddWithValue("@color", txtcolor.Text);
        cmd.Parameters.AddWithValue("@Showroom", txtshowroom.Text);
        cmd.Parameters.AddWithValue("@Insurance", txtinsurance.Text);
        cmd.Parameters.AddWithValue("@onroad", txtonroad.Text);
        cmd.ExecuteNonQuery();
        conn.Close();

        conn.Open();
        myquery = null;
        myquery = "Update Details Set Stock=Stock-1 where Model='" + txtname.Text + "'";
        cmd = new SqlCommand(myquery, conn);
        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Write("<script>alert('Vehicle is Sold to Customer')</script");

        Response.Redirect(Request.RawUrl);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        txtsrno.Visible =true;
        ddlno.Visible = false; 
         txtname.Visible =false;
         ddlmodel.Visible = true;
         cmd = new SqlCommand("select Distinct Model from Details where stock>0", conn);
         conn.Open();
         reader = cmd.ExecuteReader();
         while (reader.Read())
         {
             ddlmodel.Items.Add(reader["Model"].ToString());
         }
         reader.Close();
         conn.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
         txtsrno.Visible =false;
         ddlno.Visible = true; 
          txtname.Visible =true;
          ddlmodel.Visible = false;
          cmd = new SqlCommand("select * from Quotation", conn);
          conn.Open();
          reader = cmd.ExecuteReader();
          while (reader.Read())
          {
              ddlno.Items.Add(reader[0].ToString());
          }
          reader.Close();
          conn.Close();
          txtshowroom.Text = "";
          txtinsurance.Text = "";
          txtonroad.Text = "";
          txtcolor.Text = "";
          txtname.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Sale.aspx");
    }
    protected void ddlmodel_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from Details where Model='" + ddlmodel.SelectedItem.Text + "'", conn);
        conn.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            txtshowroom.Text = reader["showroom"].ToString();
            txtinsurance.Text = reader["insurance"].ToString();
            txtonroad.Text = reader["onroad"].ToString();
            txtcolor.Text = reader["color"].ToString();
            txtname.Text = ddlmodel.Text;
        }
        conn.Close();
    }
    protected void ddlno_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd = new SqlCommand("select * from Quotation where Srno=" + ddlno.SelectedItem.Text , conn);
        conn.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            txtcust.Text = reader["CustName"].ToString();
            txtcontact.Text = reader["Contact"].ToString();
            txtname.Text = reader["Model"].ToString();
         }
        conn.Close();
        cmd = new SqlCommand("select * from Details where Model='" + txtname.Text+"'", conn);
        conn.Open();
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            txtshowroom.Text = reader["showroom"].ToString();
            txtinsurance.Text = reader["insurance"].ToString();
            txtonroad.Text = reader["onroad"].ToString();
            txtcolor.Text = reader["color"].ToString();
        }
        conn.Close();




    }
   
}