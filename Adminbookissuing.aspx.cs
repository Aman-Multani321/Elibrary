using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElaibraryManagement
{
    public partial class Adminbookissuing : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Any initialization code if necessary
            }
        }

        // Issue Book
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (CheckIfBookExists() && CheckIfMemberExists())
            {
                if (!CheckIfBookAlreadyIssued())
                {
                    IssueBook();
                }
                else
                {
                    Response.Write("<script>alert('This book is already issued to this member.');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Wrong book ID or member ID.');</script>");
            }
        }

        // Return Book
        protected void Button4_Click(object sender, EventArgs e)
        {
            ReturnBook();
        }

        // Retrieve and display book and member details
        protected void Button1_Click(object sender, EventArgs e)
        {
            GetNames();
        }

        // Function to issue a book
        void IssueBook()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO book_issue_tbl (member_id, member_mname, book_id, book_name, issue_date, due_date) VALUES (@member_id, @member_mname, @book_id, @book_name, @issue_date, @due_date)", con);

                    cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@member_mname", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_name", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@issue_date", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@due_date", TextBox6.Text.Trim());

                    int result = cmd.ExecuteNonQuery();

                    if (result > 0)
                    {
                        cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock = current_stock - 1 WHERE book_id=@book_id", con);
                        cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Book issued successfully.');</script>");
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('Book issuance failed.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        // Function to return a book
        void ReturnBook()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("DELETE FROM book_issue_tbl WHERE member_id=@member_id AND book_id=@book_id", con);

                    cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());

                    int result = cmd.ExecuteNonQuery();

                    if (result > 0)
                    {
                        cmd = new SqlCommand("UPDATE book_master_tbl SET current_stock = current_stock + 1 WHERE book_id=@book_id", con);
                        cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                        cmd.ExecuteNonQuery();

                        Response.Write("<script>alert('Book returned successfully.');</script>");
                        GridView1.DataBind();
                    }
                    else
                    {
                        Response.Write("<script>alert('No such book is issued to this member.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        // Check if the book exists in the database
        bool CheckIfBookExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT * FROM book_master_tbl WHERE book_id=@book_id", con);
                    cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
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

        // Check if the member exists in the database
        bool CheckIfMemberExists()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT full_name FROM member_master_tbl WHERE member_id=@member_id", con);
                    cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
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

        // Check if the book is already issued to the member
        bool CheckIfBookAlreadyIssued()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT * FROM book_issue_tbl WHERE member_id=@member_id AND book_id=@book_id", con);
                    cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
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

        // Retrieve the names of the book and member
        void GetNames()
        {
            try
            {
                using (SqlConnection con = new SqlConnection(strcon))
                {
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT book_name FROM book_master_tbl WHERE book_id=@book_id", con);
                    cmd.Parameters.AddWithValue("@book_id", TextBox1.Text.Trim());
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        TextBox4.Text = dt.Rows[0]["book_name"].ToString();
                    }
                    else
                    {
                        Response.Write("<script>alert('Wrong book ID.');</script>");
                    }

                    cmd = new SqlCommand("SELECT full_name FROM member_master_tbl WHERE member_id=@member_id", con);
                    cmd.Parameters.AddWithValue("@member_id", TextBox2.Text.Trim());
                    da = new SqlDataAdapter(cmd);
                    dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count >= 1)
                    {
                        TextBox3.Text = dt.Rows[0]["full_name"].ToString();
                    }
                    else
                    {
                        Response.Write("<script>alert('Wrong member ID.');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        protected void GridView1_RowDataBound(object sender, System.Web.UI.WebControls.GridViewRowEventArgs e)
        {
            try
            {
                if(e.Row.RowType == DataControlRowType.DataRow)
                {
                    //chek
                    DateTime dt = Convert.ToDateTime(e.Row.Cells[5].Text);
                    DateTime today = DateTime.Today;
                    if (today > dt )
                    {
                        e.Row.BackColor = System.Drawing.Color.PaleVioletRed;
                    }
                }
            }
            catch(Exception ex) 
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}
