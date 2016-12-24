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

public partial class keshi_paiche : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            this.keshibind();
            this.Label2.Text = Convert.ToString(Session["yonghuname"]);
        }

    }

    private void keshibind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from danwei", con);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "danwei");
        this.DropDownList5.DataSource = Myds.Tables["danwei"];
        this.DropDownList5.DataValueField = "dwm";
        this.DropDownList5.DataTextField = "dwm";
        this.DropDownList5.DataBind();
        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string outdate = this.Label1.Text;

        this.Label1.Text = this.Calendar1.SelectedDate.ToString("yyyy-MM-dd");

        SqlConnection con2 = Jjchatdb.createConnection();
        con2.Open();
        string sql_newadd = "insert into pcgl (carid,username,outdate,howday,mdd,ccyy,ycdq,ycks,sxry,beizhu)values('" + this.TextBox11.Text + "','" + this.TextBox12.Text + "','" + outdate + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.TextBox6.Text + "','" + this.Label2.Text + "','" + this.DropDownList5.Text + "','" + this.TextBox9.Text + "','" + this.TextBox10.Text + "')";
        SqlCommand cmd_newadd = new SqlCommand(sql_newadd, con2);
        cmd_newadd.ExecuteNonQuery();

        Response.Write(" <script> alert( '{^_^}申请成功,正在跳转~ '); </script> ");
        Server.Transfer("homepage.aspx");
        con2.Close();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        this.Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        this.Label1.Text = this.Calendar1.SelectedDate.Year.ToString() + "-" + this.Calendar1.SelectedDate.Month.ToString() + "-" + this.Calendar1.SelectedDate.Day.ToString();
        this.Calendar1.Visible = false;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");
    }
  
}
