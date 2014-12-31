using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class Logins : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                data da = new data();
                string username = this.UserName.Text.Trim();
                string pwd = this.PassWord.Text.Trim();
                string login = da.RegionUser(username, pwd);
                if (login == "true")
                {
                    Session["a"] = this.UserName.Text.ToString().Trim();
                    Response.Redirect("Index.aspx");
                }
                else
                {
                   Response.Write("<script>window.alert('用户名或者密码错误！');window.location='Logins.aspx'</script>"); 
                }

            }
            catch (Exception)
            {

                throw;
            }

        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }
    }
}