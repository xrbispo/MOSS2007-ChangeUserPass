<%@ Assembly Name="MOSS2007-ChangeUserPass, Version=1.0.0.0, Culture=neutral, PublicKeyToken=7e10cd45a9cb5a18" %>
<%--<%@ Assembly Name="Microsoft.Web.CommandUI, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls"
    Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>--%>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=3.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%--<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages"
    Assembly="Microsoft.SharePoint, Version=14.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChangePasswordUserControl.ascx.cs"
    Inherits="MOSS2007_ChangeUserPass.ChangePassword.ChangePasswordUserControl" %>
<div>
    <table>
        <tr>
            <td>
                Username
            </td>
            <td>
                :
            </td>
            <td>
                <asp:Label ID="LblUsername1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                New Password
            </td>
            <td>
                :
            </td>
            <td>
                <asp:TextBox ID="txtNewPass1" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Re-enter PassWord
            </td>
            <td>
                :
            </td>
            <td>
                <asp:TextBox ID="txtNewPass2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Button ID="btnChangePwd" runat="server" Text="Change Password" OnClick="btnChangePwd_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblMsg" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</div>
