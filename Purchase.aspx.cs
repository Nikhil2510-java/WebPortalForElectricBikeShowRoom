using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

public partial class BookIssue : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader reader;
    string filename;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            conn.Open();
            string checkuser = "select count(*) from Details";
            SqlCommand cmd = new SqlCommand(checkuser, conn);
            txtbillno.Text = ((Convert.ToInt32(cmd.ExecuteScalar()) + 1)).ToString();
            conn.Close();
        }
        txtdate.Text = (DateTime.Today).ToString("dd/MM/yyyy");
    }


    protected void UploadFile(object sender, EventArgs e)
    {
        string folderPath = Server.MapPath("~/Images/");
        //Check whether Directory (Folder) exists.
        if (!Directory.Exists(folderPath))
        {
            //If Directory (Folder) does not exists Create it.
            Directory.CreateDirectory(folderPath);
        }

        //Save the File to the Directory (Folder).
        avatarUpload.SaveAs(folderPath + Path.GetFileName(avatarUpload.FileName));

        //Display the Picture in Image control.
        Avatar.ImageUrl = "~/Images/" + Path.GetFileName(avatarUpload.FileName);
       filename = Path.GetFileName(avatarUpload.FileName);


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
                String filename="";
        
            if (avatarUpload.HasFile)
                 {
                    if (avatarUpload.FileName.EndsWith("jpg") || avatarUpload.FileName.EndsWith("jpeg") || avatarUpload.FileName.EndsWith("png"))
                       {
                filename =Server.MapPath("~/images/")+ avatarUpload.FileName;
                avatarUpload.PostedFile.SaveAs(filename);
            conn.Open();
            string myquery = null;
            myquery = "insert into Details values(@BillNo,@Billdate,@Model,@TopSpeed,@Des,@battery,@capacity,@voltage,@charging,@light,@show,@insurance,@onroad,@stock,@color,@image)";
            cmd = new SqlCommand(myquery, conn);
            cmd.Parameters.AddWithValue("@BillNo", txtbillno.Text);
            cmd.Parameters.AddWithValue("@Billdate", txtdate.Text);
            cmd.Parameters.AddWithValue("@Model", txtmodel.Text);
            cmd.Parameters.AddWithValue("@TopSpeed", txtspeed.Text);
            cmd.Parameters.AddWithValue("@Des", txtfunction.Text);
            cmd.Parameters.AddWithValue("@battery", txtbattery.Text);
            cmd.Parameters.AddWithValue("@capacity", txtcapacity.Text);
            cmd.Parameters.AddWithValue("@voltage", txtvoltage.Text);
            cmd.Parameters.AddWithValue("@charging", txtcharging.Text);
            cmd.Parameters.AddWithValue("@light", txtlight.Text);
            cmd.Parameters.AddWithValue("@show", txtshowroom.Text);
            cmd.Parameters.AddWithValue("@insurance", txtinsurance.Text);
            cmd.Parameters.AddWithValue("@onroad", txtonroad.Text);
            cmd.Parameters.AddWithValue("@stock", txtstock.Text);
            cmd.Parameters.AddWithValue("@color", txtcolor.Text);
            filename = "~/images/" + avatarUpload.FileName;
            cmd.Parameters.AddWithValue("@image", filename);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('New Vehicle is Purchased')</script");
            conn.Close();
            Response.Redirect(Request.RawUrl);
         }

            else
            {
                Response.Write("<script>alert('Kindly Upload File with jpg or jpeg or png format')</script>");
            }
        }
       
}
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Purchase.aspx");
    }

    protected void txtinsurance_TextChanged(object sender, EventArgs e)
    {
        txtonroad.Text = (Convert.ToInt32(txtshowroom.Text) + Convert.ToInt32(txtinsurance.Text)).ToString();

    }
}