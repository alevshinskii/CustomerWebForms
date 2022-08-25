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
    public partial class CustomerAdd : System.Web.UI.Page
    {
        private IRepository<Customer> _customerRepository;
        public CustomerAdd()
        {
            _customerRepository = new CustomerRepository();
        }
        public CustomerAdd(IRepository<Customer> repository)
        {
            _customerRepository = repository;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            }
        }

        public void OnClickCreate(object sender, EventArgs e)
        {
            Customer customer = new Customer();

            customer.FirstName = FirstNameInput?.Text;
            customer.LastName = LastNameInput?.Text;
            customer.PhoneNumber = PhoneNumberInput?.Text;
            customer.Email = EmailInput?.Text;
            if (decimal.TryParse(TotalPurchasesAmountInput?.Text, out decimal total))
                customer.TotalPurchasesAmount = total;

            var createdCustomer = _customerRepository.Create(customer);

            if (createdCustomer != null)
            {
                Response.Redirect("CustomersPage.aspx");
            }
        }
    }
}