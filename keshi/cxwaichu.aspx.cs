﻿using System;
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

public partial class keshi_cxwaichu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Server.Execute("loginchk.aspx");
        if (!Page.IsPostBack)
        {
            this.useridbind1();
            this.useridbind2();
            this.useridbind3();
        }

    }


    private void useridbind1()
    {

        SqlConnection con = Jjchatdb.createConnection();
        con.Open();
        SqlDataAdapter sda = new SqlDataAdapter();

        //sda.SelectCommand = new SqlCommand("select* from pcgl where comedate is null and  pcok='yes' and username='" + this.TextBox1.Text.ToString() + "'", con);


        if (Convert.ToString(Session["yonghuname"]) == "定西市")
        {
            sda.SelectCommand = new SqlCommand("select* from pcgl where comedate is null and pcok='yes' and username='" + this.TextBox1.Text.ToString() + "'", con);
        }
        else
        {
            sda.SelectCommand = new SqlCommand("select* from pcgl where comedate is null and pcok='yes' and ycdq ='" + Convert.ToString(Session["yonghuname"]) + "'and username='" + this.TextBox1.Text.ToString() + "'", con);
        }


        DataSet cds = new DataSet();
        sda.Fill(cds, "userinfo");
        System.Web.UI.WebControls.PagedDataSource ps = new PagedDataSource();
        ps.DataSource = cds.Tables["userinfo"].DefaultView;
        ps.AllowPaging = true;
        ps.PageSize = 500;

        this.DataList1.DataSource = ps;
        this.DataList1.DataBind();
        con.Close();
    }
    private void useridbind2()
    {

        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sd = new SqlDataAdapter();

        //sd.SelectCommand = new SqlCommand("select* from pcgl where comedate is null and  pcok='yes' and carid='" + this.TextBox2.Text.ToString() + "'", con1);

        if (Convert.ToString(Session["yonghuname"]) == "定西市")
        {
            sd.SelectCommand = new SqlCommand("select* from pcgl where comedate is null and pcok='yes' and carid='" + this.TextBox2.Text.ToString() + "'", con1);
        }
        else
        {
            sd.SelectCommand = new SqlCommand("select* from pcgl where comedate is null and pcok='yes' and ycdq ='" + Convert.ToString(Session["yonghuname"]) + "'and carid='" + this.TextBox2.Text.ToString() + "'", con1);
        }


        DataSet cd = new DataSet();
        sd.Fill(cd, "pcgl");
        System.Web.UI.WebControls.PagedDataSource psv = new PagedDataSource();
        psv.DataSource = cd.Tables["pcgl"].DefaultView;
        psv.AllowPaging = true;
        psv.PageSize = 500;

        this.DataList2.DataSource = psv;
        this.DataList2.DataBind();
        con1.Close();
    }

    private void useridbind3()
    {

        SqlConnection con1 = Jjchatdb.createConnection();
        con1.Open();
        SqlDataAdapter sd = new SqlDataAdapter();

        //sd.SelectCommand = new SqlCommand("select* from pcgl where  comedate is null and  pcok='yes' and ycdq+ycks ='" + this.TextBox3.Text.ToString() + "'", con1);

        if (Convert.ToString(Session["yonghuname"]) == "定西市")
        {
            sd.SelectCommand = new SqlCommand("select* from pcgl where comedate is null and pcok='yes' and ycdq+ycks='" + this.TextBox3.Text.ToString() + "'", con1);
        }
        else
        {
            sd.SelectCommand = new SqlCommand("select* from pcgl where comedate is null and pcok='yes' and ycdq='" + Convert.ToString(Session["yonghuname"]) + "'and ycdq+ycks='" + this.TextBox3.Text.ToString() + "'", con1);
        }



        DataSet cd = new DataSet();
        sd.Fill(cd, "pcgl");
        System.Web.UI.WebControls.PagedDataSource psv = new PagedDataSource();
        psv.DataSource = cd.Tables["pcgl"].DefaultView;
        psv.AllowPaging = true;
        psv.PageSize = 500;

        this.DataList3.DataSource = psv;
        this.DataList3.DataBind();
        con1.Close();
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        this.useridbind1();
        this.DataList1.Visible = true;
        this.Button1.Visible = true;
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        this.useridbind2();
        this.DataList2.Visible = true;
        this.Button2.Visible = true;
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        this.useridbind3();
        this.DataList3.Visible = true;
        this.Button3.Visible = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("homepage.aspx");
    }


}



