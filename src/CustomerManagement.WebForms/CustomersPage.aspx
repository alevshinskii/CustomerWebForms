<%@ Page Title="Customers List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomersPage.aspx.cs" Inherits="CustomerManagement.WebForms.CustomersPage" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <a href="CustomerAdd" class="m">Add new Customer</a>
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <td>
                Id
            </td>
            <td>
                FirstName
            </td>
            <td>
                LastName
            </td>
            <td>
                Email
            </td>
            <td>
                PhoneNumber
            </td>
            <td>
                TotalPurchasesAmount
            </td>
            <td></td>
            <td></td>
        </tr>
        </thead>
        <% foreach (var customer in CustomersList)
           { %>

            <tr>
                <td>
                    <%= customer.Id %>
                </td>
                <td>
                    <%= customer.FirstName %>
                </td>
                <td>
                    <%= customer.LastName %>
                </td>
                <td>
                    <%= customer.Email %>
                </td>
                <td>
                    <%= customer.PhoneNumber %>
                </td>
                <td>
                    <%= customer.TotalPurchasesAmount %>
                </td>
                <td>
                    <a href="CustomerEdit?CustomerId=<%=customer.Id %>">Edit</a>
                </td>
                <td>
                    <a href="CustomerDelete?CustomerId=<%=customer.Id %>">Delete</a>
                </td>
            </tr>
        <%
            } %>
    </table>
</asp:Content>