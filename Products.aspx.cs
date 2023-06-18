using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dapper;

namespace SimpleApp
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            //to select the product name and price after selecting id from the dropdownlist
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\products.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from product where pid=@pid", con);
            cmd.Parameters.AddWithValue("@pid", DropDownList1.SelectedItem.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            TextBox1.Text = dr[1].ToString();
            TextBox2.Text = dr[2].ToString();


            con.Close();
            Label1.Text = "Record Displayed Successfully";
            GridView1.DataBind();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //to edit the details of the product
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\products.mdf;Integrated Security=True");
            con.Open();
            string pid = DropDownList1.SelectedItem.ToString();
            SqlCommand cmd = new SqlCommand("update product Set name=@name,price=@price where pid=@pid", con);

            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@price", TextBox2.Text);

            cmd.Parameters.AddWithValue("pid", pid);

            int i = cmd.ExecuteNonQuery();
            Label1.Text = "Record succesfully updated";
            con.Close();
            GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //to delete the product from the table
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\products.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("delete from product where pid='" + DropDownList1.SelectedItem.Text + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();

            Label1.Text = "Record Deleted Successfully";
            conn.Close();
            GridView1.DataBind();
        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
        

        protected void Button5_Click1(object sender, EventArgs e)
        {
            //to add items in the database
            SqlCommand cmd;
            SqlConnection con;

            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\products.mdf;Integrated Security=True");
            con.Open();



            cmd = new SqlCommand("insert into product(name,price)values (@name,@price)", con);


            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@price", TextBox2.Text);


            int i = cmd.ExecuteNonQuery();
            Label1.Text = "Record Entered Successfully";
            con.Close();
            
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //to select the pid about which details to be dislayed
            GridView1.DataBind();
        }
    }
}