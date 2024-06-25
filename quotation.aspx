<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="quotation.aspx.cs" Inherits="quotation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label3" 
        style="position :absolute; top: 144px; left: 303px;"            runat="server" 
        Text="Model Name :"></asp:Label>
    <asp:TextBox ID="txtbillno"         
        style="position :absolute; top: 109px; left: 418px; width: 51px;"          
        runat="server"  Enabled="False" ></asp:TextBox>
        <asp:Label ID="Label11" 
        style="position :absolute; top: 108px; left: 303px;"            runat="server" 
        Text="Sr. No. :"></asp:Label>

        <asp:TextBox ID="txtdate"         
        style="position :absolute; top: 111px; left: 592px; width: 121px;"          
        runat="server"  Enabled="False" ></asp:TextBox>
        <asp:Label ID="Label16" 
        style="position :absolute; top: 110px; left: 519px;"            runat="server" 
        Text="Date :"></asp:Label>




        <asp:Label ID="Label4" 
        style="position :absolute; top: 179px; left: 310px;"            runat="server" 
        Text="Top Speed :"></asp:Label>
    <asp:TextBox ID="txtspeed" 
        
        style="position :absolute; top: 178px; left: 419px; width: 128px; height: 23px;"          
        runat="server" Enabled="False" ></asp:TextBox>


        <asp:Label ID="Label1" 
        style="position :absolute; top: 227px; left: 283px;"            runat="server" 
        Text="Various Functions :"></asp:Label>
    <asp:TextBox ID="txtfunction" 
        style="position :absolute; top: 215px; left: 418px; width: 225px; height: 61px;"          
        runat="server" Enabled="False" ></asp:TextBox>

           <asp:Label ID="Label7" 
        style="position :absolute; top: 286px; left: 298px;"            runat="server" 
        Text="Battery :"></asp:Label>

        <asp:TextBox ID="txtbattery" 
        style="position :absolute; top: 288px; left: 416px;"       runat="server" 
        Enabled="False"></asp:TextBox>
 

          <asp:Label ID="Label8" 
        style="position :absolute; top: 327px; left: 270px; height: 21px; width: 113px;"            runat="server" 
        Text="Usable Capacity :"></asp:Label>
    <asp:TextBox ID="txtcapacity" 
        style="position :absolute; top: 325px; left: 419px; width: 121px;"          
        runat="server" Enabled="False"  ></asp:TextBox>
        <asp:Label ID="Label6" 
        style="position :absolute; top: 359px; left: 287px;"            runat="server" 
        Text="Usable Voltage :"></asp:Label>
    <asp:TextBox ID="txtvoltage" 
        style="position :absolute; top: 360px; left: 421px; width: 113px;"          
        runat="server" Enabled="False" ></asp:TextBox>

        <asp:Label ID="Label10" 
        style="position :absolute; top: 301px; left: 629px; width: 141px;"            runat="server" 
        Text="Ex- Showroom Price :"></asp:Label>
    <asp:TextBox ID="txtshowroom" 
        style="position :absolute; top: 300px; left: 780px; width: 113px;"          
        runat="server" Enabled="False" ></asp:TextBox>
        <asp:Label ID="Label12" 
        style="position :absolute; top: 339px; left: 629px; width: 92px;"            runat="server" 
        Text="Insurance :"></asp:Label>
    <asp:TextBox ID="txtinsurance" 
        style="position :absolute; top: 338px; left: 780px; width: 113px;"          
        runat="server" Enabled="False" ></asp:TextBox>
        <asp:Label ID="Label13" 
        style="position :absolute; top: 374px; left: 629px; width: 119px;"            runat="server" 
        Text="On Road Price :"></asp:Label>
    <asp:TextBox ID="txtonroad" 
        style="position :absolute; top: 374px; left: 780px; width: 113px;"          
        runat="server" Enabled="False" ></asp:TextBox>
         <asp:Label ID="Label9" 
        style="position :absolute; top: 417px; left: 598px; width: 71px;"            runat="server" 
        Text="Name :"></asp:Label>
    <asp:TextBox ID="txtname" 
        style="position :absolute; top: 415px; left: 688px; width: 200px;"          
        runat="server" ></asp:TextBox>
        <asp:Label ID="Label14" 
        style="position :absolute; top: 461px; left: 598px; width: 71px;"            runat="server" 
        Text="Contact :"></asp:Label>
    <asp:TextBox ID="txtcontact" 
        style="position :absolute; top: 460px; left: 688px; width: 200px;"          
        runat="server" ></asp:TextBox>
<asp:Label ID="Label15" 
        style="position :absolute; top: 475px; left: 286px; width: 87px;"            runat="server" 
        Text="Color :"></asp:Label>
    <asp:TextBox ID="txtcolor" 
        style="position :absolute; top: 471px; left: 428px; width: 113px; height: 20px;"          
        runat="server" Enabled="False" ></asp:TextBox>

        <asp:Label ID="Label5" 
        style="position :absolute; top: 396px; left: 285px;"            runat="server" 
        Text="Charging Duration :"></asp:Label>
    <asp:TextBox ID="txtcharging" 
        style="position :absolute; top: 397px; left: 425px; width: 146px;"          
        runat="server" Enabled="False" ></asp:TextBox>

         <asp:Label ID="Label2" 
        style="position :absolute; top: 437px; left: 283px;"            runat="server" 
        Text="Head &amp; Tail Light"></asp:Label>
    <asp:TextBox ID="txtlight" 
        style="position :absolute; top: 436px; left: 427px; width: 146px;"          
        runat="server" Enabled="False" ></asp:TextBox>
     <asp:Button ID="Button1" 
        style="position :absolute; top: 502px; left: 428px; width: 104px;"              
        runat="server" Text="Save" onclick="Button1_Click"  />

    <asp:DropDownList ID="ddlmodel" AutoPostBack="true"
        style="position :absolute; top: 146px; left: 418px; height: -4px; width: 160px;"                 
        runat="server" onselectedindexchanged="ddlmodel_SelectedIndexChanged">
         <asp:ListItem Value="0">SELECT</asp:ListItem>
    </asp:DropDownList>

    <asp:Button ID="Button2"    
        style="position :absolute; top: 501px; left: 610px; width: 95px;"       
        runat="server" Text="Cancel" onclick="Button2_Click"  />  
             
    <asp:Image ID="Image1" 
        style="position :absolute; top: 115px; left: 724px; height: 171px; width: 166px;"   
        runat="server" />
                  
</asp:Content>
