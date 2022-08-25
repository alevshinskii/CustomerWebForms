using CustomerManagement.Interfaces;
using Moq;

namespace CustomerManagement.WebForms.Test.Customer;

public class CustomerEditTest
{
    [Fact]
    public void ShouldBeAbleToCreatePage()
    {
        CustomerEdit page = new CustomerEdit();
    }

    [Fact]
    public void ShouldUpdateCustomer()
    {
        var customerRepository = new Mock<IRepository<Entities.Customer>>();
        customerRepository.Setup(x => x.Update(new Entities.Customer())).Returns(true);
            
        CustomerEdit page = new CustomerEdit(customerRepository.Object);
        page.OnClickEdit(this, EventArgs.Empty);

        customerRepository.Verify(repository => repository.Update(It.IsAny<Entities.Customer>()));
    }
}