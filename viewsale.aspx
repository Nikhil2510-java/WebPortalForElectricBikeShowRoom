<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewsale.aspx.cs" Inherits="viewsale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Sale]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" 
    style="position :absolute; top: 204px; left: 262px; width: 560px;"     
    runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="BillNo" HeaderText="BillNo" 
                SortExpression="BillNo" />
            <asp:BoundField DataField="Bdate" HeaderText="Bill Date" 
                SortExpression="Bdate" />
            <asp:BoundField DataField="CustName" HeaderText="CustName" 
                SortExpression="CustName" />
            <asp:BoundField DataField="Contact" HeaderText="Contact" 
                SortExpression="Contact" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
            <asp:BoundField DataField="Showroom" HeaderText="Showroom" 
                SortExpression="Showroom" />
            <asp:BoundField DataField="Insurance" HeaderText="Insurance" 
                SortExpression="Insurance" />
            <asp:BoundField DataField="Onroad" HeaderText="Final Price" 
                SortExpression="Onroad" />
        </Columns>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

