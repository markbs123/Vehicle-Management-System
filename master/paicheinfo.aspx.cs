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

public partial class master_paicheinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            this.nowpage.Text = "1";
            this.lblselect.Text = "username";
            this.TextBox1.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
            this.TextBox2.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
            this.TextBox3.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
            this.TextBox4.Text = System.DateTime.Now.ToString("yyyy-MM-dd");

        }
    }


    private void caridallbind()
    {
        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();
        if (this.lblselect.Text == "1")
        {
            sda.SelectCommand = new SqlCommand("select* from pcgl where comedate is not null and username='" + this.TextBox5.Text.ToString() + "' and outdate Between'" + this.TextBox1.Text.ToString() + "' And  '" + this.TextBox2.Text.ToString() + "' order by outdate desc", con);
        }
        else
        {
            sda.SelectCommand = new SqlCommand("select* from pcgl where comedate is not null and carid='" + this.TextBox6.Text.ToString() + "' and outdate Between'" + this.TextBox3.Text.ToString() + "' And  '" + this.TextBox4.Text.ToString() + "' order by outdate desc", con);
        }
        DataSet cds = new DataSet();
        sda.Fill(cds, "pcgl");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cds.Tables["pcgl"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 30;
        int curpage = Convert.ToInt16(this.nowpage.Text);
        ps.CurrentPageIndex = curpage - 1;
        this.allpage.Text = Convert.ToString(ps.PageCount);
  
        this.Label4.Text = Convert.ToString(ps.Count);
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
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        this.Calendar1.Visible = true;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        this.Calendar2.Visible = true;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        this.Calendar3.Visible = true;
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        this.Calendar4.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.lblselect.Text = "1";
        this.Panel2.Visible = true;
        this.Panel1.Visible = false;
        this.caridallbind();
        this.Label1.Text = this.TextBox5.Text.ToString();
        this.Label2.Text = this.TextBox1.Text;
        this.Label3.Text = this.TextBox2.Text;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.lblselect.Text = "0";
        this.Panel2.Visible = true;
        this.Panel1.Visible = false;
        this.caridallbind();
        this.Label1.Text = this.TextBox6.Text.ToString();
        this.Label2.Text = this.TextBox3.Text;
        this.Label3.Text = this.TextBox4.Text;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        this.TextBox1.Text = this.Calendar1.SelectedDate.ToString("yyyy-MM-dd");
        this.Calendar1.Visible = false;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        this.TextBox2.Text = this.Calendar2.SelectedDate.ToString("yyyy-MM-dd");
        this.Calendar2.Visible = false;
    }
    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        this.TextBox3.Text = this.Calendar3.SelectedDate.ToString("yyyy-MM-dd");
        this.Calendar3.Visible = false;
    }
    protected void Calendar4_SelectionChanged(object sender, EventArgs e)
    {
        this.TextBox4.Text = this.Calendar4.SelectedDate.ToString("yyyy-MM-dd");
        this.Calendar4.Visible = false;
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        this.nowpage.Text = Convert.ToString(Convert.ToInt32(this.nowpage.Text) - 1);
        this.caridallbind();
    }
    protected void btnnext_Click(object sender, EventArgs e)
    {
        this.nowpage.Text = Convert.ToString(Convert.ToInt32(this.nowpage.Text) + 1);
        this.caridallbind();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        this.Panel2.Visible = false;
        this.Panel1.Visible = true;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");
    }
}
