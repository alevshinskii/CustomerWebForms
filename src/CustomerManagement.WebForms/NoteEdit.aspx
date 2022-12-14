<%@ Page Title="Edit Note" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NoteEdit.aspx.cs" Inherits="CustomerManagement.WebForms.NoteEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>

    <form>
        
        <div class="form-group">
            <asp:Label Text="Id" runat="server"></asp:Label>
            <asp:TextBox type="text" class="form-control" ID="IdInput" placeholder="Customer Id" ReadOnly="True" runat="server"></asp:TextBox>
        </div>
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


        <asp:Button type="submit" class="btn btn-success" OnClick="OnClickEdit" runat="server" Text="Edit"></asp:Button>

    </form>
</asp:Content>
