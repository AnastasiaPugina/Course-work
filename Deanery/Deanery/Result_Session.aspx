﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result_Session.aspx.cs" Inherits="Deanery.Result_Session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 130px">
            <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem Text="Главная" Value="Главная"></asp:MenuItem>
                    <asp:MenuItem Text="Работа с таблицами" Value="Работа с таблицами">
                        <asp:MenuItem NavigateUrl="~/Students.aspx" Text="Студенты" Value="Студенты"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Groups.aspx" Text="Группы" Value="Группы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Subjects.aspx" Text="Предметы" Value="Предметы"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Curriculum.aspx" Text="Учебный план" Value="Учебный план"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Работа с процедурами" Value="Работа с процедурами"></asp:MenuItem>
                    <asp:MenuItem Text="Администрирование" Value="Администрирование"></asp:MenuItem>
                    <asp:MenuItem Text="Отчеты" Value="Отчеты"></asp:MenuItem>
                </Items>
            </asp:Menu>
        </div>
        <div style="height: 165px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_stud,Id_sub" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id_stud" HeaderText="Id_stud" ReadOnly="True" SortExpression="Id_stud" />
                    <asp:BoundField DataField="Id_sub" HeaderText="Id_sub" ReadOnly="True" SortExpression="Id_sub" />
                    <asp:BoundField DataField="Date_exam" HeaderText="Date_exam" SortExpression="Date_exam" />
                    <asp:BoundField DataField="Mark" HeaderText="Mark" SortExpression="Mark" />
                    <asp:BoundField DataField="Semester" HeaderText="Semester" SortExpression="Semester" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB_DeaneryConnectionString %>" DeleteCommand="DELETE FROM [Result_Session] WHERE [Id_stud] = @Id_stud AND [Id_sub] = @Id_sub" InsertCommand="INSERT INTO [Result_Session] ([Id_stud], [Id_sub], [Date_exam], [Mark], [Semester]) VALUES (@Id_stud, @Id_sub, @Date_exam, @Mark, @Semester)" SelectCommand="SELECT * FROM [Result_Session]" UpdateCommand="UPDATE [Result_Session] SET [Date_exam] = @Date_exam, [Mark] = @Mark, [Semester] = @Semester WHERE [Id_stud] = @Id_stud AND [Id_sub] = @Id_sub">
                <DeleteParameters>
                    <asp:Parameter Name="Id_stud" Type="Int32" />
                    <asp:Parameter Name="Id_sub" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id_stud" Type="Int32" />
                    <asp:Parameter Name="Id_sub" Type="Int32" />
                    <asp:Parameter Name="Date_exam" Type="DateTime" />
                    <asp:Parameter Name="Mark" Type="Int32" />
                    <asp:Parameter Name="Semester" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Date_exam" Type="DateTime" />
                    <asp:Parameter Name="Mark" Type="Int32" />
                    <asp:Parameter Name="Semester" Type="Int32" />
                    <asp:Parameter Name="Id_stud" Type="Int32" />
                    <asp:Parameter Name="Id_sub" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
