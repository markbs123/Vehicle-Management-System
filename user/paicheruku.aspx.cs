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

public partial class user_paicheruku : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {

            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from pcgl where id='" + Request.QueryString["carid"] + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.Label1.Text = sdr["carid"].ToString();
                this.Label2.Text = sdr["username"].ToString();
                this.Label3.Text = sdr["outdate"].ToString();
                this.Label4.Text = sdr["howday"].ToString();
                this.Label15.Text = sdr["ccfw"].ToString();
                this.Label5.Text = sdr["mdd"].ToString();
                this.Label6.Text = sdr["ccyy"].ToString();
                this.Label14.Text = sdr["ycdq"].ToString();
                this.Label8.Text = sdr["ycks"].ToString();
                this.Label9.Text = sdr["sxry"].ToString();
                this.Label10.Text = sdr["beizhu"].ToString();
                this.Label11.Text = sdr["pcr"].ToString();
                this.Label12.Text = sdr["spdate"].ToString();
            }
            sdr.Close();
            con.Close();

        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        this.Label13.Text = this.Calendar1.SelectedDate.Year.ToString() + "-" + this.Calendar1.SelectedDate.Month.ToString() + "-" + this.Calendar1.SelectedDate.Day.ToString();
        this.Calendar1.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string outdate = this.Label13.Text;

        this.Label13.Text = this.Calendar1.SelectedDate.ToString("yyyy-MM-dd");

        SqlConnection con2 = Jjchatdb.createConnection();
        con2.Open();
        string sql_update = "update pcgl set comedate='" + this.Label13.Text + "',shijiday='" + this.TextBox2.Text + "',pcok='ok',spdate='" + System.DateTime.Now.ToString() + "' where id='" + Request.QueryString["carid"] + "'";
        SqlCommand cmd_update = new SqlCommand(sql_update, con2);
        cmd_update.ExecuteNonQuery();
        con2.Close();

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

        Response.Write(" <script> alert( '{^_^}入库成功！ '); </script> ");
        Server.Transfer("homepage.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        this.Calendar1.Visible = true;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");
    }
}
