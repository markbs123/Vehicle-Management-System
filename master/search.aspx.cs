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

public partial class master_search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {

        }
       
    }



    private void caridbind1()
    {
        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sd = new SqlDataAdapter();

        sd.SelectCommand = new SqlCommand("select* from carinfo where carnumber='" + this.TextBox1.Text.ToString() + "'", con1);


        DataSet cd = new DataSet();
        sd.Fill(cd, "carinfo");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cd.Tables["carinfo"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 500;

        this.DataList1.DataSource = ps;
        this.DataList1.DataBind();
    }
    private void caridbind2()
    {

        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        
        sda.SelectCommand = new SqlCommand("select* from userinfo where username='" + this.TextBox2.Text.ToString() + "'", con);
        
    
       
        DataSet cds = new DataSet();
        sda.Fill(cds, "userinfo");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cds.Tables["userinfo"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 500;

        this.DataList2.DataSource = ps;
        this.DataList2.DataBind();
    }






    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        this.caridbind1();
        this.DataList1.Visible = true;
        this.Button1.Visible = true;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        this.caridbind2();
        this.DataList2.Visible = true;
        this.Button2.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");
    }

}



