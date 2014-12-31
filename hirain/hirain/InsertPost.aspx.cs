using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class InsertPost : System.Web.UI.Page
    {
        data da = new data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 审核项目
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            string UserName = Session["a"].ToString();
            string Project_Title = this.TextBox1.Text.Trim();
            string Project_Procedure = this.jieshao.Text.Trim();
            float  praise = float.Parse(this.jine.Text.Trim());
            string Repayment = this.TextBox2.Text;


            string bools = da.Insert_Project(UserName, Project_Title, Project_Procedure, praise,Repayment );
            if (bools == "true")
            {
              
                //Response.Write("<script>alert('发布成功！');document.location.href=UserInfo.aspx;</script>");
                Response.Write("<script>window.alert('发布成功！');window.location='UserInfo.aspx'</script>"); 
               
     
            }
            else
            {
                Response.Write("<script>window.alert('服务器出现问题 请稍后再发布！');window.location='Index.aspx'</script>"); 
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("InsertPost.aspx");
        }

        protected void liucheng_TextChanged(object sender, EventArgs e)
        {

        }
    }
}