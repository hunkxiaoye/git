using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class Registers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string UserName = this.UserName.Text.Trim();
                string Pwd = this.PassWord.Text.Trim();
                string sex = "";
                string nickname = this.NickName.Text.Trim();
                string Email = this.Email.Text.Trim();
                string Tel = this.Phone.Text.Trim();
                string QQ = this.QQ.Text.Trim();
                string Address = "";
                string Age = "";
                string signature = "";
                data sql = new data();
                int A = 0;
                int B = 0;
                int C = 0;
                string card = "";
                string menge = sql.selectaccount(UserName, Pwd, nickname, Email, Tel, sex, QQ, Address, Age, signature, A, B, C, card);
                if (menge == "true")
                {
                    //    Response.Redirect("Index.aspx?NickName="+NickName+"&UserName="+UserName+"");
                    Session["a"] = this.UserName.Text.Trim();
                    Server.Transfer("Index.aspx");
                }
                else
                {
                    Response.Redirect("Index.aspx");
                }
            }
            catch (Exception ex)
            {
                throw;
            }

        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}