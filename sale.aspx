<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="sale.aspx.cs" Inherits="sale" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" 
        style="position :absolute; top: 301px; left: 302px;"            runat="server" 
        Text="Model Name :"></asp:Label>
    <asp:TextBox ID="txtsrno"         
        style="position :absolute; top: 109px; left: 418px; width: 51px;"          
        runat="server"  Enabled="False"  ></asp:TextBox>

        <asp:DropDownList ID="ddlno" AutoPostBack="true"
        style="position :absolute; top: 109px; left: 418px; height: 17px; width: 53px;"                 
        runat="server"  
        Visible="False" onselectedindexchanged="ddlno_SelectedIndexChanged">
         <asp:ListItem Value="0">SELECT</asp:ListItem>
    </asp:DropDownList>

        <asp:Label ID="Label11" 
        style="position :absolute; top: 108px; left: 303px;"            runat="server" 
        Text="Sr. No. :"></asp:Label>

        <asp:TextBox ID="txtdate"         
        style="position :absolute; top: 111px; left: 592px; width: 99px;"          
        runat="server"  Enabled="False" ></asp:TextBox>

        <asp:TextBox ID="txtbillno"         
        style="position :absolute; top: 114px; left: 792px; width: 68px;"          
        runat="server"  Enabled="False" ></asp:TextBox>
        <asp:Label ID="Label2" 
        style="position :absolute; top: 114px; left: 722px; width: 76px;"  runat="server" 
        Text="Bill No. :"></asp:Label>




        <asp:Label ID="Label16" 
        style="position :absolute; top: 110px; left: 519px;"            runat="server" 
        Text="Date :"></asp:Label>




        <asp:Label ID="Label10" 
        
        style="position :absolute; top: 379px; left: 267px; width: 141px;"            runat="server" 
        Text="Ex- Showroom Price :"></asp:Label>
    <asp:TextBox ID="txtshowroom" 
        style="position :absolute; top: 376px; left: 424px; width: 113px;"          
        runat="server" Enabled="False" ></asp:TextBox>
        <asp:Label ID="Label12" 
        
        style="position :absolute; top: 415px; left: 305px; width: 92px;"            runat="server" 
        Text="Insurance :"></asp:Label>
    <asp:TextBox ID="txtinsurance" 
        style="position :absolute; top: 414px; left: 427px; width: 113px;"          
        runat="server" Enabled="False" ></asp:TextBox>
        <asp:Label ID="Label13" 
        
        style="position :absolute; top: 452px; left: 299px; width: 119px;"            runat="server" 
        Text="On Road Price :"></asp:Label>
    <asp:TextBox ID="txtonroad" 
        style="position :absolute; top: 451px; left: 429px; width: 113px;"          
        runat="server" Enabled="False" ></asp:TextBox>
         <asp:Label ID="Label9" 
        
        style="position :absolute; top: 149px; left: 296px; width: 71px;"            runat="server" 
        Text="Name :"></asp:Label>

        <asp:TextBox ID="txtcust" 
        style="position :absolute; top: 147px; left: 418px; width: 200px; height: 25px;"          
        runat="server" ></asp:TextBox>

        <asp:Button ID="Button3" 
        style="position :absolute; top: 168px; left: 659px; width: 69px;"              
        runat="server" Text="NEW" onclick="Button3_Click"/>
         <asp:Button ID="Button4" 
        style="position :absolute; top: 171px; left: 760px; width: 69px;"              
        runat="server" Text="OLD" onclick="Button4_Click"/>

    <asp:TextBox ID="txtname" 
        style="position :absolute; top: 300px; left: 421px; "          
        runat="server" ></asp:TextBox>
        <asp:Label ID="Label14" 
        
        style="position :absolute; top: 184px; left: 307px; width: 71px;"            runat="server" 
        Text="Contact :"></asp:Label>
    <asp:TextBox ID="txtcontact" 
        style="position :absolute; top: 184px; left: 417px; width: 200px; height: 25px;"          
        runat="server" ></asp:TextBox>

        <asp:Label ID="Label1" 
        
        
        style="position :absolute; top: 226px; left: 305px; width: 71px;"            runat="server" 
        Text="Address :"></asp:Label>
    <asp:TextBox ID="txtaddress" 
        style="position :absolute; top: 225px; left: 417px; width: 200px; height: 62px;"          
        runat="server" TextMode="MultiLine" ></asp:TextBox>





<asp:Label ID="Label15" 
        
        style="position :absolute; top: 345px; left: 306px; width: 87px;"            runat="server" 
        Text="Color :"></asp:Label>
    <asp:TextBox ID="txtcolor" 
        style="position :absolute; top: 340px; left: 422px; width: 113px; height: 20px;"          
        runat="server" Enabled="False" ></asp:TextBox>

     <asp:Button ID="Button1" 
        style="position :absolute; top: 502px; left: 428px; width: 104px;"              
        runat="smz6er" Text="Sale" onclick=�Button1_Click"" />

    <asp:DropDownList ID="ddlmodel" EutoPostBack="true"
!       style="position :absolute: top: 298px; |eft2 423px; height: -4px; width: 160px;"               ` 
    `  "runat="server" ons�lectedindexchanged="ddlmodel_SelectedIndexCianged" 
        Vi3ible="False">
"$      `<a�p:ListItem Value="0">SELST</as0:ListItem>
    </asp:DropDownList>

`   <asp:Button ID="Button2"    
        3tyle="posi�ion :absolute; top: 501px; left: 610px; width: 950x;"       
 !$     runat="server" Text="Cancel" onclick="Zutton:_Clic&  />  
             
    </asp:Content>