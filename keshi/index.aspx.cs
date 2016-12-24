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


public partial class keshi_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!this.IsPostBack)
        {
            this.yzxx.Visible = false;
            this.yzxx.Text = "";
            Random ro = new Random();
            int iResult;
            int iUp = 9999;
            int iDown = 1000;
            iResult = ro.Next(iDown, iUp);
            this.lblyzm.Text = Convert.ToString(iResult);
            this.userbind();
        }

    }
    private void userbind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from yonghu", con);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "yonghu");
        this.DropDownList1.DataSource = Myds.Tables["yonghu"];
        this.DropDownList1.DataValueField = "yonghuname";
        this.DropDownList1.DataTextField = "yonghuname";
        this.DropDownList1.DataBind();
        con.Close();
    }


    protected void btn1_Click(object sender, EventArgs e)
    {
        string userid = this.DropDownList1.Text;
        string userpwd = this.txtcpwd.Text;
        string lblyzm = this.lblyzm.Text;
        string txtyzm = this.txtyzm.Text;
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlCommand cmd = new SqlCommand("select yonghuname,yonghupwd from yonghu where yonghuname='" + userid + "'", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (txtyzm == lblyzm)
        {

            if (sdr.Read())
            {
                string yzpwd = sdr["yonghupwd"].ToString();
                if (userpwd == yzpwd)
                {
                    Session["yonghuname"] = userid;
                    Session["yonghupwd"] = userpwd;
                    Response.Redirect("main.aspx");
                }
                else
                {
                    Random ro = new Random();
                    int iResult;
                    int iUp = 9999;
                    int iDown = 1000;
                    iResult = ro.Next(iDown, iUp);
                    this.lblyzm.Text = Convert.ToString(iResult);
                    this.yzxx.Visible = true;
                    this.yzxx.Text = "密码错误";
                }
            }
            else
            {
                Random ro = new Random();
                int iResult;
                int iUp = 9999;
                int iDown = 1000;
                iResult = ro.Next(iDown, iUp);
                this.lblyzm.Text = Convert.ToString(iResult);
                this.yzxx.Visible = true;
                this.yzxx.Text = "用户名错误";
            }
        }
        else
        {
            sdr.Close();
            con.Close();
            Random ro = new Random();
            int iResult;
            int iUp = 9999;
            int iDown = 1000;
            iResult = ro.Next(iDown, iUp);
            this.lblyzm.Text = Convert.ToString(iResult);
            this.yzxx.Visible = true;
            this.yzxx.Text = "验证码错误";

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/Load.aspx");
    }
}
