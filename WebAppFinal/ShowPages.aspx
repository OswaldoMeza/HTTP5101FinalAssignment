<%@ Page Title="" Language="C#" MasterPageFile="~/Database.Master" AutoEventWireup="true" CodeBehind="ShowPages.aspx.cs" Inherits="WebAppFinal.ShowPages" %>

<asp:Content ID="pages_view" ContentPlaceHolderID="body" runat="server">

     <div id="page_info" runat="server">

        <h2>Details for <span id="pageTitle" runat="server"></span></h2>
        Body: <span id="pageBody" runat="server"></span><br />
    </div>
    <span>
        <a href="PageCRUD.aspx"><input type="button" value="Update" /></a>
        
    </span>
    <span>
        <a href="PageCRUD.aspx"><input type="button" value="Delete" /></a>
    </span>
</asp:Content>
