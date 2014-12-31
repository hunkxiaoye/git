using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class InsertLogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {

                data da = new data();
                string username = Session["a"].ToString();  string content =this.txtDetails.Text.Trim();
                string s = da.InsertLogo(username,content );
                if (s == "true")
                    Response.Redirect("ShowLogo.aspx");
                else
                    Response.Write( "<script>alert('发布失败，请稍后重试'); </script>");

            }
            catch (Exception ex)
            {
                return;
            }
        }
    }
}