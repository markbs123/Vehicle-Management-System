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

public partial class keshi_paicheinfoxianxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from pcgl where id='" + Request.QueryString["carid"] + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.Label1.Text = sdr["carid"].ToString();
                this.Label2.Text = sdr["username"].ToString();
                this.Label3.Text = sdr["outdate"].ToString();
                this.Label4.Text = sdr["howday"].ToString();
                this.Label5.Text = sdr["mdd"].ToString();
                this.Label6.Text = sdr["ccyy"].ToString();
                this.Label15.Text = sdr["ycdq"].ToString();
                this.Label8.Text = sdr["ycks"].ToString();
                this.Label9.Text = sdr["sxry"].ToString();
                this.Label10.Text = sdr["beizhu"].ToString();
                this.Label11.Text = sdr["pcr"].ToString();
                this.Label12.Text = sdr["spdate"].ToString();
                this.Label13.Text = sdr["comedate"].ToString();
                this.Label14.Text = sdr["shijiday"].ToString();

            }
            sdr.Close();
            con.Close();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript>history.go(-2);</script>");   
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}
