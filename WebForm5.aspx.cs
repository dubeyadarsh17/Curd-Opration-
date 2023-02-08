using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResitrationForm
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
            con.Open();
            //SqlCommand cmd = new SqlCommand("select * from userreg where email=@email and password=@password", con);
            //SqlCommand cmd = new SqlCommand("registerMyProcedure", con);
            //cmd.Parameters.AddWithValue("@Action", "login");
            //cmd.CommandType = CommandType.StoredProcedure;
            SqlCommand cmd = new SqlCommand("select * from userreg where email=@email", con);
            cmd.Parameters.AddWithValue("@email", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@password", Decrypt(TextBox2.Text));
            //cmd.Parameters.AddWithValue("@password", wb1.encrypt(TextBox2.Text));
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    Session["id"] = dr.GetValue(0).ToString();
                    Session["name"] = dr.GetValue(1).ToString();
                    Session["usertype"] = dr.GetValue(6).ToString();
                    Session["email"] = dr.GetValue(2).ToString();
                    Session["password"] = dr.GetValue(3).ToString();

                }
            }
            string pass = Decrypt(Session["password"].ToString());


            if (pass == TextBox2.Text)
            {
                if (Session["usertype"].Equals("Admin"))
                {
                    Response.Redirect("AdminForm.aspx");

                    // Response.Write("<Script>alret('login successfully')<script>");
                }
                else
                {
                    Response.Redirect("UserForm.aspx");
                }
            }
            else
            {
                Response.Write("<Script>alret('login is not successfully')<script>");
            }


        }
        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("RegistrationForm.aspx");

        }
        private string Decrypt(string cipherText)
        {
            string encryptionKey = "MAKV2SPBNI99212";
            byte[] cipherBytes = Convert.FromBase64String(cipherText);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(encryptionKey, new byte[] { 0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76 });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateDecryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(cipherBytes, 0, cipherBytes.Length);
                        cs.Close();
                    }
                    cipherText = Encoding.Unicode.GetString(ms.ToArray());
                }
            }
            return cipherText;
        }
    }
}