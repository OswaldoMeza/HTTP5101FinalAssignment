<%@ Page Title="Pages" Language="C#" MasterPageFile="~/Database.Master" AutoEventWireup="true" CodeBehind="PagesList.aspx.cs" Inherits="WebAppFinal.PagesList" %>

<asp:Content ID="pages_list" ContentPlaceHolderID="body" runat="server">
        <h1>Pages</h1>
    <div id="page_nav">
        <asp:label for="page_search" runat="server"></asp:label>
        <asp:TextBox ID="page_search" runat="server"></asp:TextBox>
        <asp:Button runat="server" text="Search"/>
        <div id="sql_debugger" runat="server"></div>        
    </div>
    <<div class="edit-buttons">
        <asp:LinkButton class="button" runat="server" text="Add new Page" href="\PageCRUD.aspx"/>
        <asp:LinkButton class="button" runat="server" text="Update Page Information" href="\PageCRUD.aspx"/>   
    </div> 
    <div class="page_table" runat="server">
        <div class="listitem">            
            <div class="col2">Page</div>
            <div class="col2last">Description</div>
        </div>
        <div id="pages_result" runat="server">

        </div>
    </div>
</asp:Content>
