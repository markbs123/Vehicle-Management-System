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

public partial class master_cxcl: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            this.caridbind1();
            this.caridbind2();
            this.caridbind3();
        }

    }


    private void caridbind1()
    {

        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();

        sda.SelectCommand = new SqlCommand("select* from carinfo where carnumber='" + this.TextBox1.Text.ToString() + "'", con);



        DataSet cds = new DataSet();
        sda.Fill(cds, "carinfo");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cds.Tables["carinfo"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 500;

        this.DataList1.DataSource = ps;
        this.DataList1.DataBind();
        con.Close();
    }
    private void caridbind2()
    {

        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sd = new SqlDataAdapter();

        sd.SelectCommand = new SqlCommand("select* from carinfo where enginenumber='" + this.TextBox2.Text.ToString() + "'", con1);



        DataSet cd = new DataSet();
        sd.Fill(cd, "carinfo");
        System.Web.UI.WebControls.PagedDataSource psv = new PagedDataSource();
        psv.DataSource = cd.Tables["carinfo"].DefaultView;
        psv.AllowPaging = true;
        psv.PageSize = 500;

        this.DataList2.DataSource = psv;
        this.DataList2.DataBind();
        con1.Close();
    }
    private void caridbind3()
    {

        SqlConnection con2= Jjchatdb.createConnection();
        con2.Open();
        SqlDataAdapter sd = new SqlDataAdapter();

        sd.SelectCommand = new SqlCommand("select* from carinfo where area+department='" + this.TextBox3.Text.ToString() + "'", con2);



        DataSet cd = new DataSet();
        sd.Fill(cd, "carinfo");
        System.Web.UI.WebControls.PagedDataSource psv = new PagedDataSource();
        psv.DataSource = cd.Tables["carinfo"].DefaultView;
        psv.AllowPaging = true;
        psv.PageSize = 500;

        this.DataList3.DataSource = psv;
        this.DataList3.DataBind();
        con2.Close();
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

    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        this.caridbind3();
        this.DataList3.Visible = true;
        this.Button3.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("clsearch.aspx");
    }

    
}



