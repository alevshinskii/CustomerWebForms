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
    public partial class NoteEdit : Page
    {
        public IRepository<Note> NoteRepository { get; } = new NoteRepository();
        public int NoteId { get; private set; } = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetNoteIdFromQuery();

            if (!IsPostBack)
            {
                LoadNote();
            }
        }
        public void GetNoteIdFromQuery()
        {
            var id = Request.QueryString["Id"];
            if (int.TryParse(id,out int parsedId))
            {
                if (NoteRepository.Read(parsedId) != null)
                {
                    NoteId = parsedId;
                    return;
                }
            }

            Response.Redirect("NotFound.aspx");

        }

        public void LoadNote()
        {
            Note note = NoteRepository.Read(NoteId);
            if (note != null)
            {

                IdInput.Text = note.Id.ToString();
                CustomerIdInput.Text = note.CustomerId.ToString();
                TextInput.Text = note.Text;
            }
            else
            {
                Response.Redirect("NotFound.aspx");
            }
        }

        protected void OnClickEdit(object sender, EventArgs e)
        {
            try
            {
                Note note = new Note();
                note.Id = int.Parse(IdInput.Text);
                note.CustomerId = int.Parse(CustomerIdInput.Text);
                note.Text = TextInput.Text;

                if (!NoteRepository.Update(note))
                {
                    Response.Redirect("NotFound.aspx");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
                Response.Redirect("NotFound.aspx");
            }
            Response.Redirect($"NotesListPage.aspx?CustomerId={CustomerIdInput.Text}");
        }
    }
}