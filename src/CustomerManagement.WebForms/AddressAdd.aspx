<%@ Page Title="Add Address" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddressAdd.aspx.cs" Inherits="CustomerManagement.WebForms.AddressAdd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Title %></h2>

    <asp:FormView runat="server">
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

        <asp:Button type="submit" class="btn btn-success" OnClick="OnClickAdd" runat="server" Text="Add"></asp:Button>

    </asp:FormView>
</asp:Content>
