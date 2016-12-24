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

public partial class keshi_hemepagejsy : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private string carid1;

    private void userbind()
    {
        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from userinfo", con1);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "userinfo");
        this.Label11.Text = "id";
        con1.Close();
    }
    public string Carid1
    {
        set
        {
            this.carid1 = value.ToString();
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from userinfo where id='" + carid1 + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.Label1.Text = sdr["username"].ToString();
                this.Label2.Text = sdr["sex"].ToString();
                this.Label3.Text = sdr["birthday"].ToString();
                this.Label4.Text = sdr["sfzno"].ToString();
                this.Label5.Text = sdr["jszno"].ToString();
                this.Label10.Text = sdr["phoneno"].ToString();
                this.Label6.Text = sdr["area"].ToString();
                this.Label7.Text = sdr["department"].ToString();
                this.Label8.Text = sdr["usualcar"].ToString();
                this.Label11.Text = sdr["id"].ToString();
                if (sdr["zaigan"].ToString() == "yes")
                {
                    this.Label9.Text = "待派";
                    this.Label9.ForeColor = System.Drawing.Color.FromName("Green");

                }
                else
                {
                    this.Label9.Text = "在途";
                    this.Label9.ForeColor = System.Drawing.Color.FromName("Red");
                }
             

            }
            con.Close();
        }
    }
}
