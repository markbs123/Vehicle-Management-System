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

public partial class user_xzry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            this.carbind();

        }
        gettime();
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

            DropDownList1.DataSource = AlYear;

            DropDownList1.DataBind();//绑定年

            //选择当前年

            DropDownList1.SelectedValue = tnow.Year.ToString();

            DropDownList2.DataSource = AlMonth;

            DropDownList2.DataBind();//绑定月

            //选择当前月


            DropDownList2.SelectedValue = tnow.Month.ToString();

            int year, month;

            year = Int32.Parse(DropDownList1.SelectedValue);

            month = Int32.Parse(DropDownList2.SelectedValue);

            BindDays(year, month);//绑定天

            //选择当前日期

            DropDownList3.SelectedValue = tnow.Day.ToString();

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

        DropDownList3.DataSource = AlDay;

        DropDownList3.DataBind();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int year, month;

        year = Int32.Parse(DropDownList1.SelectedValue);

        month = Int32.Parse(DropDownList2.SelectedValue);

        BindDays(year, month);
    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int year, month;

        year = Int32.Parse(DropDownList1.SelectedValue);

        month = Int32.Parse(DropDownList2.SelectedValue);

        BindDays(year, month);
    }

    private void carbind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select * from carinfo where area+department='" + Convert.ToString(Session["dwdq+dwm"]) + "'", con);
        DataSet Myds = new DataSet();
        sda.Fill(Myds, "carinfo");
        this.DropDownList6.DataSource = Myds.Tables["carinfo"];
        this.DropDownList6.DataValueField = "carnumber";
        this.DropDownList6.DataTextField = "carnumber";
        this.DropDownList6.DataBind();

        this.DropDownList7.DataSource = Myds.Tables["carinfo"];
        this.DropDownList7.DataValueField = "area";
        this.DropDownList7.DataTextField = "area";
        this.DropDownList7.DataBind();

        this.DropDownList4.DataSource = Myds.Tables["carinfo"];
        this.DropDownList4.DataValueField = "department";
        this.DropDownList4.DataTextField = "department";
        this.DropDownList4.DataBind();


        con.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        string sql_newadd = "insert into userinfo (username,sex,birthday,sfzno,jszno,phoneno,area,department,usualcar)values('" + this.TextBox1.Text + "','"  + this.DropDownList5.SelectedValue + "','" + this.DropDownList1.SelectedValue + "年" + this.DropDownList2.SelectedValue + "月" + this.DropDownList3.SelectedValue + "日" + "','" + this.TextBox5.Text + "','" + this.TextBox6.Text + "','" + this.TextBox7.Text + "','" + this.DropDownList7.SelectedValue + "','" + this.DropDownList4.SelectedValue + "','" + this.DropDownList6.SelectedValue + "')";
        SqlCommand cmd_newadd = new SqlCommand(sql_newadd, con);
        cmd_newadd.ExecuteNonQuery();
        Response.Write(" <script> alert( '{^_^}修改成功,正在跳转~ '); </script> ");
        Server.Transfer("rysearch.aspx");
        con.Close();

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("rysearch.aspx");
    }
}
