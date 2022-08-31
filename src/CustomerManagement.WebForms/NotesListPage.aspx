<%@ Page Title="Notes List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NotesListPage.aspx.cs" Inherits="CustomerManagement.WebForms.NotesListPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <a href="NoteAdd?CustomerId=<%=CustomerId %>" class="m">Add new Note</a>
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <td>Id</td>
            <td>CustomerId</td>
            <td>Text</td>

            <td></td>
            <td></td>
        </tr>
        </thead>
        <% foreach (var note in NotesList)
           { %>

            <tr>
                <td>
                    <%= note.Id %>
                </td>
                <td>
                    <%= note.CustomerId %>
                </td>
                <td>
                    <%= note.Text %>
                </td>

                <td>
                    <a href="NoteEdit?Id=<%=note.Id %>">Edit</a>
                </td>
                <td>
                    <a href="NoteDelete?Id=<%=note.Id %>">Delete</a>
                </td>
            </tr>
        <%
           } %>
    </table>
</asp:Content>
