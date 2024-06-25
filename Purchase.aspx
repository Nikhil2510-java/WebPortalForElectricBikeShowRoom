<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="BookIssue" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContentPlaceHolder1" Runat="Server">

    <script type="text/javascript">
        function previewFile() 
        {
            var preview = document.querySelector('#<%=Avatar.ClientID %>');
            var file = document.querySelector('#<%=avatarUpload.ClientID %>').files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
    </script>
</head>
    <asp:Label ID="Label3" 
        style="position :absolute; top: 144px; left: 303px;"            runat="server" 
        Text="Model Name :"></asp:Label>
    <asp:TextBox ID="txtbillno"         
        style="position :absolute; top: 109px; left: 418px; width: 51px;"          
        runat="server"  Enabled="False" ></asp:TextBox>
        <asp:Label ID="Label11" 
        style="position :absolute; top: 108px; left: 303px;"            runat="server" 
        Text="Bill No. :"></asp:Label>

        <asp:TextBox ID="txtdate"         
        style="position :absolute; top: 111px; left: 592px; width: 121px;"          
        runat="server"  Enabled="False" ></asp:TextBox>
        <asp:Label ID="Label16" 
        style="position :absolute; top: 110px; left: 519px;"            runat="server" 
        Text="Bill Date :"></asp:Label>




    <asp:TextBox ID="txtmodel"         
        style="position :absolute; top: 146px; left: 418px; width: 173px;"          
        runat="server"></asp:TextBox>

        <asp:Label ID="Label4" 
        style="position :absolute; top: 179px; left: 310px;"            runat="server" 
        Text="Top Speed :"></asp:Label>
    <asp:TextBox ID="txtspeed" 
        
        style="position :absolute; top: 178px; left: 419px; width: 128px; height: 23px;"          
        runat="server" ></asp:TextBox>


        <asp:Label ID="Label1" 
        style="position :absolute; top: 227px; left: 283px;"            runat="server" 
        Text="Various Functions :"></asp:Label>
    <asp:TextBox ID="txtfunction" 
        style="position :absolute; top: 215px; left: 418px; width: 225px; height: 61px;"          
        runat="server" TextMode="MultiLine" ></asp:TextBox>

           <asp:FileUpload ID="avatarUpload" type="file" name="file" onchange="previewFile()"
        style="position :absolute; top: 471px; left: 428px;"       
        runat="server" />

           <asp:Label ID="Label7" 
        style="position :absolute; top: 286px; left: 298px;"            runat="server" 
        Text="Battery :"></asp:Label>

        <asp:TextBox ID="txtbattery" 
        style="position :absolute; top: 288px; left: 416px;"       runat="server"></asp:TextBox>
 

          <asp:Label ID="Label8" 
        style="position :absolute; top: 327px; left: 270px; height: 21px; width: 113px;"            runat="server" 
        Text="Usable Capacity :"></asp:Label>
    <asp:TextBox ID="txtcapacity" 
        style="position :absolute; top: 325px; left: 419px; width: 121px;"          
        runat="server"  ></asp:TextBox>
        <asp:Label ID="Label6" 
        style="position :absolute; top: 359px; left: 287px;"            runat="server" 
        Text="Usable Voltage :"></asp:Label>
    <asp:TextBox ID="txtvoltage" 
        style="position :absolute; top: 360px; left: 421px; width: 113px;"          
        runat="server" ></asp:TextBox>

        <asp:Label ID="Label10" 
        
        
        style="position :absolute; top: 301px; left: 629px; width: 141px;"            runat="server" 
        Text="Ex- Showroom Price :"></asp:Label>
    <asp:TextBox ID="txtshowroom" 
        style="position :absolute; top: 300px; left: 780px; width: 113px;"          
        runat="server" ></asp:TextBox>


        <asp:Label ID="Label12" 
        
        
        
        style="position :absolute; top: 339px; left: 629px; width: 92px;"            runat="server" 
        Text="Insurance :"></asp:Label>
    <asp:TextBox ID="txtinsurance" 
        style="position :absolute; top: 338px; left: 780px; width: 113px;"          
        runat="server" ontextchanged="txtinsurance_TextChanged" ></asp:TextBox>

        <asp:Label ID="Label13" 
        
        
        
        style="position :absolute; top: 374px; left: 629px; width: 119px;"            runat="server" 
        Text="On Road Price :"></asp:Label>
    <asp:TextBox ID="txtonroad" 
        style="position :absolute; top: 374px; left: 780px; width: 113px;"          
        runat="server" ></asp:TextBox>

<asp:Label ID="Label14" 
        
        
        
        
        style="position :absolute; top: 403px; left: 643px; width: 87px;"            runat="server" 
        Text="Stock :"></asp:Label>
    <asp:TextBox ID="txtstock" 
        style="position :absolute; top: 408px; left: 780px; width: 113px;"          
        runat="server" ></asp:TextBox>

<asp:Label ID="Label15" 
        style="position :absolute; top: 439px; left: 643px; width: 87px;"            runat="server" 
        Text="Color :"></asp:Label>
    <asp:TextBox ID="txtcolor" 
        style="position :absolute; top: 445px; left: 780px; width: 113px;"          
        runat="server" ></asp:TextBox>

        <asp:Label ID="Label5" 
        style="position :absolute; top: 396px; left: 285px;"            runat="server" 
        Text="Charging Duration :"></asp:Label>
    <asp:TextBox ID="txtcharging" 
        style="position :absolute; top: 397px; left: 425px; width: 146px;"          
        runat="server" ></asp:TextBox>

         <asp:Label ID="Label2" 
        style="position :absolute; top: 437px; left: 283px;"            runat="server" 
        Text="Head &amp; Tail Light"></asp:Label>
    <asp:TextBox ID="txtlight" 
        style="position :absolute; top: 436px; left: 427px; width: 146px;"          
        runat="server" ></asp:TextBox>
<asp:Label ID="Label9" 
        style="position :absolute; top: 473px; left: 277px;"            runat="server" 
        Text="Photo :"></asp:Label>
     <asp:Button ID="Button1" 
        style="position :absolute; top: 504px; left: 389px; width: 104px;"              
        runat="server" Text="Purchase" onclick="Button1_Click"  />

    <asp:Button ID="Button2"    
        style="position :absolute; top: 501px; left: 567px; width: 95px;"       
        runat="server" Text="Cancel" onclick="Button2_Click"  />  
             
    <asp:Image ID="Avatar" 
        style="position :absolute; top: 115px; left: 724px; height: 171px; width: 166px;"   
        runat="server" />
                  
</asp:Content>


