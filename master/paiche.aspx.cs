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

public partial class master_paiche : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {

                this.diqubind();
            

        }
    }



    private void diqubind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sd = new SqlDataAdapter();
        sd.SelectCommand = new SqlCommand("select * from diqu", con);
        DataSet ds = new DataSet();
        sd.Fill(ds, "diqu");
        this.DropDownList6.DataSource = ds.Tables["diqu"];
        this.DropDownList6.DataValueField = "area";
        this.DropDownList6.DataTextField = "area";
        this.DropDownList6.DataBind();
        con.Close();
    }   
    protected void Button1_Click(object sender, EventArgs e)
    {

        this.Label1.Text = this.Calendar1.SelectedDate.ToString("yyyy-MM-dd");

        SqlConnection con2 = Jjchatdb.createConnection();
        con2.Open();
        string sql_newadd = "insert into pcgl (carid,username,outdate,ccfw,howday,mdd,ccyy,ycdq,ycks,sxry,beizhu,pcr,pcok,spdate)values('" + this.TextBox11.Text + "','" + this.TextBox12.Text + "','" + this.Label1.Text + "','" + this.RadioButtonList1.SelectedValue + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.TextBox6.Text + "','" + this.DropDownList6.Text + "','" + this.TextBox14.Text + "','" + this.TextBox9.Text + "','" + this.TextBox10.Text +"','" + this.TextBox13.Text + "','" + "yes" + "','" + System.DateTime.Now.ToString() + "')";
        SqlCommand cmd_newadd = new SqlCommand(sql_newadd, con2);
        cmd_newadd.ExecuteNonQuery();
        con2.Close();


        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlCommand cmd = new SqlCommand("update [carinfo] set [zaigan]='" + "no" + "'where carnumber='" + this.TextBox11.Text + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();

        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlCommand cma = new SqlCommand("update [userinfo] set [zaigan]='" + "no" + "'where username='" + this.TextBox12.Text + "'", con1);
        cma.ExecuteNonQuery();
        con1.Close();


        Response.Write(" <script> alert( '{^_^}派车成功,正在跳转~ '); </script> ");
        Server.Transfer("homepage.aspx");
      
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
