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

public partial class user_homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            this.nowpage2.Text = "1";
            this.caridbind3();

        }
    }


    private void caridbind3()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        sda.SelectCommand = new SqlCommand("select* from pcgl where comedate is null and pcok='yes' and ycdq+ycks='" + Convert.ToString(Session["dwdq+dwm"]) + "'order by outdate desc", con);
        DataSet cds = new DataSet();
        sda.Fill(cds, "pcgl");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cds.Tables["pcgl"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 30;

        int curpage = Convert.ToInt16(this.nowpage2.Text);
        ps.CurrentPageIndex = curpage - 1;
        this.allpage2.Text = Convert.ToString(ps.PageCount);

        if (curpage != ps.PageCount)
        {
            if (curpage == 1)
            {

                this.btnnext2.Enabled = true;
                this.btnback2.Enabled = false;
            }
            else
            {
                this.btnnext2.Enabled = true;
                this.btnback2.Enabled = true;
            }
        }
        else
        {
            if (curpage == 1)
            {

                this.btnnext2.Enabled = false;
                this.btnback2.Enabled = false;
            }
            else
            {
                this.btnnext2.Enabled = false;
                this.btnback2.Enabled = true;
            }
        }

        this.DataList4.DataSource = ps;
        this.DataList4.DataBind();
        this.Label2.Text = Convert.ToString(ps.Count);
    }



    protected void btnback2_Click(object sender, EventArgs e)
    {
        this.nowpage2.Text = Convert.ToString(Convert.ToInt32(this.nowpage2.Text) - 1);
        this.caridbind3();
    }
    protected void btnnext2_Click(object sender, EventArgs e)
    {
        this.nowpage2.Text = Convert.ToString(Convert.ToInt32(this.nowpage2.Text) + 1);
        this.caridbind3();
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/user/cxwaichu.aspx");
    }
}


