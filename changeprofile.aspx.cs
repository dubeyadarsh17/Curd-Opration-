using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;

namespace ResitrationForm
{
    public partial class changeprofile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                imageupdate();
            }
        }

        private void imageupdate()
        {

            SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("Select image from userreg where id='" + Session["id"] + "'", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            for (int i = 0; i < ds.Tables.Count; i++)
            {
                string url = ds.Tables[0].Rows[i]["image"].ToString();
                Image1.ImageUrl = url;
            }
            con.Close();


        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (FileUpload1.PostedFile != null)
            {
                string strpath = Path.GetExtension(FileUpload1.FileName);
                if (strpath != ".jpg" && strpath != ".jpeg" && strpath != ".png")
                {

                    Label1.Text = "Please Select Image(jpg,jpeg,png) File";
                    Label1.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    string fileing = Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/image/")+fileing);
                    SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
                    con.Open();
                    //SqlCommand cmd = new SqlCommand("update userreg set image='" + "~/image/" + fileing + "' where id='" + Session["id"].ToString() + "'", con);
                    SqlCommand cmd = new SqlCommand("registerMyProcedure",con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Action", "UpdateImage");
                    cmd.Parameters.AddWithValue("@id", Session["id"].ToString());
                    cmd.Parameters.AddWithValue("@image","~/image/"+fileing);
                    cmd.ExecuteNonQuery();
                    Label1.Text = "User Profile Image " + Session["name"].ToString() + "has Successful Change";
                    con.Close();
                    Response.Redirect("changeprofile.aspx");
                }
            }        
        }
    }
}

//if (!FileUpload1.HasFile)
//{
//    Label1.Visible = true;
//    Label1.Text = "Please Select Image File";    //checking if file uploader has no file selected


//}
//else
//{
//    int length = FileUpload1.PostedFile.ContentLength;
//    byte[] pic = new byte[length];
//    string filePath = "~/image/" + Path.GetFileName(FileUpload1.FileName);
//    File.WriteAllBytes(Server.MapPath(filePath), pic);

//    //Display the Image File.
//    Image1.ImageUrl = filePath;
//    Image1.Visible = true;


//    FileUpload1.PostedFile.InputStream.Read(pic, 0, length);

//    try
//    {
//        SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
//        SqlCommand cmd = new SqlCommand("update userreg set image=@image where id='" + Session["id"] + "'", con);
//        con.Open();
//        cmd.Parameters.AddWithValue("image", filePath);

//        cmd.ExecuteNonQuery();
//        Label1.Visible = true;
//        Label1.Text = "Image Uploaded Sucessfully";  //after Sucessfully uploaded image
//    }
//    finally
//    {
//        con.Close();
//    }
// }