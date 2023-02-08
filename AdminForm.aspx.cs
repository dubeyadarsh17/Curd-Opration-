using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace ResitrationForm
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)

        {
            if (!IsPostBack)
            {

                getdata();

            }
            //    SqlCommand cmd = new SqlCommand("Select * from dbo.Userreg;", con);
            //    DataTable tb = new DataTable();
            //    SqlDataAdapter da = new SqlDataAdapter(cmd);

            //    da.Fill(tb);
            //    GridView1.DataSource = tb;
            //    GridView1.DataBind();
        }

        private void getdata()
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("registerMyProcedure", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "selectadmin");
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
            //SqlConnectionStringBuilder connb = new SqlConnectionStringBuilder(ConfigurationManager.ConnectionStrings["SCS"].ConnectionString);
            //  using (SqlConnection conn = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True"))
            //{
            //   SqlCommand cmd = new SqlCommand("Select * from dbo.Userreg;", conn);
            // DataTable tb = new DataTable();

            //   SqlDataAdapter da = new SqlDataAdapter(cmd);

            //                da.Fill(tb);
            //tb.AcceptChanges();
            //              GridView1.DataSource = tb;
            //            GridView1.DataBind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            getdata();
        }



        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //con.Open();
            Label Id = GridView1.Rows[e.RowIndex].FindControl("label4") as Label;
            TextBox Name = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox Mobile = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            RadioButtonList Gender = GridView1.Rows[e.RowIndex].FindControl("RadioButtonList1") as RadioButtonList;
            DropDownList UserType = GridView1.Rows[e.RowIndex].FindControl("DropDownList1") as DropDownList;
            Image image = GridView1.Rows[e.RowIndex].FindControl("Image2") as Image;
            FileUpload FileUpload1 = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
            con.Open();
            string path = "~/image/";
            if (FileUpload1.HasFile)
            {
                path += FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(path));
            }
            else
            {
                Image img = (Image)GridView1.Rows[e.RowIndex].FindControl("Image2");
                path = img.ImageUrl;
            }
            // SqlCommand cmd = new SqlCommand("update userreg set name='" + Name.Text + "',mob='" + Mobile.Text + "',gender='" + Gender.SelectedValue + "',usertype='" + UserType.SelectedValue + "', image='" + path + "' where id='" + Convert.ToInt32(Id.Text) + "'", con);

            SqlCommand cmd = new SqlCommand("registerMyProcedure", con);
            cmd.Parameters.AddWithValue("@Action", "UpdateAdminpage");
            cmd.Parameters.AddWithValue("@id", Convert.ToInt32(Id.Text));
            cmd.Parameters.AddWithValue("@name", Name.Text);
            cmd.Parameters.AddWithValue("@mob", Mobile.Text);
            cmd.Parameters.AddWithValue("@gender", Gender.Text);
            cmd.Parameters.AddWithValue("@usertype", UserType.SelectedValue);
            cmd.Parameters.AddWithValue("@image", path);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            GridView1.DataBind();
            GridView1.EditIndex = -1;
            // GridView1.DataBind();
            con.Close();
            getdata();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //    Label Id = GridView1.Rows[e.RowIndex].FindControl("label1") as Label;
            //    con.Open();
            //    SqlCommand cmd = new SqlCommand("delete from userreg where id='" + Convert.ToInt32(Id.Text) + "'", con);

            //    cmd.ExecuteNonQuery();
            //    GridView1.DataBind();
            //    con.Close();
            //    getdata();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginForm.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow gvrow in GridView1.Rows)
            {
                CheckBox check = gvrow.FindControl("CheckBox1") as CheckBox;
                if (check.Checked)
                {
                    var Label = gvrow.FindControl("label1") as Label;
                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
                    con.Open();
                    // SqlCommand cmd = new SqlCommand("delete from userreg where id=@Id", con);
                    SqlCommand cmd = new SqlCommand("registerMyProcedure", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "delete");
                    cmd.Parameters.AddWithValue("@id", int.Parse(Label.Text));
                    cmd.ExecuteNonQuery();
                    con.Close();
                    getdata();
                }
            }
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            getdata();
        }

        protected void chkhead_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chkhead = (CheckBox)GridView1.HeaderRow.FindControl("chkhead");
            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox chkrow = (CheckBox)row.FindControl("CheckBox1");
                if (chkhead.Checked == true)
                {
                    chkrow.Checked = true;
                }
                else
                {
                    chkrow.Checked = false;
                }
            }
        }
        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            CheckBox chk = (CheckBox)sender;
            GridViewRow row = (GridViewRow)chk.NamingContainer;
        }
    }
}