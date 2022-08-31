<%@ Page Title="Addresses List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddressesListPage.aspx.cs" Inherits="CustomerManagement.WebForms.AddressesListPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <a href="AddressAdd" class="m">Add new Address</a>
    <table class="table table-hover table-striped">
        <thead>
        <tr>
            <td>AddressId</td>
            <td>CustomerId</td>
            <td>AddressLine</td>
            <td>AddressLine2</td>
            <td>AddressType</td>
            <td>City</td>
            <td>Country</td>
            <td>PostalCode</td>
            <td>State</td>
            <td></td>
            <td></td>
        </tr>
        </thead>
        <% foreach (var address in AddressesList)
           { %>

            <tr>
                <td>
                    <%= address.AddressId %>
                </td>
                <td>
                    <%= address.CustomerId %>
                </td>
                <td>
                    <%= address.AddressLine %>
                </td>
                <td>
                    <%= address.AddressLine2 %>
                </td>
                <td>
                    <%= address.AddressType %>
                </td>
                <td>
                    <%= address.City %>
                </td>
                <td>
                    <%= address.Country %>
                </td>
                <td>
                    <%= address.PostalCode %>
                </td>
                <td>
                    <%= address.State %>
                </td>
                <td>
                    <a href="CustomerEdit?CustomerId=<%=address.AddressId %>">Edit</a>
                </td>
                <td>
                    <a href="CustomerDelete?CustomerId=<%=address.AddressId %>">Delete</a>
                </td>
            </tr>
        <%
           } %>
    </table>
</asp:Content>
