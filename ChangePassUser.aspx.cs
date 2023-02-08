using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ResitrationForm
{
    public partial class ChangePassUser : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("select password from userreg  where password= '" + oldpassword.Text + "' and id='" + Session["id"] + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count.ToString() == "1")
            {
                //if (newpassword.Text == conpasswod.Text)
                //{
                con.Open();
                //SqlCommand cmd = new SqlCommand("update userreg set password= '" + conpasswod.Text + "' where  password ='" + oldpassword.Text + "' and id='" + Session["id"] + "'", con);
                SqlCommand cmd = new SqlCommand("registerMyProcedure", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Action", "changepass");
                cmd.Parameters.AddWithValue("@password", oldpassword.Text);
                cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script> alert('Update Successful');window.location.assign('/ChangePassUser.aspx');</script>");


                //else
                //{
                //    Response.Write("<script> alert('New password is not match confirm password') </script>");
                //}

            }
            else
            {
                Response.Write("<script> alert('Please check your old password');window.location.assign('/ChangePassUser.aspx'); </script>");
            }
        }
    }
}