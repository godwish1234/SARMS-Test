<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LecturerHP.aspx.cs" Inherits="SARMS.webpages.LectureHome.LecturerHP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeaderContent1" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="SideBarContent1" runat="server">

    <div class="sideBar">
        <a href="schedule.aspx">Schedule</a>
        <a href="students.aspx">Students</a>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="MainContent1" runat="server">
    <h1>Lecturer Page</h1>
</asp:Content>
