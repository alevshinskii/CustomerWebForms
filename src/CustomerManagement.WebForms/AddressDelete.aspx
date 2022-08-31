<%@ Page Title="Delete Address" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddressDelete.aspx.cs" Inherits="CustomerManagement.WebForms.AddressDelete" %>
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
            <asp:TextBox type="text" class="form-control" ID="AddressLineInput" placeholder="Address Line" ReadOnly="True" runat="server" ></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Address Line 2" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="AddressLine2Input" placeholder="Address Line 2" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Address Type" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="AddressTypeInput" placeholder="Address Type" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="City" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="CityInput" placeholder="City" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Postal Code" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="PostalCodeInput" placeholder="Postal Code" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="State" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="StateInput" placeholder="State" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Country" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="CountryInput" placeholder="Country" ReadOnly="True" runat="server"></asp:TextBox>
        </div>

        <asp:Button type="submit" class="btn btn-danger" OnClick="OnClickDelete"  runat="server" Text="Delete"></asp:Button>

    </form>
</asp:Content>
