using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class ProjectInfo : System.Web.UI.Page
    {
        private int b;
        private int id;
        data da = new data();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string user = Session["a"].ToString();
                string s = Request.QueryString["id"];
                id = int.Parse(Request.QueryString["id"]);
                if (!IsPostBack)
                {
                    DataTable dt = da.SelectProject(id);
                    this.txtUserName.Text = dt.Rows[0][1].ToString();
                    this.txtStats.Text = dt.Rows[0][2].ToString();
                    this.txtTitle.Text = dt.Rows[0][3].ToString();
                    this.txtProcedure.Text = dt.Rows[0][4].ToString();
                    this.txtRisk.Text = dt.Rows[0][5].ToString();
                    this.txtRepay.Text = dt.Rows[0][6].ToString();
                    this.txtLaw.Text = dt.Rows[0][7].ToString();
                    this.txtStarttime.Text = dt.Rows[0][8].ToString();
                    this.txtEndtime.Text = dt.Rows[0][9].ToString();
                    string surplusmoney= dt.Rows[0][43].ToString();
                    this.Surplusmoney.Text = surplusmoney;
                    this.txtMoney.Text = dt.Rows[0][11].ToString();
                    this.txtBanli.Text = dt.Rows[0][12].ToString();
                    b = int.Parse(surplusmoney);
                  
                    if (b==0)
                    {
                        this.money.ReadOnly = true;
                        this.money.Text = "满标";
                       this.Button1.Visible = false;
                    }

                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          int c =int.Parse(this.money.Text.Trim());
            int sums = int.Parse(this.Surplusmoney.Text.ToString());
            if (c<=sums)
            {
                int sum = sums - c;
                string surplusmoneys = sum.ToString();
                bool bools = da.UpdateMoney(id, surplusmoneys);
                if (bools==true)
                {
                    Response.Write("<script>window.alert('投资成功！');window.location='UserInfo.aspx'</script>"); 
                }
                else
                {
                    Response.Write("<script>window.alert('投资失败！');window.location='ProjectInfo.aspx？id=" + id + "'</script>"); 
                }
            }
            else
            {
                Response.Write("<script>window.alert('投资金额大于上限！');window.location='ProjectInfo.aspx?id=" + id + "'</script>"); 
            }
        
        }
    }
}