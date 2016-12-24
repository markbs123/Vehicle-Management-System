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

public partial class keshi_password : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
           Server.Execute("loginchk.aspx");
           this.Label1.Text = Convert.ToString(Session["yonghuname"]);
    }


    protected void Button1_Click(object sender, EventArgs e)
    {  
        SqlConnection con3 = Jjchatdb.createConnection();
        con3.Open();
        SqlCommand cmd = new SqlCommand("select * from yonghu where yonghuname='" + this.Label1.Text + "'", con3);
        SqlDataReader sdr = cmd.ExecuteReader();
        sdr.Read();
        string aa = sdr["yonghupwd"].ToString();
        
            if (password.Text != password1.Text)
            {
                Label4.Text = "新密码和确认密码不一致";
            }
            else if (txtpassword.Text != aa)
            {
                Label4.Text = "原密码不正确";
            }
            else
            {
                SqlConnection con2 = Jjchatdb.createConnection();

                string sql = "update yonghu set yonghupwd='" + this.password.Text + "'where yonghuname ='" +  this.Label1.Text + "'";
                SqlCommand cmds = new SqlCommand(sql, con2);
                con2.Open();
                try
                {
                    cmds.ExecuteNonQuery();
                    Response.Write(" <script> alert( '{^_^}修改成功！'); </script> ");
                }
                catch (SqlException)
                {
                    Label4.Text = "密码修改失败";
                }
                finally
                {
                    con2.Close();
                }
                sdr.Close();
                con3.Close();

        }
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");
    }
}
