using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class ShowLogo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string user = Session["a"].ToString();
                data da = new data();
                this.GridView1.DataSource = da.SelectLogo(user);
                this.GridView1.DataBind();
            }
        }
    }
}