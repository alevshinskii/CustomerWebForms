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
        </div>
        <div class="form-group">
            <asp:Label Text="Address Line 2" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="AddressLine2Input" placeholder="Address Line 2" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Address Type" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="AddressTypeInput" placeholder="Address Type" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="City" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="CityInput" placeholder="City" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Postal Code" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="PostalCodeInput" placeholder="Postal Code" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="State" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="StateInput" placeholder="State" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Country" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="CountryInput" placeholder="Country" runat="server"></asp:TextBox>
        </div>

        <asp:Button type="submit" class="btn btn-success" OnClick="OnClickEdit" runat="server" Text="Edit"></asp:Button>

    </form>
</asp:Content>
