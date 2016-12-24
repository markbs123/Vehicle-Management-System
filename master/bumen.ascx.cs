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

public partial class master_bumen : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {

            this.diqu();
        }
    }
    private string danweiid;

    private void danweibind()
    {
        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from danwei", con1);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "danwei");
        this.Label3.Text = "id";
        con1.Close();
    }
    public string Danweiid
    {
        set
        {
            this.danweiid = value.ToString();
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from danwei where id='" + danweiid + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.Label1.Text = sdr["dwdq"].ToString();
                this.Label4.Text = sdr["dwm"].ToString();
                this.Label2.Text = sdr["dwpwd"].ToString();
                this.Label3.Text = sdr["id"].ToString();
            }
            con.Close();
        }
    }
    private void diqu()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sd = new SqlDataAdapter();
        sd.SelectCommand = new SqlCommand("select * from diqu", con);
        DataSet Myds = new DataSet();
        sd.Fill(Myds, "diqu");
        this.DropDownList1.DataSource = Myds.Tables["diqu"];
        this.DropDownList1.DataValueField = "area";
        this.DropDownList1.DataTextField = "area";
        this.DropDownList1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        string sql_delete = "delete danwei where id='" + this.Label3.Text + "'";
        SqlCommand cmd_delete = new SqlCommand(sql_delete, con);
        cmd_delete.ExecuteNonQuery();
        con.Close();
        this.danweibind();


        Response.Write(" <script> alert( '{^_^}删除成功,正在跳转~ '); </script> ");
        Server.Transfer("bumen.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Panel1.Visible = true;
        SqlConnection con2 = Jjchatdb.createConnection();
        con2.Open();
        SqlCommand cmd = new SqlCommand("select * from danwei where id='" + this.Label3.Text + "'", con2);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            this.DropDownList1.Text = sdr["dwdq"].ToString();
            this.TextBox1.Text = sdr["dwm"].ToString();
            this.TextBox2.Text = sdr["dwpwd"].ToString();
            
        }
        sdr.Close();
        con2.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con3 = Jjchatdb.createConnection();
        con3.Open();
        string sql_update = "update danwei set dwdq='" + this.DropDownList1.SelectedValue + "',dwm='" +this.TextBox1.Text+"',dwpwd='" +this.TextBox2.Text+"' where id='" + this.Label3.Text + "'";


        SqlCommand cmd_update = new SqlCommand(sql_update, con3);
        cmd_update.ExecuteNonQuery();
        Response.Write(" <script> alert( '{^_^}修改成功,正在跳转~ '); </script> ");
        Server.Transfer("bumen.aspx");
        con3.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("bumen.aspx");
    }
}
