﻿<%@ Page Title="Add Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerAdd.aspx.cs" Inherits="CustomerManagement.WebForms.CustomerAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    
    <form>
        <div class="form-group">
            <label for="FirstNameInput">First Name</label>
            <input type="text" class="form-control" id="FirstNameInput" placeholder="First Name">
        </div>
        <div class="form-group">
            <label for="LastNameInput">Last Name</label>
            <input type="text" class="form-control" id="LastNameInput" placeholder="Last Name">
        </div>
        <div class="form-group">
            <label for="PhoneNumberInput">Phone Number</label>
            <input type="tel" class="form-control" id="PhoneNumberInput" placeholder="Phone Number">
        </div>
        <div class="form-group">
            <label for="EmailInput">Email</label>
            <input type="email" class="form-control" id="EmailInput" placeholder="Email">
        </div>
        <div class="form-group">
            <label for="TotalPurchasesAmountInput">Total Purchases Amount</label>
            <input type="number" class="form-control" id="TotalPurchasesAmountInput" placeholder="Total Purchases Amount">
        </div>

        <button type="submit" class="btn btn-primary">Add</button>
    </form>

</asp:Content>
