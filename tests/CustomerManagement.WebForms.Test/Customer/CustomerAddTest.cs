using CustomerManagement.Entities;
using CustomerManagement.Interfaces;
using CustomerManagement.Repositories;
using FluentAssertions;
using Moq;

namespace CustomerManagement.WebForms.Test.Customer
{
    public class CustomerAddTest
    {
        [Fact]
        public void ShouldBeAbleToCreatePage()
        {
            CustomerAdd page = new CustomerAdd();
        }

        [Fact]
        public void ShouldBeAbleToCreateCustomer()
        {
            var customerRepository = new Mock<IRepository<Entities.Customer>>();
            customerRepository.Setup(x => x.Create(new Entities.Customer())).Returns(() => new Entities.Customer(){Id=1});
            
            CustomerAdd page = new CustomerAdd(customerRepository.Object);
            page.OnClickCreate(this, EventArgs.Empty);

            customerRepository.Verify(repository => repository.Create(It.IsAny<Entities.Customer>()));
        }
    }
}