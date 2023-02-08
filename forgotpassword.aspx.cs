using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Reflection.Emit;
using System.IO;
using System.Net;
using System.Text;
using System.Security.Cryptography;

namespace ResitrationForm
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }      
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                DataSet ds = new DataSet();
                using (SqlConnection con = new SqlConnection("Data Source=DESKTOP-97K28FP;Initial Catalog=Aspprojects;Integrated Security=True"))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT name,password FROM userreg Where email= '" + txtEmail.Text.Trim() + "'", con);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(ds);
                    con.Close();
                }
                if (ds.Tables[0].Rows.Count > 0)
                {
                    string to = txtEmail.Text; //To address
                    string from = "rahulpaljobs@gmail.com"; //From address
                    MailMessage message = new MailMessage(from, to);
                    string mailbody = "Hi, <br/>Please check your Login Detailss<br/><br/>Your name: " + ds.Tables[0].Rows[0]["name"] + "<br/><br/>Your password: " + Decrypt( ds.Tables[0].Rows[0]["password"].ToString()) + "<br/><br/>";
                    message.Subject = "Sending Email Using Asp.Net & C#";
                    message.Body = mailbody;
                    message.BodyEncoding = Encoding.UTF8;
                    message.IsBodyHtml = true;
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp
                    System.Net.NetworkCredential basicCredential1 = new
                    System.Net.NetworkCredential("rahulpaljobs@gmail.com", "kbvhmihftjmnwquc");
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = basicCredential1;
                    try
                    {
                        client.Send(message);
                    }

                    catch (Exception ex)
                    {
                        throw ex;
                    }


                    //SmtpClient smtp = new SmtpClient();
                    //smtp.Host = "smtp.gmail.com";
                    //smtp.Port = 587;
                    //smtp.Credentials = new System.Net.NetworkCredential("haritisyal@gmail.com", "Your Password Here");
                    //smtp.EnableSsl = true;
                    //MailMessage msg = new MailMessage();
                    //msg.Subject = "Hello sir  Thanks for Register at Hariti Study Hub";
                    //msg.Body = "Hi, Thanks For Your Registration at Hariti Study Hub, We will Provide You The Latest Update. Thanks";
                    //string toaddress = txtEmail.Text;
                    //msg.To.Add(toaddress);
                    //string fromaddress = "Hariti Study Hub <HaritiSyal@gmail.com>";
                    //msg.From = new MailAddress(fromaddress);
                    //try
                    //{
                    //    smtp.Send(msg);
                    //    lbltxt.Text = "Your Email Has Been Registered with Us";
                    //    txtEmail.Text = "";


                    //}
                    //catch
                    //{
                    //    throw;
                    //}


                    //MailMessage Msg = new MailMessage();
                    //Msg.From = new MailAddress("lathag3093@gmail.com");
                    //Msg.To.Add(txtEmail.Text);
                    ////Msg.Subject = txtSubject.Text;
                    //Msg.Body = "Your Password Details";
                    //Msg.IsBodyHtml = true;

                    //SmtpClient smtp = new SmtpClient();
                    //smtp.Host = "smtp.gamil.com";
                    //System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
                    //NetworkCred.UserName = "lathag3093gmail.com";
                    //NetworkCred.Password = "";
                    //smtp.UseDefaultCredentials = true;

                    //smtp.Credentials = NetworkCred;
                    //smtp.Port = 587;
                    //smtp.EnableSsl = true;
                    //smtp.Send(Msg);
                    //lbltxt.Text = "Email has been successfully sent..!!";


                    //MailMessage Msg = new MailMessage();
                    //// Sender e-mail address.
                    //Msg.From = new MailAddress(txtEmail.Text);
                    //// Recipient e-mail address.
                    //Msg.To.Add(txtEmail.Text);
                    //Msg.Subject = "Your Password Details";
                    //Msg.Body = "Hi, <br/>Please check your Login Detailss<br/><br/>Your name: " + ds.Tables[0].Rows[0]["name"] + "<br/><br/>Your password: " + ds.Tables[0].Rows[0]["password"] + "<br/><br/>";
                    //Msg.IsBodyHtml = true;
                    //// your remote SMTP server IP.
                    //SmtpClient smtp = new SmtpClient();
                    //smtp.Host = "smtp.gmail.com";
                    //smtp.Port = 587;
                    //smtp.Credentials = new System.Net.NetworkCredential("yourname@gmail.com", "yourpassword");
                    //smtp.EnableSsl = true;
                    //smtp.Send(Msg);
                    //Msg = null;
                    //lbltxt.Text = "Your Password Details Sent to your mail";
                    //// Clear the textbox valuess
                    //txtEmail.Text = "";
                }
                else
                {
                    lbltxt.Text = "The Email you entered not exists.";
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("{0} Exception caught.", ex);
            }

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
