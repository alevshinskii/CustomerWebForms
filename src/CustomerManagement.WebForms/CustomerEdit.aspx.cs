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
    public partial class CustomerEdit : System.Web.UI.Page
    {
        private IRepository<Customer> _customerRepository;

        public CustomerEdit()
        {
            _customerRepository = new CustomerRepository();
        }

        public CustomerEdit(IRepository<Customer> repository)
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

        public void OnClickEdit(object sender, EventArgs e)
        {
            Customer customer = new Customer();

            if(int.TryParse(IdInput?.Text, out int id))
                customer.Id = id;
            customer.FirstName = FirstNameInput?.Text;
            customer.LastName = LastNameInput?.Text;
            customer.PhoneNumber = PhoneNumberInput?.Text;
            customer.Email = EmailInput?.Text;
            if (decimal.TryParse(TotalPurchasesAmountInput?.Text, out decimal total))
                customer.TotalPurchasesAmount = total;

            if(_customerRepository.Update(customer))
                Response.Redirect("CustomersPage.aspx");
            
        }
    }
}