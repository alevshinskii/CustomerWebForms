using CustomerManagement.Entities;
using CustomerManagement.Interfaces;
using CustomerManagement.Repositories;
using System;
using System.Web.UI;

namespace CustomerManagement.WebForms
{
    public partial class AddressEdit : Page
    {
        public IRepository<Address> AddressRepository { get; } = new AddressRepository();

        public int AddressId { get; private set; } = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetAddressIdFromQuery();
                LoadAddress();
            }
        }

        public void GetAddressIdFromQuery()
        {
            var id = Request.QueryString["Id"];
            if (int.TryParse(id, out int parsedId))
            {
                if (AddressRepository.Read(parsedId) != null)
                {
                    AddressId = parsedId;
                    IdInput.Text = parsedId.ToString();
                    return;
                }
            }

            Response.Redirect("NotFound.aspx");

        }

        public void LoadAddress()
        {
            Address address = AddressRepository.Read(AddressId);
            if (address != null)
            {

                IdInput.Text = address.AddressId.ToString();
                CustomerIdInput.Text = address.CustomerId.ToString();
                AddressLineInput.Text = address.AddressLine;
                AddressLine2Input.Text = address.AddressLine2;
                AddressTypeInput.Text = address.AddressType;
                CityInput.Text = address.City;
                CountryInput.Text = address.Country;
                PostalCodeInput.Text = address.PostalCode;
                StateInput.Text = address.State;
            }
            else
            {
                Response.Redirect("NotFound.aspx");
            }
        }

        protected void OnClickEdit(object sender, EventArgs e)
        {
            GetAddressIdFromQuery();
            try
            {
                Address address = AddressRepository.Read(AddressId);
                if (address != null)
                {
                    
                    address.AddressLine = AddressLineInput.Text;
                    address.AddressLine2 = AddressLine2Input.Text;
                    address.AddressType = AddressTypeInput.Text;
                    address.City = CityInput.Text;
                    address.Country = CountryInput.Text;
                    address.PostalCode = PostalCodeInput.Text;
                    address.State = StateInput.Text;

                    AddressRepository.Update(address);
                }
                else
                {
                    throw new ArgumentException();
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Response.Redirect("NotFound.aspx");
            }
            Response.Redirect($"AddressesListPage.aspx?CustomerId={CustomerIdInput.Text}");
        }
    }
}