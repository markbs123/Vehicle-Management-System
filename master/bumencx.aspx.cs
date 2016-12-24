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

public partial class master_yhcx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.bumenbind();
    }

    private void bumenbind()
    {

        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();

        sda.SelectCommand = new SqlCommand("select* from danwei where dwdq+dwm='" + this.TextBox1.Text.ToString() + "'", con);



        DataSet cds = new DataSet();
        sda.Fill(cds, "danwei");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cds.Tables["danwei"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 500;

        this.DataList1.DataSource = ps;
        this.DataList1.DataBind();
        con.Close();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        this.bumenbind();
        this.DataList1.Visible = true;
        this.Button1.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("bumen.aspx");
    }

}