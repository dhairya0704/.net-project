using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (ViewState["loggedInUser"] != null)
        {
            Response.Redirect("login.aspx");
        }
        String email = "";
        String password = "";
        String authType = "";

        SqlConnection sqlConnection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\16BCER038\Desktop\.net-project\App_Data\DbUser.mdf;Integrated Security=True;Connect Timeout=30");
        sqlConnection.Open();

        if (Request.Form["email"] == null && Request.Form["password"] == null)
        {
            return;
        }

        if (Request.Form["email"] != null)
        {
            email = Request.Form["email"];
        }
        if (Request.Form["password"] != null)
        {
            password = Request.Form["password"];
        }
        if (Request.Form["register"] != null)
        {
            authType = Request.Form["register"];
        }
        if (Request.Form["login"] != null)
        {
            authType = Request.Form["login"];
        }

        if (authType.Equals("Register"))
        {
            SqlCommand sqlCommand = new SqlCommand(@"SELECT email FROM UserTable WHERE email = @email", sqlConnection);
            sqlCommand.Parameters.AddWithValue("@email", email);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            int i = 0;
            while (sqlDataReader.Read())
            {
                i++;
            }
            sqlDataReader.Close();
            if (i < 1)
            {
                sqlCommand = new SqlCommand("INSERT INTO UserTable VALUES(@email, @password)", sqlConnection);
                sqlCommand.Parameters.AddWithValue("@email", email);
                sqlCommand.Parameters.AddWithValue("@password", password);
                sqlCommand.ExecuteNonQuery();
                Response.Redirect("login.aspx?r=rD"); // Registration Done
            }
            else
            {
                Response.Redirect("login.aspx?r=aD"); // User Already Exists
            }
        }
        else
        {
            SqlCommand sqlCommand = new SqlCommand(@"SELECT email FROM UserTable WHERE email = @email AND password = @password", sqlConnection);
            sqlCommand.Parameters.AddWithValue("@email", email);
            sqlCommand.Parameters.AddWithValue("@password", password);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            int i = 0;
            while (sqlDataReader.Read())
            {
                i++;
            }
            if (i == 1)
            {
                ViewState["loggedInUser"] = email;
                Response.Redirect("main.aspx"); // Login Done
            }
            else
            {
                Response.Redirect("login.aspx?r=oD"); // Login Failed
            }
        }
    }
}
    
