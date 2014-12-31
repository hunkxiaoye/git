using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
namespace hirain
{
    public partial class ProjectDetails : System.Web.UI.Page
    {
        data da = new data();
        private string _sum;
        private int _id;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
            string user = Session["a"].ToString();
            string s =  Request.QueryString["id"];
             _id = int.Parse(Request.QueryString["id"]);
            if (!IsPostBack)
            {
                DataTable  dt = da.SelectProject(_id);
                this.txtUserName.Text = dt.Rows[0][1].ToString();
                this.txtStats.Text = dt.Rows[0][2].ToString();
                this.txtTitle.Text = dt.Rows[0][3].ToString();
                this.txtProcedure.Text = dt.Rows[0][4].ToString();
                this.txtRisk.Text = dt.Rows[0][5].ToString();
                this.txtRepay.Text = dt.Rows[0][6].ToString();
                this.txtLaw.Text = dt.Rows[0][7].ToString();
                this.txtStarttime.Text = dt.Rows[0][8].ToString();
                this.txtEndtime.Text = dt.Rows[0][9].ToString();
                this.txtdelay.Text = dt.Rows[0][10].ToString();
                this.txtMoney.Text = dt.Rows[0][11].ToString();
                this.txtBanli.Text = dt.Rows[0][12].ToString();
                _sum = dt.Rows[0][42].ToString();
                this.GridView1.DataSource = da.SelectProjectOwner(_id);
                this.GridView1.DataBind();
            }
            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
    }
}