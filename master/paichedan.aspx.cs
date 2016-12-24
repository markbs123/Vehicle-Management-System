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



public partial class master_paichedan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from pcgl where id='" + Request.QueryString["carid"] + "'", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            this.Label1.Text = sdr["spdate"].ToString();
            this.Label2.Text = sdr["pcr"].ToString();
            this.Label3.Text = sdr["carid"].ToString();
            this.Label4.Text = sdr["username"].ToString();
            this.Label5.Text = sdr["outdate"].ToString();
            this.Label6.Text = sdr["howday"].ToString();
            this.Label13.Text = sdr["ycdq"].ToString();
            this.Label7.Text = sdr["ycks"].ToString();
            this.Label8.Text = sdr["mdd"].ToString();
            this.Label10.Text = sdr["ccyy"].ToString();
            this.Label11.Text = sdr["sxry"].ToString();
            this.Label12.Text = "备注信息:" + sdr["beizhu"].ToString();
        }
        sdr.Close();
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

    }
}
