<%@ Page Title="Edit Customer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CustomerEdit.aspx.cs" Inherits="CustomerManagement.WebForms.CustomerEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    
    <form>
        <div class="form-group">
            <asp:Label Text="Id" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="IdInput" placeholder="Id" ReadOnly="True" runat="server"></asp:TextBox>

        </div>
        <div class="form-group">
            <asp:Label Text="First Name" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="FirstNameInput" placeholder="First Name" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="FirstNameInput" CssClass="text-danger" ValidationExpression="^.{0,50}$" ErrorMessage="First Name is too long" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="Last Name" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="LastNameInput" placeholder="Last Name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="LastNameInput" CssClass="text-danger" ErrorMessage="Last Name can't be empty" ValidateEmptyText="True" SetFocusOnError="True" runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ControlToValidate="LastNameInput" CssClass="text-danger" ValidationExpression="^.{0,50}$" ErrorMessage="Last Name is too long" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="Phone Number" runat="server"></asp:Label>
            <asp:TextBox type="tel" class="form-control" ID="PhoneNumberInput" placeholder="Phone Number" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="PhoneNumberInput" CssClass="text-danger" ValidationExpression="^\d{0,15}$" ErrorMessage="Phone Number is too long" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="Email" runat="server"></asp:Label>
            <asp:TextBox type="email" class="form-control" ID="EmailInput" placeholder="Email" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="EmailInput" CssClass="text-danger" ValidationExpression="^\S+@\S+\.\S+$" ErrorMessage="Email is not valid" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="Total Purchases Amount" runat="server"></asp:Label>
            <asp:TextBox type="number" class="form-control" ID="TotalPurchasesAmountInput" placeholder="Total Purchases Amount" runat="server"></asp:TextBox>
            <asp:RangeValidator ControlToValidate="TotalPurchasesAmountInput" CssClass="text-danger" MinimumValue="0" MaximumValue="99999999999" ErrorMessage="Total Purchases Amount is not valid" runat="server"></asp:RangeValidator>

        </div>

        <asp:Button type="submit" class="btn btn-success" OnClick="OnClickEdit" runat="server" Text="Edit"></asp:Button>

    </form>
</asp:Content>
