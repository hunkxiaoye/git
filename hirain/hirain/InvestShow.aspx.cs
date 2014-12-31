using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class InvestShow : System.Web.UI.Page
    {
        data da = new data();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    this.GridView1.DataSource = da.projectselect();
                    this.GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    
                    throw ex;
                }
            }
        }
    }
}