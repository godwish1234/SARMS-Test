<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="SARMS._default" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="HeaderContent1" runat="server">
    <div id="StaticTitle">
        <h1>Student At Risk Monitoring System</h1>
    </div>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent1" runat="server">

    <form id="theForm" runat="server">
        <div class="row">
            <label for="name">Admin</label>
            <input type="radio" name="choose" id="Admin"  onclick="changeType()"/>
            <label for="name">Lecture</label>
            <input type="radio" name="choose" id="Lecture" onclick="changeType()"/>
            <label for="name">Student</label>
            <input type="radio" name="choose" id="Student" onclick="changeType()"/>
            <br> <br>
        </div>

        <div class="row">
            <p id="textfield"></p>
        </div>

        <div class="row">
            <label for="name">Username:</label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox> <br> <br>
        </div>
 
        <div class="row">
            <label for="address">Password:</label>
            <asp:TextBox ID="password" runat="server"></asp:TextBox> <br> <br>
        </div>

        <div class="row">
            <asp:Button ID="submit" runat="server"  Text="Login" OnClick="submit_Click1" />
        </div>
    </form>

</asp:Content>