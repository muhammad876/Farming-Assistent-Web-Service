<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterSupplier.aspx.cs" Inherits="_160245.RegisterSupplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br /><br />  <br /><br />
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
               <asp:HyperLink id="hyper" runat="server" >Name:</asp:HyperLink>
               
                <br /> <br /> <asp:TextBox ID="t1" runat="server" class="form-control" Type="text" placeholder="name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter name" ControlToValidate="t1"></asp:RequiredFieldValidator>
                
                 <br /> <br /> <asp:HyperLink id="HyperLink1" runat="server" >Passward:</asp:HyperLink>
               <br /> <br /> <asp:TextBox ID="TextBox1" runat="server" class="form-control" Type="passward" placeholder="passward"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Passward Needs to be entered" ControlToValidate="TextBox1"  ></asp:RequiredFieldValidator>
                
                <br /> <br /><asp:HyperLink id="HyperLink2" runat="server" >Confirm Passward:</asp:HyperLink>
               <br /> <br /> <asp:TextBox ID="TextBox2" runat="server" class="form-control" Type="passward" placeholder="confirm passward"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Passward Not Matched" ControlToValidate="TextBox2" ControlToCompare="TextBox1"></asp:CompareValidator>
                
                <br /> <br /><asp:HyperLink id="HyperLink3" runat="server" >Email:</asp:HyperLink>
              
                <br /> <br /> <asp:TextBox ID="TextBox3" runat="server" class="form-control" Type="email" placeholder="abc@gmail.com"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email Required" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                 <br /> <br/> <asp:Button ID="Button1" runat="server" class="btn btn-success" Text="Submit" OnClick="Button1_Click" />
            </div>
        </div>
    </div>



</asp:Content>
