<%@ Page Title="Delete Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerDelete.aspx.cs" Inherits="CustomerManagement.WebForms.CustomerDelete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Are you sure?</h3>
    <form>
        <div class="form-group">
            <asp:Label Text="Id" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="IdInput" placeholder="Id" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="First Name" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="FirstNameInput" placeholder="First Name" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Last Name" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="LastNameInput" placeholder="Last Name" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Phone Number" runat="server"></asp:Label>
            <asp:TextBox type="tel" class="form-control" ID="PhoneNumberInput" placeholder="Phone Number" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Email" runat="server"></asp:Label>
            <asp:TextBox type="email" class="form-control" ID="EmailInput" placeholder="Email" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Total Purchases Amount" runat="server"></asp:Label>
            <asp:TextBox type="number" class="form-control" ID="TotalPurchasesAmountInput" placeholder="Total Purchases Amount" ReadOnly="True" runat="server"></asp:TextBox>
        </div>

        <asp:Button type="submit" class="btn btn-danger" OnClick="OnClickDelete" runat="server" Text="Delete"></asp:Button>

    </form>
</asp:Content>
