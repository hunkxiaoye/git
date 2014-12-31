using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class fangchandiya : System.Web.UI.Page
    {
        data da = new data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        /// <summary>
        /// 提交
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string username = Session["a"].ToString();
            string postTitle = this.postTitle.Text.Trim();
            float praise = float.Parse(this.praise.Text.Trim());
            string Project_Procedure = this.Project_Procedure.Text.Trim();
            int fullmoney = 0;
            string repayment = this.repayment.Text.Trim();
            string LoanName = this.LoanName.Text.Trim();
            int LoanAge = int.Parse(this.LoanAge.Text.Trim());
            int Marry = 0;
            int faren  = 0;
            string income = this.income.Text.Trim();
            string fuzhai = this.fuzhai.Text.Trim();
            string communityName = this.communityName.Text.Trim();
            string buildtime = this.buildtime.Text.Trim();
            int floor =  int.Parse(this.floor.Text.Trim());
            string direction = this.direction.Text.Trim();
            string area = this.area.Text.Trim();
            int type = 1;//房产贷款
            #region//是否全额
            if (fullmoney0.Checked)
        {
            fullmoney = 0;
        }
        if (fullmoney1.Checked)
        {
            fullmoney = 1;
        }
            #endregion
        #region//婚姻情况
        if (Marry0.Checked)
        {
            Marry = 0;
        }
        if (Marry1.Checked)
        {
            Marry = 1;
        }
        #endregion
        #region//是否全额
        if (faren0.Checked)
        {
            faren = 0;
        }
        if (faren1.Checked)
        {
            faren = 1;
        }
        #endregion
        string purpose = this.purpose.Text.Trim();
            string moneysource = this.moneysource.Text.Trim();

            //string FileName = File1.PostedFile.FileName;
            //string upload_file = Server.MapPath("~/upload/") + FileName;//取出服务器虚拟路径,存储上传文件
            //File1.PostedFile.SaveAs(upload_file);//开始上传文件
            string fn = this.File1.FileName;
            string sum = da.GetRandomString(4, 4, "");
            string path = Server.MapPath("~/upload/"+sum+"/");
            string fileName = "upload/" + sum + "/" + fn;
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }
            string fileNames = path + fn;//自定义文件名称
            this.File1.SaveAs(fileNames);//文件上传
            string bools = da.Insert_Project(username, postTitle, Project_Procedure, praise, repayment, LoanName, LoanAge, Marry, faren, income, fuzhai, communityName, buildtime, floor, direction, area, fullmoney, purpose, moneysource, fileName, type, sum);
            if (bools=="true")
            {
                Response.Write("<script>window.alert('发布成功！');window.location='UserInfo.aspx'</script>"); 
               
     
            }
            else
            {
                Response.Write("<script>window.alert('服务器出现问题 请稍后再发布！');window.location='UserInfo.aspx'</script>"); 
            } 
            

        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            Response.Redirect("fangchandiya.aspx");
        }

       
    }
}