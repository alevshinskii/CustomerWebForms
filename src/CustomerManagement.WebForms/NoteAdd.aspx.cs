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
    public partial class NoteAdd : Page
    {
        public IRepository<Note> NoteRepository { get; } = new NoteRepository();
        public IRepository<Customer> CustomerRepository { get; } = new CustomerRepository();
        public int CustomerId { get; private set; } = 0;

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

        protected void OnClickAdd(object sender, EventArgs e)
        {
            try
            {
                Note note = new Note();
                note.Id = 0;
                note.CustomerId = int.Parse(CustomerIdInput.Text);
                note.Text = TextInput.Text;

                if (CustomerRepository.Read(note.CustomerId) != null)
                {
                    NoteRepository.Create(note);
                }
                else
                {
                    Console.WriteLine($"Customer with id {note.CustomerId} not found");
                    Response.Redirect("NotFound.aspx");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Response.Redirect("NotFound.aspx");
            }
            Response.Redirect($"NotesListPage.aspx?CustomerId={CustomerId}");
        }
    }
}