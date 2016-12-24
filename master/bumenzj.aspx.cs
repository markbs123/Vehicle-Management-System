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

public partial class master_bumenzj : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
 
        if (!Page.IsPostBack)
        {

            this.diqubind();
        }
    }
    private void diqubind()
    {
        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from diqu", con1);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "diqu");
        this.DropDownList1.DataSource = Myds.Tables["diqu"];
        this.DropDownList1.DataValueField = "area";
        this.DropDownList1.DataTextField = "area";
        this.DropDownList1.DataBind();
        con1.Close();
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        string sql_newadd = "insert into danwei (dwdq,dwm,dwpwd) values('" + this.DropDownList1.SelectedValue + "','" + this.TextBox1.Text + "','" + this.TextBox2.Text + "')";

        SqlCommand cmd_newadd = new SqlCommand(sql_newadd, con);
        cmd_newadd.ExecuteNonQuery();
        Response.Write(" <script> alert( '{^_^}添加成功,正在跳转~ '); </script> ");
        Server.Transfer("bumen.aspx");
        con.Close();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("bumen.aspx");
    }
}