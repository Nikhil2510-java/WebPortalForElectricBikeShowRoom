<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewstock.aspx.cs" Inherits="viewstock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Model], [Showroom], [Insurance], [Onroad], [Stock], [Color] FROM [Details]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" 
    style="position :absolute; top: 216px; left: 450px;"    runat="server" 
    AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Showroom" HeaderText="Showroom" 
                SortExpression="Showroom" />
            <asp:BoundField DataField="Insurance" HeaderText="Insurance" 
                SortExpression="Insurance" />
            <asp:BoundField DataField="Onroad" HeaderText="Onroad" 
                SortExpression="Onroad" />
            <asp:BoundField DataField="Stock" HeaderText="Stock" SortExpression="Stock" />
            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
        </Columns>
    </asp:GridView>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

