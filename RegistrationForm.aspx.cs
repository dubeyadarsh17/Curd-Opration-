using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace ResitrationForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string UT = "User";
            //SqlCommand cmd = new SqlCommand(@"INSERT INTO[dbo].[userreg] ([name],[email],[password] ,[mob],[gender],[usertype],[image]) VALUES (@name,@email,@password,@mob,@gender,@usertype,@image)", con);
            SqlCommand cmd = new SqlCommand("registerMyProcedure", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Action", "Insert");
            cmd.Parameters.AddWithValue("@name", txtname.Text);
            cmd.Parameters.AddWithValue("@email", txtemail.Text);
            cmd.Parameters.AddWithValue("@password", encrypt(txtpass.Text));
            cmd.Parameters.AddWithValue("@mob", txtmob.Text);
            cmd.Parameters.AddWithValue("@gender",RadioButtonList1.SelectedValue);
            cmd.Parameters.AddWithValue("@usertype",UT);
            cmd.Parameters.AddWithValue("@image", "~/image/hello.jpg");
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            // Response.Write("<script>alert('user is resitered successfully')</script>");
            
            Response.Redirect("LoginForm.aspx");
        }

        public string encrypt(string encryptString)
        {
            string EncryptionKey = "MAKV2SPBNI99212";
            byte[] clearBytes = Encoding.Unicode.GetBytes(encryptString);
            using (Aes encryptor = Aes.Create())
            {
                Rfc2898DeriveBytes pdb = new Rfc2898DeriveBytes(EncryptionKey, new byte[] {
            0x49, 0x76, 0x61, 0x6e, 0x20, 0x4d, 0x65, 0x64, 0x76, 0x65, 0x64, 0x65, 0x76
        });
                encryptor.Key = pdb.GetBytes(32);
                encryptor.IV = pdb.GetBytes(16);
                using (MemoryStream ms = new MemoryStream())
                {
                    using (CryptoStream cs = new CryptoStream(ms, encryptor.CreateEncryptor(), CryptoStreamMode.Write))
                    {
                        cs.Write(clearBytes, 0, clearBytes.Length);
                        cs.Close();
                    }
                    encryptString = Convert.ToBase64String(ms.ToArray());
                }
            }
            return encryptString;
        }

    }
}