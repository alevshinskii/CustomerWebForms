using CustomerManagement.Entities;
using CustomerManagement.Interfaces;
using CustomerManagement.Repositories;
using System;

namespace CustomerManagement.WebForms
{
    public partial class AddressAdd : System.Web.UI.Page
    {
        public IRepository<Address> AddressRepository { get; } = new AddressRepository();
        public IRepository<Customer> CustomerRepository { get; } = new CustomerRepository();
        public int CustomerId { get; private set; } = 0;
        public AddressAdd() { }

        public AddressAdd(IRepository<Address> addressRepository, IRepository<Customer> customerRepository)
        {
            AddressRepository = addressRepository;
            CustomerRepository = customerRepository;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            GetCustomerIdFromQuery();
        }

        public void GetCustomerIdFromQuery()
        {
            var id = Request.QueryString["CustomerId"];
            if (int.TryParse(id,out int parsedId))
            {
                if (CustomerRepository.Read(parsedId) != null)
                {
                    CustomerId = parsedId;
                    CustomerIdInput.Text = parsedId.ToString();
                    return;
                }
            }

            Response.Redirect("NotFound.aspx");

        }

        public void OnClickAdd(object sender, EventArgs e)
        {
            try
            {
                Address address = new Address();
                address.AddressId = 0;
                address.CustomerId = int.Parse(CustomerIdInput.Text);
                address.AddressLine = AddressLineInput.Text;
                address.AddressLine2 = AddressLine2Input.Text;
                address.AddressType = AddressTypeInput.Text;
                address.City = CityInput.Text;
                address.Country = CountryInput.Text;
                address.PostalCode = PostalCodeInput.Text;
                address.State = StateInput.Text;

                if (CustomerRepository.Read(address.CustomerId) != null)
                {
                    AddressRepository.Create(address);
                }
                else
                {
                    Console.WriteLine($"Customer with id {address.CustomerId} not found");
                    Response.Redirect("NotFound.aspx");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Response.Redirect("NotFound.aspx");
            }
            Response.Redirect($"AddressesListPage.aspx?CustomerId={CustomerId}");
        }
    }
}