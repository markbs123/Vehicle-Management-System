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

public partial class master_yonghu : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    private string yonghuid;

    private void yonghubind()
    {
        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from yonghu", con1);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "yonghu");
        this.Label3.Text = "id";
        con1.Close();
    }


    public string Yonghuid
    {
        set
        {
            this.yonghuid = value.ToString();
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from yonghu where id='" + yonghuid + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.Label1.Text = sdr["yonghuname"].ToString();
                this.Label2.Text = sdr["yonghupwd"].ToString();
                this.Label3.Text = sdr["id"].ToString();
            }
            con.Close();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = true;
        SqlConnection con2 = Jjchatdb.createConnection();
        con2.Open();
        SqlCommand cmd = new SqlCommand("select * from yonghu where id='" + this.Label3.Text + "'", con2);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            this.TextBox1.Text = sdr["yonghuname"].ToString();
            this.TextBox2.Text = sdr["yonghupwd"].ToString();


        }
        sdr.Close();
        con2.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        string sql_delete = "delete yonghu where id='" + this.Label3.Text + "'";
        SqlCommand cmd_delete = new SqlCommand(sql_delete, con);
        cmd_delete.ExecuteNonQuery();
        con.Close();
        this.yonghubind();


        Response.Write(" <script> alert( '{^_^}删除成功,正在跳转~ '); </script> ");
        Server.Transfer("yonghu.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con3 = Jjchatdb.createConnection();
        con3.Open();
        string sql_update = "update yonghu set yonghuname='" + this.TextBox1.Text + "',yonghupwd='" + this.TextBox2.Text + "' where id='" + this.Label3.Text + "'";


        SqlCommand cmd_update = new SqlCommand(sql_update, con3);
        cmd_update.ExecuteNonQuery();
        Response.Write(" <script> alert( '{^_^}修改成功,正在跳转~ '); </script> ");
        Server.Transfer("yonghu.aspx");
        con3.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("yonghu.aspx");
    }
}