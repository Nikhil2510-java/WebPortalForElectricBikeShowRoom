<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewincome.aspx.cs" Inherits="viewincome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1"    runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [BillNo], [Bdate], [CustName], [Contact], [Onroad], [Model] FROM [Sale]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" 
        style="position :absolute; top: 248px; left: 447px; width: 371px;"    
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
            <asp:BoundField DataField="Onroad" HeaderText="Final Price" 
                SortExpression="Onroad" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        </Columns>
    </asp:GridView>
               <asp:Label ID="Label5" runat="server" 
                    style="position:absolute; top: 179px; left: 527px;"    Text="Total  :" 
                    Width="92px"></asp:Label>
            <asp:TextBox ID="txttotal"  style="position :absolute; top: 176px; left: 656px; width: 90px; height: 23px;" 
                    runat="server" Enabled="False"></asp:TextBox>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

