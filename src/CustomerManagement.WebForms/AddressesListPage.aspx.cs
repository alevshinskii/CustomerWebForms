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
    public partial class AddressesListPage : System.Web.UI.Page
    {
        public IRepository<Customer> CustomerRepository { get; } = new CustomerRepository();
        public IRepository<Address> AddressRepository { get; } = new AddressRepository();
        public List<Address> AddressesList { get; private set; } = new List<Address>();
        public int CustomerId { get; private set; } = 0;


        public AddressesListPage()
        {

        }

        public AddressesListPage(IRepository<Address> addressRepository,IRepository<Customer> customerRepository)
        {
            AddressRepository = addressRepository;
            CustomerRepository = customerRepository;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCustomerIdFromQuery();
            GetAddresses(CustomerId);
        }

        public void GetCustomerIdFromQuery()
        {
            try
            {
                var id = Request.QueryString["CustomerId"];
                if (int.TryParse(id, out int parsedId))
                {
                    if (CustomerRepository.Read(parsedId) != null)
                    {
                        CustomerId=parsedId;
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                Response.Redirect("NotFound.aspx");
            }
        }
        public void GetAddresses(int customerId)
        {
            AddressesList=AddressRepository.ReadAll(customerId);
        }
    }
}