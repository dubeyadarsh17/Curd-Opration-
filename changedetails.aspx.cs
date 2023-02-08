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
    public partial class changedetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                getdata();
            }

        }

        private void getdata()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
            DataTable dt = new DataTable();
            con.Open();
            SqlDataReader myReader = null;
            SqlCommand cmd = new SqlCommand("Select * from dbo.Userreg where id='" + Session["id"] + "'", con);
            myReader = cmd.ExecuteReader();
            while (myReader.Read())
            {
                name.Text = (myReader["name"].ToString());
                email.Text = (myReader["email"].ToString());
                mobile.Text = (myReader["mob"].ToString());
                RR1.SelectedValue = (myReader["gender"].ToString());
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
            //SqlCommand cmd = new SqlCommand("update userreg set name=@name,email=@email,mob=@mob,gender=@gender where id='" + Session["id"] + "'", con);
            SqlCommand cmd = new SqlCommand("registerMyProcedure", con);
            cmd.CommandType = CommandType.StoredProcedure;
            con.Open();
            cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@Action", "Update");
            cmd.Parameters.AddWithValue("name",name.Text);
            cmd.Parameters.AddWithValue("email", email.Text);
            cmd.Parameters.AddWithValue("mob", mobile.Text);
            cmd.Parameters.AddWithValue("gender", RR1.SelectedValue);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('succesful')</script>");
        }
    }
}