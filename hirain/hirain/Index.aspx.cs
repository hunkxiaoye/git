using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["a"]==null)
            {
                Response.Redirect("indexs.htm");
            }
            else
            {
                string nickname = Session["a"].ToString();
                this.NickName.Text = nickname;
            }
            
        }
     
    }
}