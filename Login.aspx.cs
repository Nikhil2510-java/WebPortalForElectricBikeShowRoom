using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Login : System.Web.UI.Page
{
   
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void LoginButton_Click(object sender, EventArgs e)
    {
        if (Login1.UserName == "a" && Login1.Password == "b")
        {
            Response.Redirect("~/Default.aspx");
        }
    }
      protected void Login1_Authenticate1(object sender, AuthenticateEventArgs e)
    {

    }
}