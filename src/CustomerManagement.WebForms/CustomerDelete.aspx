<%@ Page Title="Delete Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDelete.aspx.cs" Inherits="CustomerManagement.WebForms.CustomerDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Are you sure?</h3>
    <form>
        <div class="form-group">
            <label for="IdInput">Id</label>
            <input type="number" class="form-control " id="IdInput" placeholder="Id" disabled>
        </div>
        <div class="form-group">
            <label for="FirstNameInput">First Name</label>
            <input type="text" class="form-control " id="FirstNameInput" placeholder="First Name" disabled>
        </div>
        <div class="form-group">
            <label for="LastNameInput">Last Name</label>
            <input type="text" class="form-control " id="LastNameInput" placeholder="Last Name" disabled>
        </div>
        <div class="form-group">
            <label for="PhoneNumberInput">Phone Number</label>
            <input type="tel" class="form-control " id="PhoneNumberInput" placeholder="Phone Number" disabled>
        </div>
        <div class="form-group">
            <label for="EmailInput">Email</label>
            <input type="email" class="form-control " id="EmailInput" placeholder="Email" disabled>
        </div>
        <div class="form-group">
            <label for="TotalPurchasesAmountInput">Total Purchases Amount</label>
            <input type="number" class="form-control " id="TotalPurchasesAmountInput" placeholder="Total Purchases Amount" value="2938019283" disabled>
        </div>

        <button type="submit" class="btn btn-danger">Delete</button>
    </form>
</asp:Content>
