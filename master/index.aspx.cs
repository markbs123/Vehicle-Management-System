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


public partial class master_index : System.Web.UI.Page
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
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter();
            sda.SelectCommand = new SqlCommand("select * from master", con);
            DataSet Myds = new DataSet();
            sda.Fill(Myds, "master");
            this.DropDownList1.DataSource = Myds.Tables["master"];
            this.DropDownList1.DataValueField = "userid";
            this.DropDownList1.DataTextField = "userid";
            this.DropDownList1.DataBind();
            con.Close();
        }

    }

  
    protected void btn1_Click(object sender, EventArgs e)
     {
         string admasterid = this.DropDownList1.Text;
        string admasterpwd = this.txtcpwd.Text;
        string lblyzm = this.lblyzm.Text;
        string txtyzm = this.txtyzm.Text;
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlCommand cmd = new SqlCommand("select userid,pass from master where userid='" + admasterid + "'", con);
        SqlDataReader sdr = cmd.ExecuteReader();
        if(txtyzm == lblyzm)
        {
        
        if (sdr.Read())
        {
            string yzpwd = sdr["pass"].ToString();
            if (admasterpwd == yzpwd)
            {
                Session["userid"] = admasterid;
                Session["pass"] = admasterpwd;
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
