using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class ProjeAdvice : System.Web.UI.Page
    {
        data da = new data();
        private string sum;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string user = Session["a"].ToString();
                string s = Request.QueryString["id"];
                int id = int.Parse(Request.QueryString["id"]);
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
                    this.txtdelay.Text = dt.Rows[0][10].ToString();
                    this.txtMoney.Text = dt.Rows[0][11].ToString();
                    this.txtBanli.Text = dt.Rows[0][12].ToString();
                    this.txtAdvice.Text = dt.Rows[0][13].ToString();
                    sum = dt.Rows[0][42].ToString();

                }

            }
            catch (Exception ex)
            {

                throw ex;
            }
        }
        /// <summary>
        /// 确认更改
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            string UserName = this.txtUserName.Text.Trim();
            int State = 0;
            int id = int.Parse(Request.QueryString["id"]);
            string Project_Title = this.txtTitle.Text.Trim();
            string Project_Procedures = this.txtProcedure.Text.Trim();
            string Project_Risk = this.txtRisk.Text.Trim();
            string Repayment = this.txtRepay.Text.Trim();
            string Law = this.txtLaw.Text.Trim();
            string StartTime = this.txtStarttime.Text.Trim();
            string EndTime = this.txtEndtime.Text.Trim();
            string NewEndTime = this.txtdelay.Text.Trim();
            string BanLi = this.txtBanli.Text.Trim();
            float praise = float.Parse(this.txtMoney.Text.Trim());
            string path = Server.MapPath("~/upload/" + sum + "/");//本地文件路径
            string fn = this.FileUpload1.FileName;
            int i = fn.LastIndexOf("."); //取得文件名中最后一个"."的索引
            string newext = fn.Substring(i); //获取文件扩展名
            if (newext != ".gif" && newext != ".jpg" && newext != ".jpeg" && newext != ".bmp" && newext != ".png" && newext != ".rar")
            {
                Response.Write("<script>window.alert('文件类型错误！');window.location=\"ProjeAdvice.aspx\" </script>");
            }
            string fileNames = path + fn; //文件名称
            this.FileUpload1.SaveAs(fileNames);//文件上传
            Response.Write("<script>window.alert('文件上传成功！'); </script>");
            string bools = da.UpdateAdvice(id, State, Project_Title, Project_Procedures, Project_Risk, Repayment,
                                           Law, StartTime, EndTime, NewEndTime,praise, BanLi);
            if (bools=="true")
            {
                Response.Write("<script>window.alert('修改成功！');window.location='ProjeAdvice.aspx'</script>"); 
            }
            else
            {
                Response.Write("<script>window.alert('服务器出现问题 请稍后修改！');window.location='Index.aspx'</script>");
            }

        }

    }
}