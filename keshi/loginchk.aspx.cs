using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class keshi_loginchk : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
             if (Session["yonghuname"] == null)
            {
                Response.Redirect("error.aspx?causation=timeout");
            }
           else
            {
                string amid = Convert.ToString(Session["yonghuname"]);
                string ampwd = Convert.ToString(Session["yonghupwd"]);
                SqlConnection con= Jjchatdb.createConnection();
                con.Open();
                SqlCommand cmd = new SqlCommand("select yonghuname,yonghupwd from yonghu where yonghuname='" + amid + "'", con); 
                SqlDataReader sdr = cmd.ExecuteReader();
                if (sdr.Read())
                {
                    string yzcpwd = sdr["yonghupwd"].ToString();
                    if (yzcpwd == ampwd)
                    {
                        
                    }
                    else
                    {
                        Response.Redirect("error.aspx?causation=awlesslogin");
                    }
                }
                else
                {
                    Response.Redirect("error.aspx?causation=awlesslogin");
                }

           }
    }
}
