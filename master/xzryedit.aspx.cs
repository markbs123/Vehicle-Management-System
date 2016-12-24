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

public partial class master_xzryedit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
                    SqlConnection con = Jjchatdb.createConnection();
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from userinfo where id='" + Request.QueryString["id"] + "'", con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                this.delete_duplicate(DropDownList2);
                this.TextBox1.Text = sdr["username"].ToString();
                this.DropDownList2.Text = sdr["sex"].ToString();
                this.Label1.Text = sdr["birthday"].ToString();
                this.TextBox5.Text = sdr["sfzno"].ToString();
                this.TextBox6.Text = sdr["jszno"].ToString();
                this.TextBox7.Text = sdr["phoneno"].ToString();
                this.DropDownList7.Text = sdr["area"].ToString();
                this.TextBox10.Text = sdr["department"].ToString();
                this.TextBox9.Text = sdr["usualcar"].ToString();
            }
            sdr.Close();
            con.Close();
            gettime();
            this.userbind();
            this.delete_duplicate(DropDownList2);
            this.diqubind();

           
        }


 
       
    }

    private void gettime()
    {
        DateTime tnow = DateTime.Now;//现在时间
        //Response.Write(tnow);
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
    private void userbind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from userinfo", con);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "userinfo");
        this.DropDownList2.DataSource = Myds.Tables["userinfo"];
        this.DropDownList2.DataValueField = "sex";
        this.DropDownList2.DataTextField = "sex";
        this.DropDownList2.DataBind();
        con.Close();
    }

    private void delete_duplicate(DropDownList DropDownList2)//对ddl2里的重复项进行控制
    {
        string topval;
        for (int k = 0; k < DropDownList2.Items.Count - 1; k++)
        {
            topval = DropDownList2.Items[k].Text;
            for (int i = 1; i < DropDownList2.Items.Count - k; i++)
            {
                if (topval == DropDownList2.Items[i].Text)
                {
                    DropDownList2.Items.RemoveAt(i);
                    i--;
                }
            }
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
        this.DropDownList7.DataSource = ds.Tables["diqu"];
        this.DropDownList7.DataValueField = "area";
        this.DropDownList7.DataTextField = "area";
        this.DropDownList7.DataBind();
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
        string sql_update = "update userinfo set username='" + this.TextBox1.Text + "',sex='" + this.DropDownList2.SelectedValue + "',birthday='" + this.Label1.Text + "',sfzno='" + this.TextBox5.Text + "',jszno='" + this.TextBox6.Text + "',phoneno='" + this.TextBox7.Text + "',area='" + this.DropDownList7.SelectedValue + "',department='" + this.TextBox10.Text + "',usualcar='" + this.TextBox9.Text + "' where id='" + Request.QueryString["id"] + "'";
        SqlCommand cmd_update = new SqlCommand(sql_update, con2);
        cmd_update.ExecuteNonQuery();
        this.userbind();
        Response.Write(" <script> alert( '{^_^}修改成功,正在跳转~ '); </script> ");
        Server.Transfer("rysearch.aspx");
        
        con2.Close();
       
    }

    /*protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        SqlConnection con4 = Jjchatdb.createConnection();
        con4.Open();
        
        SqlCommand cmd = new SqlCommand("select * from userinfo where username='" + this.DropDownList1.Text + "'", con4);
        SqlDataReader sdr = cmd.ExecuteReader();
        if (sdr.Read())
        {
            this.delete_duplicate(DropDownList2);
            this.TextBox1.Text = sdr["username"].ToString();
            this.TextBox2.Text = sdr["password"].ToString();
            this.DropDownList2.Text= sdr["sex"].ToString();
            this.Label1.Text = sdr["birthday"].ToString();
            this.TextBox5.Text = sdr["sfzno"].ToString();
            this.TextBox6.Text = sdr["jszno"].ToString();
            this.TextBox7.Text = sdr["phoneno"].ToString();
            this.DropDownList7.Text = sdr["area"].ToString();
            this.DropDownList3.Text = sdr["department"].ToString();
            this.TextBox9.Text = sdr["usualcar"].ToString();
        }
        sdr.Close();
        con4.Close();
    }*/

    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("rysearch.aspx");
    }



}



