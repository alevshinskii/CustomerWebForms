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
    public partial class NotesListPage : Page
    {
        public IRepository<Customer> CustomerRepository { get; } = new CustomerRepository();
        public IRepository<Note> NoteRepository { get; } = new NoteRepository();
        public List<Note> NotesList { get; private set; } = new List<Note>();
        public int CustomerId { get; private set; } = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            GetCustomerIdFromQuery();
            GetNotes(CustomerId);
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
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Response.Redirect("NotFound.aspx");
            }
            
            Response.Redirect("NotFound.aspx");
        }
        public void GetNotes(int customerId)
        {
            NotesList = NoteRepository.ReadAll(customerId);
        }
    }
}