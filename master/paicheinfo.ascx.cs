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

public partial class master_paicheinfo : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private string carid;
    public string Carid
    {
        set
        {
            this.carid = value.ToString();
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from pcgl where id='" + carid + "' order by outdate", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.Label1.Text = sdr["carid"].ToString();
                this.Label2.Text = sdr["username"].ToString();
                this.Label3.Text = sdr["outdate"].ToString();
                this.Label4.Text = sdr["mdd"].ToString();
                this.Label5.Text = sdr["ccyy"].ToString();
                this.Label9.Text = sdr["ycdq"].ToString();
                this.Label6.Text = sdr["ycks"].ToString();
                this.Label7.Text = sdr["sxry"].ToString();
                this.Label8.Text = carid;
                this.Label11.Text = sdr["howday"].ToString();


                if (sdr["ccfw"].ToString() == "城区内")
                {
                    this.Label10.Text = "城区内";
                    this.Label10.ForeColor = System.Drawing.Color.FromName("blue");
                }
                if (sdr["ccfw"].ToString() == "城区外")
                {
                    this.Label10.Text = "城区外";
                    this.Label10.ForeColor = System.Drawing.Color.FromName("fuchsia");
                }
                if (sdr["ccfw"].ToString() == "乡镇内")
                {
                    this.Label10.Text = "乡镇内";
                    this.Label10.ForeColor = System.Drawing.Color.FromName("orange");
                }
                if (sdr["ccfw"].ToString() == "乡镇外")
                {
                    this.Label10.Text = "乡镇外";
                    this.Label10.ForeColor = System.Drawing.Color.FromName("seagreen");
                }
            }
            con.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("paicheruku.aspx" + "?carid=" + this.Label8.Text + "");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("paichedan.aspx" + "?carid=" + this.Label8.Text + "");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con3 = Jjchatdb.createConnection();
        con3.Open();
        string sql_delete = "delete pcgl where id='" + this.Label8.Text + "'";
        SqlCommand cmd_delete = new SqlCommand(sql_delete, con3);
        cmd_delete.ExecuteNonQuery();
        con3.Close();


        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        string sql_update1 = "update userinfo set zaigan='yes' where username='" + this.Label2.Text + "'";
        SqlCommand cmd_update1 = new SqlCommand(sql_update1, con);
        cmd_update1.ExecuteNonQuery();
        con.Close();

        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        string sql_update2 = "update carinfo set zaigan='yes' where carnumber='" + this.Label1.Text + "'";
        SqlCommand cmd_update2 = new SqlCommand(sql_update2, con1);
        cmd_update2.ExecuteNonQuery();
        con1.Close();


        Response.Write(" <script> alert( '{^_^}删除成功,正在跳转~ '); </script> ");
        Server.Transfer("homepage.aspx");
    }
}
