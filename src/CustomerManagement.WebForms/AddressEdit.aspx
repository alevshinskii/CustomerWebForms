<%@ Page Title="Edit Address" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddressEdit.aspx.cs" Inherits="CustomerManagement.WebForms.AddressEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h2><%: Title %></h2>
    
    <form>
        <div class="form-group">
            <asp:Label Text="Id" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="IdInput" placeholder="Id" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Customer Id" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="CustomerIdInput" placeholder="Customer Id" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Address Line" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="AddressLineInput" placeholder="Address Line" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="AddressLineInput" CssClass="text-danger" ErrorMessage="Address Line can't be empty" ValidateEmptyText="True"   SetFocusOnError="True" runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ControlToValidate="AddressLineInput" CssClass="text-danger" ValidationExpression="^.{0,100}$" ErrorMessage="Address Line is too long" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="Address Line 2" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="AddressLine2Input" placeholder="Address Line 2" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="AddressLine2Input" CssClass="text-danger" ValidationExpression="^.{0,100}$" ErrorMessage="Address Line is too long" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="Address Type" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="AddressTypeInput" placeholder="Address Type" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="AddressTypeInput" CssClass="text-danger" ValidationExpression="^Shipping|Billing$" ErrorMessage="Address Line can be 'Shipping' or 'Billing'" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="City" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="CityInput" placeholder="City" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="CityInput" CssClass="text-danger" ValidationExpression="^.{0,50}$" ErrorMessage="City is too long" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="Postal Code" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="PostalCodeInput" placeholder="Postal Code" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="PostalCodeInput" CssClass="text-danger" ValidationExpression="^\d{0,6}$" ErrorMessage="Postal Code is too long" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="State" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="StateInput" placeholder="State" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="StateInput" CssClass="text-danger" ValidationExpression="^.{0,20}$" ErrorMessage="State is too long" runat="server"></asp:RegularExpressionValidator>

        </div>
        <div class="form-group">
            <asp:Label Text="Country" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="CountryInput" placeholder="Country" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ControlToValidate="CountryInput" CssClass="text-danger" ValidationExpression="^United States|Canada$" ErrorMessage="Country can be 'United States' or 'Canada'" runat="server"></asp:RegularExpressionValidator>

        </div>

        <asp:Button type="submit" class="btn btn-success" OnClick="OnClickEdit" runat="server" Text="Edit"></asp:Button>

    </form>
</asp:Content>
