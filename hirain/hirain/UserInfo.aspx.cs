using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class UserInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                data da = new data();
                string username = Session["a"].ToString();
                DataTable table = new DataTable();
                table = da.selectinfo(username);
                this.yue.Text = table.Rows[0][0].ToString();
                this.touzi.Text = table.Rows[0][1].ToString();
                this.shouyi.Text = table.Rows[0][2].ToString();
            }


        }
    }
}