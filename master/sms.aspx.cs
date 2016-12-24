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

public partial class master_sms : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            string id = Request.QueryString["id"].ToString();
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from pcgl where id='" + id + "' order by outdate", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.lblusername.Text = sdr["username"].ToString();
                this.lblcarid.Text = sdr["carid"].ToString();
                this.lbltime.Text = sdr["outdate"].ToString();
                this.lblycks.Text = sdr["ycks"].ToString();
                this.lblmdd.Text = sdr["mdd"].ToString();
                this.lblday.Text = sdr["howday"].ToString();
            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string massage = this.Label1.Text + this.lblusername.Text + this.Label2.Text + this.lbltime.Text + this.Label3.Text + this.lblcarid.Text + this.Label4.Text + this.lblmdd.Text + this.Label5.Text + this.lblycks.Text + this.lblday.Text + this.Label7.Text;
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from userinfo where username='" + this.lblusername.Text + "'", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            this.lblsj.Text = sdr["phoneno"].ToString();
        }
        con.Close();
        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlCommand cmd1 = new SqlCommand("select * from sms", con1);
        SqlDataReader sdr1 = cmd1.ExecuteReader();
        if (sdr1.Read())
        {
            string url = sdr1["smsurl"] + "username=" + sdr1["smsid"] + "&password=" + sdr1["password"] + "&sendto=" + this.lblsj.Text + "&message=" + massage;
            this.lblurl.Text = url;
        }
        con1.Close();
        Response.Redirect(this.lblurl.Text);
    }
}
