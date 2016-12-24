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

public partial class user_paicheinfoall : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private string caridall;
    public string Caridall
    {
        set
        {
            this.caridall = value.ToString();
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from pcgl where id='" + caridall + "' order by outdate", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.Label1.Text = sdr["carid"].ToString();
                this.Label2.Text = sdr["username"].ToString();
                this.Label3.Text = sdr["outdate"].ToString();
                this.Label4.Text = sdr["comedate"].ToString();
                this.Label8.Text = sdr["ccfw"].ToString();
                this.Label5.Text = sdr["mdd"].ToString();
                this.Label6.Text = sdr["ccyy"].ToString();
                this.Label7.Text = sdr["sxry"].ToString();
                this.Label10.Text = sdr["shijiday"].ToString();
                this.Label11.Text = sdr["pcr"].ToString();
                this.Label12.Text = sdr["id"].ToString();
            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("paicheinfoxianxi.aspx" + "?carid=" + this.Label12.Text + "");
    }
}
