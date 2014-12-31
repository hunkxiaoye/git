using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System .Data;
namespace hirain
{
    public partial class AllLogo : System.Web.UI.Page
    {
        data da = new data();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                DataTable dt = da.SelectLogo();
                this.GridView1.DataSource = dt;
                this.GridView1.DataBind();
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "zan")
            {
                string  bResult = da.UpdateLogo(int.Parse(e.CommandArgument.ToString()));
                if (bResult=="true")
                {
                    Response.Write("<script>location.href=\"AllLogo.aspx\" </script>");
                    
                }
                else
                {
                    Response.Write("<script>alert('失败');</script>");
                }
            }

        }

       
    }
}