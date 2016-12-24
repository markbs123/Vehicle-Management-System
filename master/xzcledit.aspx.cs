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

public partial class master_xzcledit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from carinfo where id='" + Request.QueryString["id"] + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.TextBox7.Text = sdr["carnumber"].ToString();
                this.TextBox1.Text = sdr["carkind"].ToString();
                this.TextBox2.Text = sdr["enginenumber"].ToString();
                this.TextBox3.Text = sdr["paiqi"].ToString();
                this.TextBox4.Text = sdr["price"].ToString();
                this.TextBox8.Text = sdr["ccgls"].ToString();
                this.Label1.Text = sdr["buytime"].ToString();
                this.DropDownList3.Text = sdr["area"].ToString();
                this.TextBox9.Text = sdr["department"].ToString();
                this.TextBox5.Text = sdr["kind"].ToString();
                this.TextBox6.Text = sdr["ps"].ToString();

            }
            sdr.Close();
            con.Close();
            gettime();

            this.diqubind();

        }
      
       
    }
    private void gettime()
    {
        DateTime tnow = DateTime.Now;//现在时间
        ArrayList AlYear = new ArrayList();

        int i;

        for (i = 1950; i <= int.Parse(tnow.Date.Year.ToString()); i++)

            AlYear.Add(i);

        ArrayList AlMonth = new ArrayList();

        for (i = 1; i <= 12; i++)

            AlMonth.Add(i);

        if (!this.IsPostBack)
        {

            DropDownList4.DataSource = AlYear;

            DropDownList4.DataBind();//绑定年

            //选择当前年

            DropDownList4.SelectedValue = tnow.Year.ToString();

            DropDownList5.DataSource = AlMonth;

            DropDownList5.DataBind();//绑定月

            //选择当前月


            DropDownList5.SelectedValue = tnow.Month.ToString();

            int year, month;

            year = Int32.Parse(DropDownList4.SelectedValue);

            month = Int32.Parse(DropDownList5.SelectedValue);

            BindDays(year, month);//绑定天

            //选择当前日期

            DropDownList6.SelectedValue = tnow.Day.ToString();

        }
    }

    //判断闰年

    private bool CheckLeap(int year)
    {

        if ((year % 4 == 0) || (year % 100 != 0) && (year % 400 == 0))

            return true;

        else
            return false;

    }

    //绑定每月的天数

    private void BindDays(int year, int month)
    {
        int i;

        ArrayList AlDay = new ArrayList();

        switch (month)
        {

            case 1:

            case 3:

            case 5:

            case 7:

            case 8:

            case 10:

            case 12:

                for (i = 1; i <= 31; i++)

                    AlDay.Add(i);

                break;

            case 2:

                if (CheckLeap(year))
                {
                    for (i = 1; i <= 29; i++)

                        AlDay.Add(i);
                }

                else
                {
                    for (i = 1; i <= 28; i++)

                        AlDay.Add(i);
                }

                break;

            case 4:

            case 6:

            case 9:

            case 11:

                for (i = 1; i <= 30; i++)

                    AlDay.Add(i);

                break;

        }

        DropDownList6.DataSource = AlDay;

        DropDownList6.DataBind();

    }
    protected void DropDownList4_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int year, month;

        year = Int32.Parse(DropDownList4.SelectedValue);

        month = Int32.Parse(DropDownList5.SelectedValue);

        BindDays(year, month);
    }


    protected void DropDownList5_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int year, month;

        year = Int32.Parse(DropDownList4.SelectedValue);

        month = Int32.Parse(DropDownList5.SelectedValue);

        BindDays(year, month);
    }  


  /*  private void userbind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from carinfo", con);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "carinfo");
        this.DropDownList1.DataSource = Myds.Tables["carinfo"];
        this.DropDownList1.DataValueField = "carnumber";
        this.DropDownList1.DataTextField = "carnumber";
        this.DropDownList1.DataBind();
        con.Close();
    }*/


    private void diqubind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sd = new SqlDataAdapter();
        sd.SelectCommand = new SqlCommand("select * from diqu", con);
        DataSet ds = new DataSet();
        sd.Fill(ds, "diqu");
        this.DropDownList3.DataSource = ds.Tables["diqu"];
        this.DropDownList3.DataValueField = "area";
        this.DropDownList3.DataTextField = "area";
        this.DropDownList3.DataBind();
        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string aa = this.Label1.Text;
        this.Label1.Text = this.DropDownList4.SelectedValue + "年" + this.DropDownList5.SelectedValue + "月" + this.DropDownList6.SelectedValue + "日";
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        
        SqlConnection con2 = Jjchatdb.createConnection();
        con2.Open();
        string sql_update = "update carinfo set carnumber='" + this.TextBox7.Text + "',carkind='" + this.TextBox1.Text + "',enginenumber='" + this.TextBox2.Text + "',paiqi='" + this.TextBox3.Text + "',price='" + this.TextBox4.Text + "',ccgls='" + this.TextBox8.Text + "',buytime='" + this.Label1.Text + "',area='" + this.DropDownList3.SelectedValue + "',department='" + this.TextBox9.Text + "',kind='" + this.TextBox5.Text + "',ps='" + this.TextBox6.Text + "' where id='" + Request.QueryString["id"] + "'";
        
        
        SqlCommand cmd_update = new SqlCommand(sql_update, con2);
        cmd_update.ExecuteNonQuery();
        Response.Write(" <script> alert( '{^_^}修改成功,正在跳转~ '); </script> ");
        Server.Transfer("clsearch.aspx");
        con2.Close();
      
           // Response.Write(" <script> alert( '修改失败，请重新填写信息 '); </script> ");
        
       
    }


  /*  protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection con4 = Jjchatdb.createConnection();
        con4.Open();
        SqlCommand cmd = new SqlCommand("select * from carinfo where carnumber='" + this.DropDownList1.Text + "'", con4);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            this.TextBox1.Text = sdr["carkind"].ToString();
            this.TextBox2.Text = sdr["enginenumber"].ToString();
            this.TextBox3.Text = sdr["paiqi"].ToString();
            this.TextBox4.Text = sdr["price"].ToString();
            this.Label1.Text = sdr["buytime"].ToString();
            this.DropDownList3.Text = sdr["area"].ToString();
            this.DropDownList2.Text = sdr["department"].ToString();
            this.TextBox5.Text = sdr["kind"].ToString();
            this.TextBox6.Text = sdr["ps"].ToString();
            
        }
        sdr.Close();
        con4.Close();
    }*/

    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("clsearch.aspx");
    }


}
   