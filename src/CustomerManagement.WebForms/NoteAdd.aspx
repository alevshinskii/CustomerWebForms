<%@ Page Title="Add Note" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NoteAdd.aspx.cs" Inherits="CustomerManagement.WebForms.NoteAdd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <form>
        <div class="form-group">
            <asp:Label Text="Customer Id" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="CustomerIdInput" placeholder="Customer Id" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label Text="Text" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="TextInput" placeholder="Text" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ControlToValidate="TextInput" CssClass="text-danger" ErrorMessage="Text can't be empty" ValidateEmptyText="True" SetFocusOnError="True" runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ControlToValidate="TextInput" CssClass="text-danger" ValidationExpression="^.{0,255}$" ErrorMessage="Text is too long" runat="server"></asp:RegularExpressionValidator>

        </div>


        <asp:Button type="submit" class="btn btn-success" OnClick="OnClickAdd" runat="server" Text="Add"></asp:Button>

    </form>
</asp:Content>
