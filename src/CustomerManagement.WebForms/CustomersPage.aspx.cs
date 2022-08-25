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

        public int ItemsOnPage { get; set; } = 10;
        public List<Customer> CustomersList { get; set; }
        public List<Customer> CustomersListOnPage { get; set; }

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
            int currentPage = GetCurrentPage();

            LoadCustomersList();
            LoadCustomersListOnPage(currentPage);
            
        }

        public void LoadCustomersListOnPage(int currentPage)
        {
            CustomersListOnPage=CustomersList.Skip((currentPage-1)*ItemsOnPage).Take(ItemsOnPage).ToList();
        }

        public void LoadCustomersList()
        {
            CustomersList=_customerRepository.ReadAll();
        }

        public int GetCurrentPage()
        {
            var queryId = Request.QueryString["page"];
            if (queryId != null)
            {
                if (int.TryParse(queryId, out int id))
                {
                    return id;
                }
            }
            return 1;
        }
    }
}