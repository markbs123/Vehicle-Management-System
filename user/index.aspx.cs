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


public partial class user_index : System.Web.UI.Page
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
        sda.SelectCommand = new SqlCommand("select distinct dwdq from danwei", con);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "danwei");
        this.DropDownList1.DataSource = Myds.Tables["danwei"];
        this.DropDownList1.DataValueField = "dwdq";
        this.DropDownList1.DataTextField = "dwdq";
        this.DropDownList1.DataBind();
        con.Close();
    }




    protected void btn1_Click(object sender, EventArgs e)
    {
        string userid = this.DropDownList1.SelectedValue + this.TextBox1.Text;
        string userpwd = this.txtcpwd.Text;
        string lblyzm = this.lblyzm.Text;
        string txtyzm = this.txtyzm.Text;
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from danwei where dwdq ='" + this.DropDownList1.SelectedValue + "'and dwm='" + this.TextBox1.Text + "'", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (txtyzm == lblyzm)
        {

            if (sdr.Read())
            {
                string yzpwd = sdr["dwpwd"].ToString();
                if (userpwd == yzpwd)
                {
                   Session["dwdq+dwm"] = userid;
                    Session["dwpwd"] = userpwd;
                    Response.Redirect("main.aspx");
                    
                    //SqlConnection con1 = Jjchatdb.createConnection();
                    //con1.Open();
                    //SqlDataAdapter sda = new SqlDataAdapter();
                    //sda.SelectCommand = new SqlCommand("select nameid,userid from carinfo where nameid='" + userid + "'", con1);
                    //DataSet Myds = new DataSet();
                    //sda.Fill(Myds, "carinfo");
                    //this.DropDownList2.DataSource = Myds.Tables["carinfo"];
                    //this.DropDownList2.DataValueField = "userid";
                    //this.DropDownList2.DataTextField = "userid";
                    //this.DropDownList2.DataBind();
                    //con1.Close();



                    //this.Panel1.Visible = false;
                    //this.Panel2.Visible = true;

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
