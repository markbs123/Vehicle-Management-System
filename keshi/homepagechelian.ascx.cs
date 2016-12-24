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

public partial class keshi_homepagechelian : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private string carid1;

    private void carbind()
    {
        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from carinfo", con1);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "carinfo");
        this.Label12.Text = "id";
        con1.Close();
    }
    public string Carid1
    {
        set
        {
            this.carid1 = value.ToString();
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from carinfo where id='" + carid1 + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.Label1.Text = sdr["carkind"].ToString();
                this.Label2.Text = sdr["carnumber"].ToString();
                this.Label4.Text = sdr["enginenumber"].ToString();
                this.Label5.Text = sdr["paiqi"].ToString();
                this.Label6.Text = sdr["price"].ToString();
                this.Label13.Text = sdr["ccgls"].ToString();
                this.Label7.Text = sdr["buytime"].ToString();
                this.Label8.Text = sdr["area"].ToString();
                this.Label9.Text = sdr["department"].ToString();
                this.Label10.Text = sdr["kind"].ToString();
                this.Label11.Text = sdr["ps"].ToString();
                this.Label12.Text = sdr["id"].ToString();
                if (sdr["zaigan"].ToString() == "yes")
                {
                    this.Label3.Text = "待派";
                    this.Label3.ForeColor = System.Drawing.Color.FromName("Green");
                }
                else
                {
                    this.Label3.Text = "在途";
                    this.Label3.ForeColor = System.Drawing.Color.FromName("red");
                }

            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        string sql_delete = "delete carinfo where id='" + this.Label12.Text + "'";
        SqlCommand cmd_delete = new SqlCommand(sql_delete, con);
        cmd_delete.ExecuteNonQuery();
        con.Close();
        this.carbind();

        Response.Write(" <script> alert( '{^_^}删除成功! '); </script> ");
        Server.Transfer("clsearch.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/keshi/xzcledit.aspx" + "?id=" + this.Label12.Text + "");
    }
}
