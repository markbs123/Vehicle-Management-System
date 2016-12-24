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

public partial class user_paiche : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Server.Execute("loginchk.aspx");
    
        if (!Page.IsPostBack)
        {
            this.Labeldw.Text = "1";
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from danwei where dwdq+dwm='" + Convert.ToString(Session["dwdq+dwm"]) + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.Label4.Text = sdr["dwdq"].ToString();
                this.Label5.Text = sdr["dwm"].ToString();
            
                if (sdr["dwm"].ToString().Contains("乡"))
                {
                    this.Panel3.Visible = true;
                    this.Panel2.Visible = false;
                    this.Labeldw.Text = "0";
                }
                if (sdr["dwm"].ToString().Contains("村"))
                {
                    this.Panel3.Visible = true;
                    this.Panel2.Visible = false;
                    this.Labeldw.Text = "0";
                }
                if (sdr["dwm"].ToString().Contains("镇"))
                {
                    this.Panel3.Visible = true;
                    this.Panel2.Visible = false;
                    this.Labeldw.Text = "0";
                }
            }

            sdr.Close();
            con.Close();
            this.carbind();
            this.userbind();
        }

    }



    private void carbind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sd = new SqlDataAdapter();
        sd.SelectCommand = new SqlCommand("select * from carinfo where area='" + this.Label4.Text + "'and department='" + this.Label5.Text + "'", con);
        DataSet Myds = new DataSet();
        sd.Fill(Myds, "carinfo");
        this.DropDownList1.DataSource = Myds.Tables["carinfo"];
        this.DropDownList1.DataValueField = "carnumber";
        this.DropDownList1.DataTextField = "carnumber";
        this.DropDownList1.DataBind();
        con.Close();
    }
    private void userbind()
    {
        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sd = new SqlDataAdapter();
        sd.SelectCommand = new SqlCommand("select * from userinfo where area='" + this.Label4.Text + "'and department='" + this.Label5.Text + "'", con1);
        DataSet Myds = new DataSet();
        sd.Fill(Myds, "userinfo");
        this.DropDownList2.DataSource = Myds.Tables["userinfo"];
        this.DropDownList2.DataValueField = "username";
        this.DropDownList2.DataTextField = "username";
        this.DropDownList2.DataBind();
        con1.Close();
    }


    protected void Button1_Click(object sender, EventArgs e)
    {

        this.Label6.Text = this.Calendar1.SelectedDate.ToString("yyyy-MM-dd");

        SqlConnection con2 = Jjchatdb.createConnection();
        con2.Open();
        if (this.Labeldw.Text == "1")
        {
            string sql_newadd = "insert into pcgl (carid,username,outdate,ccfw,howday,mdd,ccyy,ycdq,ycks,sxry,beizhu,pcr,pcok,spdate)values('" + this.DropDownList1.SelectedValue + "','" + this.DropDownList2.SelectedValue + "','" + this.Label6.Text + "','" + this.RadioButtonList1.SelectedValue + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.TextBox6.Text + "','" + this.Label4.Text + "','" + this.Label5.Text + "','" + this.TextBox9.Text + "','" + this.TextBox10.Text + "','" + this.TextBox11.Text + "','" + "yes" + "','" + System.DateTime.Now.ToString() + "')";
            SqlCommand cmd_newadd = new SqlCommand(sql_newadd, con2);
            cmd_newadd.ExecuteNonQuery();           
        }
        if (this.Labeldw.Text == "0")
        {
            string sql_newadd = "insert into pcgl (carid,username,outdate,ccfw,howday,mdd,ccyy,ycdq,ycks,sxry,beizhu,pcr,pcok,spdate)values('" + this.DropDownList1.SelectedValue + "','" + this.DropDownList2.SelectedValue + "','" + this.Label6.Text + "','" + this.RadioButtonList2.SelectedValue + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.TextBox6.Text + "','" + this.Label4.Text + "','" + this.Label5.Text + "','" + this.TextBox9.Text + "','" + this.TextBox10.Text + "','" + this.TextBox11.Text + "','" + "yes" + "','" + System.DateTime.Now.ToString() + "')";
            SqlCommand cmd_newadd = new SqlCommand(sql_newadd, con2);
            cmd_newadd.ExecuteNonQuery();
        }
         con2.Close();


        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlCommand cmd = new SqlCommand("update [carinfo] set [zaigan]='"+"no"+"'where carnumber='" + this.DropDownList1.SelectedValue + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();


        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlCommand cma = new SqlCommand("update [userinfo] set [zaigan]='" + "no" + "'where username='" + this.DropDownList2.SelectedValue + "'", con1);
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
        this.Label6.Text = this.Calendar1.SelectedDate.Year.ToString() + "-" + this.Calendar1.SelectedDate.Month.ToString() + "-" + this.Calendar1.SelectedDate.Day.ToString();
        this.Calendar1.Visible = false;
        ;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");
    }

}
