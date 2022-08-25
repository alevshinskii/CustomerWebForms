<%@ Page Title="Add Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerAdd.aspx.cs" Inherits="CustomerManagement.WebForms.CustomerAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    
    <form>
        <div class="form-group">
            <asp:Label Text="First Name" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="FirstNameInput" placeholder="First Name" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Last Name" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="LastNameInput" placeholder="Last Name" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Phone Number" runat="server"></asp:Label>
            <asp:TextBox type="tel" class="form-control" ID="PhoneNumberInput" placeholder="Phone Number" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Email" runat="server"></asp:Label>
            <asp:TextBox type="email" class="form-control" ID="EmailInput" placeholder="Email" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Total Purchases Amount" runat="server"></asp:Label>
            <asp:TextBox type="number" class="form-control" ID="TotalPurchasesAmountInput" placeholder="Total Purchases Amount" runat="server"></asp:TextBox>
        </div>

        <asp:Button type="submit" class="btn btn-primary" OnClick="OnClickCreate" runat="server" Text="Add"></asp:Button>

    </form>

</asp:Content>
