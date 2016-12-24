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

public partial class keshi_rysearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            this.nowpage.Text = "1";
            this.caridbind2();
     
        }
    }

    private void caridbind2()
    {

        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();

        if (Convert.ToString(Session["yonghuname"]) == "定西市")
        {
            sda.SelectCommand = new SqlCommand("select * from userinfo order by area", con);
        }
        else
        {
            sda.SelectCommand = new SqlCommand("select * from userinfo where area='" + Convert.ToString(Session["yonghuname"]) + "'", con);
        }

        DataSet cds = new DataSet();
        sda.Fill(cds, "userinfo");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cds.Tables["userinfo"].DefaultView;
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
      
       
        this.DataList2.DataSource = ps;
        this.DataList2.DataBind();
        this.Label1.Text = Convert.ToString(ps.Count);
    }

    protected void btnback_Click(object sender, EventArgs e)
    {

       

        this.nowpage.Text = Convert.ToString(Convert.ToInt32(this.nowpage.Text) - 1);
        this.caridbind2();
 

    }
    protected void btnnext_Click(object sender, EventArgs e)
    {

       

        this.nowpage.Text = Convert.ToString(Convert.ToInt32(this.nowpage.Text) + 1);
        this.caridbind2();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/keshi/cxry.aspx");
    }
}