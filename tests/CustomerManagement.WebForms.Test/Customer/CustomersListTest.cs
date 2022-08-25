using CustomerManagement.Interfaces;
using FluentAssertions;
using Moq;

namespace CustomerManagement.WebForms.Test.Customer
{
    public class CustomersListTest
    {
        [Fact]
        public void ShouldBeAbleToCreatePage()
        {
            CustomersPage page = new CustomersPage();
        }


        [Fact]
        public void ShouldBeAbleToLoadCustomers()
        {
            var customerRepository = new Mock<IRepository<Entities.Customer>>();
            customerRepository.Setup(x => x.ReadAll()).Returns(() => new List<Entities.Customer>()
                {
                    new Entities.Customer(),
                    new Entities.Customer()
                });

            CustomersPage page = new CustomersPage(customerRepository.Object);
            page.LoadCustomersList();

            page.CustomersList.Should().HaveSameCount(customerRepository.Object.ReadAll());
        }

    }
}