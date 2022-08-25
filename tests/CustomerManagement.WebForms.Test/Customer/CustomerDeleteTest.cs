using CustomerManagement.Interfaces;
using Moq;

namespace CustomerManagement.WebForms.Test.Customer;

public class CustomerDeleteTest
{
    [Fact]
    public void ShouldBeAbleToCreatePage()
    {
        CustomerDelete page = new CustomerDelete();
    }

    [Fact]
    public void ShouldDeleteCustomer()
    {
        var customerRepository = new Mock<IRepository<Entities.Customer>>();
        customerRepository.Setup(x => x.Delete(1)).Returns(true);
            
        CustomerDelete page = new CustomerDelete(customerRepository.Object);
        page.OnClickDelete(this, EventArgs.Empty);

        customerRepository.Verify(repository => repository.Delete(It.IsAny<int>()));
    }
}