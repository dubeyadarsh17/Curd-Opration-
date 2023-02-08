using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ResitrationForm
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Session["id"].ToString();
            //SqlCommand cmd = new SqlCommand("Select * from dbo.Userreg where id != " + Session["id"].ToString() + " and usertype='User'", con);
            SqlCommand cmd = new SqlCommand("registerMyProcedure", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "selectUser");
            cmd.Parameters.AddWithValue("@id", Session["id"].ToString());


            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable tb = new DataTable();
            da.Fill(tb);
            GridView1.DataSource = tb;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassUser.aspx");

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("changedetails.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("changeprofile.aspx");
        }
    }
}