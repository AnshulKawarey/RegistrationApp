using System;

namespace CoffeeRegistrationApp
{
    public partial class Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            NameLabel.Text = Request.QueryString["name"];
            PhoneLabel.Text = Request.QueryString["phone"];
            AddressLabel.Text = Request.QueryString["address"];
            GenderLabel.Text = Request.QueryString["gender"];
        }
    }
}
