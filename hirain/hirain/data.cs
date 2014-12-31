using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;

namespace hirain
{
    public class data
    {
        System.Data.SqlClient.SqlDataAdapter sda = new System.Data.SqlClient.SqlDataAdapter();
        System.Data.SqlClient.SqlCommand sd = new System.Data.SqlClient.SqlCommand();
        System.Data.SqlClient.SqlConnection conn = new System.Data.SqlClient.SqlConnection();
        string str = "server=.;database=p2p;uid=sa;pwd=123";
        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="username"> 用户名</param>
        /// <param name="pwd">密码</param>
        /// <param name="nickname">昵称</param>
        /// <param name="Email">邮箱</param>
        /// <param name="Tel">电话</param>
        /// <param name="Sex">性别</param>
        /// <param name="QQ">QQ</param>
        /// <param name="Address">地址</param>
        /// <param name="age">年龄</param>
        /// <param name="signature">签名</param>
        /// <returns></returns>
        public string selectaccount(string username, string pwd, string nickname, string Email, string Tel, string Sex, string QQ, string Address, string age, string signature,int Balance,int Investment, int Mention_now,string card) //用户注册
        {
            try
            {
                object x = new object();
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select * from Userinfo where username = '" + username.ToString() + "'";
                sda.SelectCommand.Connection.Open();
                x = sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                if (x != null)
                {
                    return "false";
                }
                else
                {
                    sda.SelectCommand.CommandText = "insert into  Userinfo values('" + username + "'," + "'" + pwd + "'," + "'" + nickname + "'," + "'" + Email + "'," + "'" + Tel + "'," + "'" + Sex + "'," + "'" + QQ + "'," + "'" + Address + "'," + "'" + age + "'," + "'" + signature + "',"+ Balance +","+ Investment +","+ Mention_now +","+"'"+card+"')";
                    sda.SelectCommand.Connection.Open();
                    int y = sda.SelectCommand.ExecuteNonQuery();
                    sda.SelectCommand.Connection.Close();
                    return "true";
                }
            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
        /// <summary>
        /// 登陆验证
        /// </summary>
        /// <param name="username">用户名</param>
        /// <param name="pwd">密码</param>
        /// <returns></returns>
        public string RegionUser(string username, string pwd)
        {
            try
            {
                object x = new object();
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select username from Userinfo where username = '" + username.ToString() + "' and PassWord ='" + pwd + "'";
                sda.SelectCommand.Connection.Open();
                x = sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                if (x != null)
                {
                    return "true";
                }
                else
                {

                    return "false";
                }

            }
            catch (Exception ex)
            {
                return ex.ToString();
            }
        }
        
        /// <summary>
        /// 用户信息查询
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        public DataTable selectinfo(string username)
        {
            try
            {
                DataTable dt = new DataTable();
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select * from Userinfo where username = '" + username + "'";
                sda.SelectCommand.Connection.Open();
                object ob = sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                sda.Fill(dt);
                return dt;

            }
            catch (Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// 修改用户信息
        /// </summary>
        /// <returns></returns>

        public string UpdateInfo(string username, string pwd, string nickname, string email, string tel,string QQ)
        {

            try
            {
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = @"update  Userinfo set password = '" + pwd + "',nickname = '" + nickname + "',email = '"
                    + email + "', tel = '" + tel + "',QQ = '" + QQ  + "' where username = '" + username + "'";
                sda.SelectCommand.Connection.Open();
                int row = sda.SelectCommand.ExecuteNonQuery();
                sda.SelectCommand.Connection.Close();
                if (row > 0)
                {
                    return "ture";
                }
                else
                {

                    return "false";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
        /// <summary>
        /// 用户投资信息查询
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        public DataTable SelectUser_Info(string username)
        {
            try
            {
                DataTable dt = new DataTable();
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select Balance,Investment,Mention_now from Userinfo where username = '" + username + "'";
                sda.SelectCommand.Connection.Open();
                object ob = sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                sda.Fill(dt);
                return dt;

            }
            catch (Exception ex)
            {
                return null;
            }
        }
        /// <summary>
        /// 我要发布一个投资项目
        /// </summary>
        /// <param name="username"></param>
        /// <param name="postTitle"></param>
        /// <param name="Project_Procedure"></param>
        /// <param name="praise"></param>
        /// <param name="repayment"></param>
        /// <returns></returns>
        public string Insert_Project(string username, string postTitle, string Project_Procedure, float praise ,string repayment)
        {
            try
            {
                
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "insert into  project_Info (username ,Project_Title, Project_Procedures ,praise,repayment) values('" + username + "' ," + "'" + postTitle + "'," + "'" + Project_Procedure + "'," + praise + ",'"+repayment+"')";
                sda.SelectCommand.Connection.Open();
                int row = sda.SelectCommand.ExecuteNonQuery();
                sda.SelectCommand.Connection.Close();
                if (row > 0)
                {
                    return "ture";
                }
                else
                {

                    return "false";
                } 
            }
            catch (Exception ex)
            {

                return ex.ToString();
            }
          
        }


        /// <summary>
        /// 查询我发起的项目投资
        /// </summary>
        /// <param name="username">发起人</param>
        /// <returns></returns>
        public DataTable projectload(string username)
        {
            try
            {
                object x = new object();
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select (case State when 0 then '未审核'when 1 then '已审核' when 2 then '审核未通过' when 3 then '优质项目' end)as State,id , Project_Title, Project_Procedures, praise,Repayment,StartTime,EndTime from Project_Info where username = '" + username + "' and State=1";
                sda.SelectCommand.Connection.Open();
                x = sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
        }


        /// <summary>
        /// 查询我发起的未通过审核的项目投资
        /// </summary>
        /// <param name="username">发起人</param>
        /// <returns></returns>
        public DataTable projectAdvice(string username)
        {
            try
            {
                object x = new object();
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select * from Project_Info where username = '" + username + "' and State = 2 ";
                sda.SelectCommand.Connection.Open();
                x = sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        public DataTable projectselect()
        {
            try
            {
                object x = new object();
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select * from Project_Info where shengyumoney <>0";
                sda.SelectCommand.Connection.Open();
                x = sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
        }



        /// <summary>
        /// 查询我投过的项目
        /// </summary>
        /// <param name="username">投资人</param>
        /// <returns></returns>
        public DataTable OwnerProject(string username)
        {
            try
            {
                
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText =
                    "select * from Project_Info where Id in(select Id from project_Relation where Owner ='" + username + "')";
                sda.SelectCommand.Connection.Open();
                sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
            catch ( Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// 查询项目详情
        /// </summary>
        /// <param name="id">项目id</param>
        /// <returns></returns>
        public DataTable SelectProject(int id )
        {

            try
            {
               
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select * from Project_Info where Id ='" + id + "'";
                sda.SelectCommand.Connection.Open();
                sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }

        }


        /// <summary>
        /// 查询项目的投资人
        /// </summary>
        /// <param name="id">项目id</param>
        /// <returns></returns>
        public DataTable SelectProjectOwner(int id)
        {

            try
            { 
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select owner ,Praise from  Project_Relation  where Id = '" + id + "'";
                sda.SelectCommand.Connection.Open();
                sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }

        }


        /// <summary>
        /// 发表日志
        /// </summary>
        /// <param name="username"></param>
        /// <param name="details"></param>
        /// <returns></returns>
        public string InsertLogo(string username,string details )
        {
            try
            {
                
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "insert into Logo_Info (UserName,Details) values ('" +username + " ','"  + details + " ')";
                sda.SelectCommand.Connection.Open();
                int row = sda.SelectCommand.ExecuteNonQuery();
                sda.SelectCommand.Connection.Close();
                if (row > 0)
                {
                    return "true";
                }
                else
                {

                    return "false";
                }  
            }
            catch (Exception ex)
            {

                return ex.ToString();
            }
        }


        /// <summary>
        /// 按用户名查询日志
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public DataTable SelectLogo(string username)
        {

            try
            {
                
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select details,dianzan from Logo_Info where username= '" + username + "' order by LogoId DESC";
                sda.SelectCommand.Connection.Open();
                sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// 查询最新的10条日志
        /// </summary>
        /// <returns></returns>
        public DataTable SelectLogo()
        {

            try
            {
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = "select top 10 *  from logo_Info order by LogoId desc";
                sda.SelectCommand.Connection.Open();
                sda.SelectCommand.ExecuteScalar();
                sda.SelectCommand.Connection.Close();
                DataTable dt = new DataTable();
                sda.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                return null;
            }
        }

        /// <summary>
        /// 点赞
        /// </summary>
        /// <param name="logoid"></param>
        /// <returns></returns>
        public string UpdateLogo(int logoid )
        {

            try
            {
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = @"update logo_info set dianzan +=1 where logoid=" + logoid ;
                sda.SelectCommand.Connection.Open();
                int row = sda.SelectCommand.ExecuteNonQuery();
                sda.SelectCommand.Connection.Close();
                if (row > 0)
                {
                    return "true";
                }
                else
                {

                    return "false";
                }
            }
            catch (Exception ex)
            {
                return "";
            }
        }

        public bool UpdateMoney(int id, string shengyumoney)
        {
            try
            {
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = @"update Project_Info set shengyumoney ='" + shengyumoney + "' where id=" + id;
                sda.SelectCommand.Connection.Open();
                int row = sda.SelectCommand.ExecuteNonQuery();
                sda.SelectCommand.Connection.Close();
                if (row > 0)
                {
                    return true;
                }
                else
                {

                    return false;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //修改项目 
        
        public string UpdateAdvice(int projectId, int State, string Project_Title, string Project_Procedures, string Project_Risk, string Repayment, string Law, string StartTime, string EndTime, string NewEndTime, float praise, string BanLi)
        {
            try
            {
                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = @"update  Project_Info set State = " + State + ",Project_Title = '" + Project_Title + "',Project_Procedures = '"
                    + Project_Procedures + "', Project_Risk = '" + Project_Risk + "',Repayment = '" + Repayment + "',Law = '" + Law + "',StartTime = '" + StartTime + "',EndTime = '" + EndTime + "',NewEndTime = '" + NewEndTime + "',praise = " + praise + ",BanLi = '" + BanLi + "' where Id = '" + projectId + "'";
                sda.SelectCommand.Connection.Open();
                int row = sda.SelectCommand.ExecuteNonQuery();
                sda.SelectCommand.Connection.Close();
                if (row > 0)
                {
                    return "true";
                }
                else
                {

                    return "false";
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }




       /// <summary>
       /// 发布项目（房产抵押）
       /// </summary>
       /// <param name="username"></param>
       /// <param name="postTitle"></param>
       /// <param name="Project_Procedure"></param>
       /// <param name="praise"></param>
       /// <param name="repayment"></param>
       /// <returns></returns>
        public string Insert_Project(string username, string postTitle, string Project_Procedure, float praise, string repayment,string LoanName ,int LoanAge,
           int Marry ,int faren, string income,string fuzhai,string communityName,string buildtime,int floor,string direction,string area,int fullmoney,string purpose,string moneysource,string cailiaoqingdan,int type,string sum)
        {
            try
            {

                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = @"insert into  project_Info (username ,Project_Title, Project_Procedures ,praise,repayment,LoanName," +
                                                "LoanAge,Marry,faren,income,fuzhai,communityName,buildtime,floor,direction,area,fullmoney,purpose,moneysource,cailiaoqingdan,projecttype,sum)" +
                                                "values('" + username + "','"+ postTitle + "','" + Project_Procedure + "'," + praise + ",'" + repayment + "','" + LoanName + "'," + LoanAge + "," +  Marry + "," + faren + ",'" + income + "','" + fuzhai + "','" +  communityName + "','" + buildtime + "'," + floor + ",'" + direction + "','" + area + "'," +  fullmoney + ",'" +  purpose + "','" + moneysource + "','" + cailiaoqingdan + "',"+type+",'"+sum+"')";
                sda.SelectCommand.Connection.Open();
                int row = sda.SelectCommand.ExecuteNonQuery();
                sda.SelectCommand.Connection.Close();
                if (row > 0)
                {
                    return "true";
                }
                else
                {

                    return "false";
                }
            }
            catch (Exception ex)
            {

                return ex.ToString();
            }

        }
        /// <summary>
        /// 发布项目（个人信用贷款）
        /// </summary>
        /// <param name="username"></param>
        /// <param name="postTitle"></param>
        /// <param name="Project_Procedure"></param>
        /// <param name="praise"></param>
        /// <param name="repayment"></param>
        /// <param name="LoanName"></param>
        /// <param name="LoanAge"></param>
        /// <param name="Marry"></param>
        /// <param name="companyName"></param>
        /// <param name="income"></param>
        /// <param name="fuzhai"></param>
        /// <param name="communityName"></param>
        /// <param name="buildtime"></param>
        /// <param name="floor"></param>
        /// <param name="direction"></param>
        /// <param name="area"></param>
        /// <param name="fullmoney"></param>
        /// <param name="purpose"></param>
        /// <param name="moneysource"></param>
        /// <param name="cailiaoqingdan"></param>
        /// <param name="zhengxin"></param>
        /// <returns></returns>
        public string Insert_Project(string username, string postTitle, string Project_Procedure, float praise, string repayment, string LoanName, int LoanAge,
                                     int Marry, string companyName, string income, string fuzhai, string communityName, string buildtime, int floor, string direction, string area, int fullmoney, string purpose, string moneysource, string cailiaoqingdan , string zhengxin,int type,string sum)
        {
            try
            {

                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = @"insert into  project_Info (username ,Project_Title, Project_Procedures ,praise,repayment,LoanName," +
                                                "LoanAge,Marry,companyName,income,fuzhai,communityName,buildtime,floor,direction,area,fullmoney,purpose,moneysource,cailiaoqingdan,zhengxin,sum)" +
                                                "values('" + username + "','" + postTitle + "','" + Project_Procedure + "'," + praise + ",'" + repayment + "','" + LoanName + "'," +  LoanAge + ","+ Marry + ",'" + companyName + "','"+ income + "','" + fuzhai + "','"+ communityName + "','"+ buildtime + "'," +  floor + ",'" + direction + "','" + area + "'," + fullmoney + ",'" + purpose + "','" + moneysource + "','" +  cailiaoqingdan + "','"+zhengxin+"',"+type+",'"+sum+"' )";
                sda.SelectCommand.Connection.Open();
                int row = sda.SelectCommand.ExecuteNonQuery();
                sda.SelectCommand.Connection.Close();
                if (row > 0)
                {
                    return "true";
                }
                else
                {

                    return "false";
                }
            }
            catch (Exception ex)
            {

                return ex.ToString();
            }

        }
        /// <summary>
        /// 发布项目（企业经营贷款）
        /// </summary>
        /// <param name="username"></param>
        /// <param name="postTitle"></param>
        /// <param name="Project_Procedure"></param>
        /// <param name="praise"></param>
        /// <param name="repayment"></param>
        /// <param name="LoanName"></param>
        /// <param name="LoanAge"></param>
        /// <param name="Marry"></param>
        /// <param name="companystarttime"></param>
        /// <param name="zhuceziben"></param>
        /// <param name="fuzhai"></param>
        /// <param name="communityName"></param>
        /// <param name="buildtime"></param>
        /// <param name="floor"></param>
        /// <param name="direction"></param>
        /// <param name="area"></param>
        /// <param name="purpose"></param>
        /// <param name="moneysource"></param>
        /// <param name="cailiaoqingdan"></param>
        /// <param name="zhuyingyewu"></param>
        /// <param name="nianliushui"></param>
        /// <param name="niannashui"></param>
        /// <param name="gudongqingkuang"></param>
        /// <param name="companyassets"></param>
        /// <param name="ownership"></param>
        /// <param name="useryear"></param>
        /// <returns></returns>
        public string Insert_Project(string username, string postTitle, string Project_Procedure, float praise, string repayment, string LoanName, int LoanAge,
                                    int Marry, string companystarttime, string zhuceziben, string fuzhai, string communityName, string buildtime, int floor, string direction, 
            string area, string purpose, string moneysource, string cailiaoqingdan, string zhuyingyewu, string nianliushui, string niannashui, string gudongqingkuang, string companyassets, string ownership,string useryear,int type,string sum)
        {
            try
            {

                sda.SelectCommand = sd;
                sda.SelectCommand.Connection = conn;
                sda.SelectCommand.Connection.ConnectionString = str;
                sda.SelectCommand.CommandText = @"insert into  project_Info (username ,Project_Title, Project_Procedures ,praise,repayment,LoanName," +
                                                "LoanAge,Marry,companystarttime,zhuceziben,fuzhai,communityName,buildtime,floor,direction,area,purpose,moneysource,cailiaoqingdan,zhuyingyewu,nianliushui,niannashui,gudongqingkuang,companyassets,ownership,useryear,projecttype,sum)" +
                                                "values('" + username + "','"+ postTitle + "','" + Project_Procedure + "'," + praise + ",'" + repayment + "','" + LoanName + "'," + LoanAge + "," + Marry + ",'"  
                                                + companystarttime + "','" + zhuceziben + "','" +  fuzhai + "','" + communityName + "','" + buildtime + "',"+ floor + ",'" +  direction + "','" + area + "','" + purpose + "','" + moneysource + "','"
                                                +  cailiaoqingdan + "','" + zhuyingyewu + "','" + nianliushui + "','" + niannashui + "','" + gudongqingkuang + "','"  + companyassets + "','"  + ownership + "','" + useryear + "',"+type+","+sum+"')";
                sda.SelectCommand.Connection.Open();
                int row = sda.SelectCommand.ExecuteNonQuery();
                sda.SelectCommand.Connection.Close();
                if (row > 0)
                {
                    return "true";
                }
                else
                {

                    return "false";
                }
            }
            catch (Exception ex)
            {

                return ex.ToString();
            }

        }

        /// <summary>
        /// 生成随机字符串
        /// </summary>
        /// <param name="length">随机字符串中英文字符个数</param>
        /// <param name="count">需要获取的个数</param>
        /// <param name="separator">分隔符</param>
        /// <returns></returns>
       public string GetRandomString(int length, int count, string separator)
        {
             char[] Chars = { 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'R', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z' };
            StringBuilder sb = new StringBuilder();
            Random rd = new Random();
            string yymmdd = DateTime.Now.ToString("yyMMdd");
            for (int i = 0; i < count; i++)
            {
                sb.Append(yymmdd);
                for (int j = 0; j < length; j++)
                {
                    sb.Append(Chars[rd.Next(0, Chars.Length)]);
                }
                if (i < count - 1)
                {
                    sb.Append(separator);
                }
            }
            return sb.ToString();
        }
    }
}