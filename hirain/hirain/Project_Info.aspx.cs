using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hirain
{
    public partial class Project_Info : System.Web.UI.Page
    {

        data da = new data();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                this.GridView1.DataSource = da.projectload(Session["a"].ToString());
                this.GridView1.DataBind();
                this.GridView2.DataSource = da.OwnerProject(Session["a"].ToString());
                this.GridView2.DataBind();
                this.GridView3.DataSource = da.projectAdvice(Session["a"].ToString());
                this.GridView3.DataBind();
            }
        }

     
        
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.GridView1.PageIndex = e.NewPageIndex;
            this.GridView1.DataSource = da.projectload(Session["a"].ToString());
            this.GridView1.DataBind();

        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            this.GridView2.PageIndex = e.NewPageIndex;
            this.GridView2.DataSource = da.OwnerProject(Session["a"].ToString());
            this.GridView2.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        //protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        //{
        //    if (e.CommandName == "shangchuan")
        //    {
        //        string sum = e.CommandArgument.ToString();
        //        string path = Server.MapPath("~/upload/" + sum + "/");
        //        string fileNames = path + this.File1.FileName;//自定义文件名称
        //        this.File1.SaveAs(fileNames);//文件上传
        //        Response.Write("<script>location.href=\"Project_Info.aspx\" </script>");
        //    }
        //}

      

    }
}