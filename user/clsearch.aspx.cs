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

public partial class user_clsearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {

            //this.lblselect.Text = "0";
            this.nowpage.Text = "1";

            this.caridbind1();

        }

    }

    private void caridbind1()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();

        sda.SelectCommand = new SqlCommand("select * from carinfo where area+department='" + Convert.ToString(Session["dwdq+dwm"]) + "'", con);
        DataSet cds = new DataSet();
        sda.Fill(cds, "carinfo");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cds.Tables["carinfo"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 30;

        int curpage = Convert.ToInt16(this.nowpage.Text);
        ps.CurrentPageIndex = curpage - 1;
        this.allpage.Text = Convert.ToString(ps.PageCount);

        if (curpage != ps.PageCount)
        {
            if (curpage == 1)
            {

                this.btnnext.Enabled = true;
                this.btnback.Enabled = false;
            }
            else
            {
                this.btnnext.Enabled = true;
                this.btnback.Enabled = true;
            }
        }
        else
        {
            if (curpage == 1)
            {

                this.btnnext.Enabled = false;
                this.btnback.Enabled = false;
            }
            else
            {
                this.btnnext.Enabled = false;
                this.btnback.Enabled = true;
            }
        }
        this.DataList1.DataSource = ps;
        this.DataList1.DataBind();
        this.Label1.Text = Convert.ToString(ps.Count);
    }




    protected void btnback_Click(object sender, EventArgs e)
    {


        this.nowpage.Text = Convert.ToString(Convert.ToInt32(this.nowpage.Text) - 1);

        this.caridbind1();



    }
    protected void btnnext_Click(object sender, EventArgs e)
    {

        this.nowpage.Text = Convert.ToString(Convert.ToInt32(this.nowpage.Text) + 1);

        this.caridbind1();
    }



    protected void Button3_Click(object sender, EventArgs e)
    {

        Server.Transfer("homepage.aspx");

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/user/cxcl.aspx");
    }
}



