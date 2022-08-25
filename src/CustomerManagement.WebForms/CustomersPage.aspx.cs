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
    public partial class CustomersPage : Page
    {
        private IRepository<Customer> _customerRepository;
        public List<Customer> CustomersList { get; set; }
        public CustomersPage()
        {
            _customerRepository = new CustomerRepository();
        }
        public CustomersPage(IRepository<Customer> repository)
        {
            _customerRepository = repository;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCustomersList();
            }
        }

        public void LoadCustomersList()
        {
            CustomersList=_customerRepository.ReadAll();
        }
    }
}