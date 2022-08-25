using CustomerManagement.Entities;
using CustomerManagement.Interfaces;
using CustomerManagement.Repositories;
using FluentAssertions;
using Moq;

namespace CustomerManagement.WebForms.Test
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
            var customerRepository = new Mock<IRepository<Customer>>();
            customerRepository.Setup(x => x.ReadAll()).Returns(()=> new List<Customer>()
                {
                    new Customer(),
                    new Customer()
                });

            CustomersPage page = new CustomersPage(customerRepository.Object);
            page.LoadCustomersList();

            page.CustomersList.Should().HaveSameCount(customerRepository.Object.ReadAll());
        }
    }
}