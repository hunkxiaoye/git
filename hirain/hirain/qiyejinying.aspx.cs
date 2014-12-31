using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class qiyejinying : System.Web.UI.Page
    {
        data da = new data();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string username = Session["a"].ToString();
            string postTitle = this.postTitle.Text.Trim();
            float praise = float.Parse(this.praise.Text.Trim());
            string Project_Procedure = this.Project_Procedure.Text.Trim();
            string companystarttime = this.companystarttime.Text.Trim();
            string repayment = this.repayment.Text.Trim();
            string LoanName = this.LoanName.Text.Trim();
            int LoanAge = int.Parse(this.LoanAge.Text.Trim());
            int Marry = 0;
            string zhuceziben = this.zhuceziben.Text.Trim();
            string zhuyingyewu = this.zhuyingyewu.Text.Trim();
            string nianliushui = this.nianliushui.Text.Trim();
            string niannaishui = this.niannashui.Text.Trim();
            string gudongqingkuang = this.gudongqingkuang.Text.Trim();
            string companyassets = this.companyassets.Text.Trim();
            string fuzhai = this.fuzhai.Text.Trim();
            string communityName = this.communityName.Text.Trim();
            string buildtime = this.buildtime.Text.Trim();
            int floor = int.Parse(this.floor.Text.Trim());
            string direction = this.direction.Text.Trim();
            string area = this.area.Text.Trim();
            string ownership = this.ownership.Text.Trim();
            string useryear = this.useryear.Text.Trim();
            int type = 3;//企业经营贷款

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
           
            string purpose = this.purpose.Text.Trim();
            string moneysource = this.moneysource.Text.Trim();

            //string FileName = File1.PostedFile.FileName;
            //string upload_file = Server.MapPath("~/upload/") + FileName;//取出服务器虚拟路径,存储上传文件
            //File1.PostedFile.SaveAs(upload_file);//开始上传文件
            string sum = da.GetRandomString(4, 4, "");
            string path = Server.MapPath("~/upload/" + sum + "/");
            string fileName = "upload/" + sum + "/" + this.File1.FileName;
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }
            string fileNames= path + this.File1.FileName;//自定义文件名称
            this.File1.SaveAs(fileNames);//文件上传
            string bools = da.Insert_Project(username, postTitle, Project_Procedure, praise, repayment, LoanName, LoanAge, Marry, companystarttime, zhuceziben, fuzhai, communityName, buildtime, floor, direction, area, purpose, moneysource, fileName, zhuyingyewu, nianliushui, niannaishui, gudongqingkuang, companyassets, ownership, useryear, type,sum);
            if (bools == "true")
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

        }
    }
}