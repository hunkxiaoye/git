using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace hirain
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        data da = new data();
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = Session["a"].ToString();
            DataTable table = new DataTable();
            table = da.selectinfo(username);
             this.UserName.Text = table.Rows[0][0].ToString();
             this.PassWord.Text = table.Rows[0][1].ToString();
             this.NickName.Text = table.Rows[0][2].ToString();
             this.Email.Text = table.Rows[0][3].ToString();
             this.Tel.Text = table.Rows[0][4].ToString();
             this.QQ.Text = table.Rows[0][6].ToString();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string username = Session["a"].ToString();
                string pwd = this.PassWord.Text.Trim();
                string nickname = this.PassWord.Text.Trim();
                string email = this.Email.Text.Trim();
                string tel = this.Tel.Text.Trim();
                string qq = this.QQ.Text.Trim();
              string bools = da.UpdateInfo(username, pwd, nickname, email, tel, qq);
              if (bools == "ture")
                {
                    Response.Redirect("Index.aspx");
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