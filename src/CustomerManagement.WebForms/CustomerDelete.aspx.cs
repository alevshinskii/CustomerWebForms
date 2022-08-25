using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CustomerManagement.Entities;
using CustomerManagement.Interfaces;
using CustomerManagement.Repositories;

namespace CustomerManagement.WebForms
{
    public partial class CustomerDelete : System.Web.UI.Page
    {
        private IRepository<Customer> _customerRepository;

        public CustomerDelete()
        {
            _customerRepository = new CustomerRepository();
        }

        public CustomerDelete(IRepository<Customer> repository)
        {
            _customerRepository = repository;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCustomer();
            }
        }

        public void LoadCustomer()
        {
            var id = Request.QueryString["CustomerId"];
            Customer customer;
            if (id != null)
            {
                customer=_customerRepository.Read(int.Parse(id));
                if (customer != null)
                {
                    IdInput.Text = id;
                    FirstNameInput.Text = customer.FirstName;
                    LastNameInput.Text = customer.LastName;
                    EmailInput.Text = customer.Email;
                    PhoneNumberInput.Text = customer.PhoneNumber;
                    TotalPurchasesAmountInput.Text = customer.TotalPurchasesAmount.ToString();

                    return;
                }
            }
            
            Response.Redirect("NotFound.aspx");
        }

        public void OnClickDelete(object sender, EventArgs e)
        {
            int ID=0;

            if(int.TryParse(IdInput?.Text, out int id))
                ID=id;

            if(_customerRepository.Delete(ID))
                Response.Redirect("CustomersPage.aspx");

        }
    }
}