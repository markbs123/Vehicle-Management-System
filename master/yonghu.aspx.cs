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

public partial class master_yonghu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        Server.Execute("loginchk.aspx");

        if (!Page.IsPostBack)
        {
            this.yonghubind();
        }
    }

    private void yonghubind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select* from yonghu", con);
        DataSet cds = new DataSet();
        sda.Fill(cds, "yonghu");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cds.Tables["yonghu"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 500;
        this.DataList1.DataSource = ps;
        this.DataList1.DataBind();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        string sql_newadd = "insert into yonghu (yonghuname,yonghupwd)values('" + this.TextBox3.Text + "','" + this.TextBox4.Text + "')";
        SqlCommand cmd_newadd = new SqlCommand(sql_newadd, con);
        cmd_newadd.ExecuteNonQuery();

        Response.Write(" <script> alert( '{^_^}添加成功,正在跳转~ '); </script> ");
        Server.Transfer("yonghu.aspx");
        con.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");
    }
}