using System;
using System.Data;
using MySql.Data.MySqlClient;

namespace CoffeeRegistrationApp
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Optional: Add any page load logic
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            // Get user inputs from textboxes
            string name = NameTextBox.Text;  // Get value from NameTextBox
            string phone = PhoneTextBox.Text;  // Get value from PhoneTextBox
            string address = AddressTextBox.Text;  // Get value from AddressTextBox
            string gender = GenderDropDown.SelectedValue;  // Get value from Gender dropdown

            // MySQL Connection String
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["CoffeeRegistrationDB"].ToString();

            using (MySqlConnection conn = new MySqlConnection(connectionString))
            {
                string query = "INSERT INTO Users (Name, Phone, Address, Gender) VALUES (@Name, @Phone, @Address, @Gender)";
                MySqlCommand cmd = new MySqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@Name", name);
                cmd.Parameters.AddWithValue("@Phone", phone);
                cmd.Parameters.AddWithValue("@Address", address);
                cmd.Parameters.AddWithValue("@Gender", gender);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();

                    // Redirect to profile page after successful registration
                    Response.Redirect("Profile.aspx?name=" + name + "&phone=" + phone + "&address=" + address + "&gender=" + gender);
                }
                catch (Exception ex)
                {
                    // Handle any errors (log them, display a message, etc.)
                    Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
                }
            }
        }
    }
}
