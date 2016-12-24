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

public partial class user_error : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string errorcausation = Request.QueryString["causation"];
        if (errorcausation == "timeout")
        {
            Response.Write("连接服务器超时,请重新登入.");
        }
        if (errorcausation == "awlesslogin")
        {
            Response.Write("连接服务器超时,请重新登入.");
        }
    }
}
