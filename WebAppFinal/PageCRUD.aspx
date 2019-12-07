<%@ Page Title="" Language="C#" MasterPageFile="~/Database.Master" AutoEventWireup="true" CodeBehind="PageCRUD.aspx.cs" Inherits="WebAppFinal.PageCRUD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="body" runat="server">

    

     <section>
        <h1>Page Creation</h1>
    </section>
   <section>
        <h2>Title</h2>
        <asp:TextBox runat="server" ID="page_title"></asp:TextBox>
        
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter a Page Title."
            ControlToValidate="page_title"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Description</h2>
        <asp:TextBox runat="server" ID="page_description"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please describe the content of the page"
            ControlToValidate="page_description"></asp:RequiredFieldValidator>
    </section>
    <section>
        <h2>Content</h2>
        <asp:TextBox TextMode="MultiLine" runat="server" ID="page_body"></asp:TextBox>
        <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Field cannot be left empty"
            ControlToValidate="page_body"></asp:RequiredFieldValidator>
    </section>

    
    
    <section id="confirmbox" runat="server">
    </section>
    
    <span>
        <asp:LinkButton class="button" runat="server" text="Add new Page" href="\PagesList.aspx"/>
        
    </span>
    <span>
        <input type="button" value="Delete" />
    </span>


</asp:Content>
