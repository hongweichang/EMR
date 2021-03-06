<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMenuMasterPage.master" AutoEventWireup="true" CodeFile="frmAddDoctor.aspx.cs" Inherits="Admin_frmAddDoctor" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <asp:ScriptManager id="ScriptManager1" runat="server"></asp:ScriptManager>
    <table align="center" style="width: 537px" >
        <tr>
            <td colspan="3" align="center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="text-align: center;" colspan="3">
                <strong><span style="font-size: 16pt; color: red; font-family: Verdana">Doctor Addition</span></strong></td>
        </tr>
        <tr>
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="lblMsg" runat="server" Font-Bold="True" Font-Size="14pt" ForeColor="#0000C0"
                    Width="57px"></asp:Label>
                <br />
                <span style="color: #ff3300"></span></td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <span style="color: #ff3300; font-size: 8pt; font-family: Verdana;"><strong>Please Enter The * Value</strong></span></td>
        </tr>
        <tr style="color: #000000">
            <td align="center" colspan="3">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Doctor Code:</strong></span></td>
            <td width="60%" style="height: 26px">
                <asp:TextBox ID="txtCode" runat="server"></asp:TextBox></td>
            <td style="height: 26px; width: 3px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCode"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Doctor Name:</strong></span></td>
            <td >
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
            <td style="width: 3px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Specialist:</strong></span></td>
            <td >
                <asp:DropDownList ID="ddlSpecialist" runat="server" Width="155px">
                    <asp:ListItem>---Select---</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 3px" >
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px">
                <strong>Available Timing:</strong></td>
            <td>
                From
                <asp:TextBox ID="txtTime1" runat="server" Width="58px"></asp:TextBox><asp:DropDownList
                    ID="ddlTime1" runat="server" Width="61px">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
                To<asp:TextBox ID="txtTime2" runat="server" Width="58px"></asp:TextBox><asp:DropDownList
                    ID="ddlTime2" runat="server" Width="61px">
                    <asp:ListItem>AM</asp:ListItem>
                    <asp:ListItem>PM</asp:ListItem>
                </asp:DropDownList>
                <cc1:MaskedEditExtender ID="MaskedEditExtender1" runat="server" ClearMaskOnLostFocus="False"
                    Mask="99:99" MaskType="Time" TargetControlID="txtTime1">
                </cc1:MaskedEditExtender>
                <cc1:MaskedEditExtender ID="MaskedEditExtender2" runat="server" ClearMaskOnLostFocus="False"
                    Mask="99:99" MaskType="Time" TargetControlID="txtTime2">
                </cc1:MaskedEditExtender>
            </td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px">
                <strong>Contact No.:</strong></td>
            <td>
                <asp:TextBox ID="txtContact" runat="server" Width="147px"></asp:TextBox></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Description:</strong></span></td>
            <td >
                <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox></td>
            <td style="width: 3px" >
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCharges"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px" >
                <span style="font-size: 8pt; font-family: Verdana"><strong>
                Charges:</strong></span></td>
            <td width="60%">
                <asp:TextBox ID="txtCharges" runat="server"></asp:TextBox>
                <cc1:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers"
                    TargetControlID="txtCharges">
                </cc1:FilteredTextBoxExtender>
            </td>
            <td style="width: 3px" >
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px">
                <strong>User Name:</strong></td>
            <td width="60%">
                <asp:TextBox ID="txtUName" runat="server" Width="146px"></asp:TextBox></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr style="color: #000000">
            <td style="width: 89px">
                <strong>Password:</strong></td>
            <td width="60%">
                <asp:TextBox ID="txtPassword" runat="server" Width="146px"></asp:TextBox></td>
            <td style="width: 3px">
            </td>
        </tr>
        <tr style="color: #000000">
            <td colspan="3" style="text-align: center">
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr style="color: #000000">
            <td colspan="2" style="text-align: right">
                <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" Width="76px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" />
                <asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" Width="64px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" /></td>
            <td colspan="1" style="text-align: center; width: 3px;">
            </td>
        </tr>
    </table>
</asp:Content>

