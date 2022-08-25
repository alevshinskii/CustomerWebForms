using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomerManagement.Entities;

namespace CustomerManagement.WebForms
{
    public partial class CustomerEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void LoadCustomer()
        {
            var id = Request.QueryString["CustomerId"];
            Customer customer;
            if (id != null)
            {
               /* customer=_customerRepository.Read(int.Parse(id));
                if (customer != null)
                {
                    FirstNameInput.Text = customer.FirstName;


                }*/
            }
            
            Response.Redirect("NotFound.aspx");
        }
    }
}