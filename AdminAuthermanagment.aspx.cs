using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace ElaibraryManagement
{
    public partial class AdminAuthermanagment : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridView1.DataBind();
            }
        }

        // Method to bind GridView
        private void BindGridView()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    using (SqlCommand cmd = new SqlCommand("SELECT * FROM author_masther_tbl", con))
                    {
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            DataTable dt = new DataTable();
                            da.Fill(dt);
                            
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        // Add button click
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                Response.Write("<script>alert('Author with this ID already exists. You cannot add another author with the same Author ID');</script>");
            }
            else
            {
                addNewAuthor();
            }
        }

        // Update button click
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                updateAuthor();
            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }
        }

        // Delete button click
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                deleteAuthor();
            }
            else
            {
                Response.Write("<script>alert('Author does not exist');</script>");
            }
        }

        // GO button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getAuthorByID();
        }

        // User defined function
        void getAuthorByID()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM author_masther_tbl WHERE author_id=@AuthorID", con);
                    cmd.Parameters.AddWithValue("@AuthorID", TextBox1.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count >= 1)
                    {
                        TextBox2.Text = dt.Rows[0]["author_name"].ToString();
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Author ID');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                // Log exception details (optional)
                System.Diagnostics.Trace.WriteLine($"Exception: {ex.Message}");
                System.Diagnostics.Trace.WriteLine($"Stack Trace: {ex.StackTrace}");

                // Display user-friendly message
                Response.Write("<script>alert('An error occurred while fetching author details. Please try again later.');</script>");
            }
        }

        void deleteAuthor()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("DELETE FROM author_masther_tbl WHERE author_id=@AuthorID", con);
                    cmd.Parameters.AddWithValue("@AuthorID", TextBox1.Text.Trim());
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Author Deleted Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateAuthor()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("UPDATE author_masther_tbl SET author_name=@AuthorName WHERE author_id=@AuthorID", con);
                    cmd.Parameters.AddWithValue("@AuthorName", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@AuthorID", TextBox1.Text.Trim());
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Author Updated Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void addNewAuthor()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO author_masther_tbl(author_id, author_name) VALUES(@AuthorID, @AuthorName)", con);
                    cmd.Parameters.AddWithValue("@AuthorID", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@AuthorName", TextBox2.Text.Trim());
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Author added Successfully');</script>");
                    clearForm();
                    GridView1.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool checkIfAuthorExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT * FROM author_masther_tbl WHERE author_id=@AuthorID", con);
                    cmd.Parameters.AddWithValue("@AuthorID", TextBox1.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt.Rows.Count >= 1;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
        }
    }
}
