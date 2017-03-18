<%@ Page Language="C#" AutoEventWireup="true" CodeFile="imp.aspx.cs" Inherits="imp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Página sin título</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
        }
        .style4
        {
            width: 276px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ID" 
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Paciente:
            <asp:TextBox ID="PacienteTextBox" runat="server" 
                Text='<%# Bind("Paciente") %>' />
            <br />
            FechaEvento:
            <asp:TextBox ID="FechaEventoTextBox" runat="server" 
                Text='<%# Bind("FechaEvento") %>' />
            <br />
            Comentario1:
            <asp:TextBox ID="Comentario1TextBox" runat="server" 
                Text='<%# Bind("Comentario1") %>' />
            <br />
            Comentario2:
            <asp:TextBox ID="Comentario2TextBox" runat="server" 
                Text='<%# Bind("Comentario2") %>' />
            <br />
            Comentario3:
            <asp:TextBox ID="Comentario3TextBox" runat="server" 
                Text='<%# Bind("Comentario3") %>' />
            <br />
            Comentario4:
            <asp:TextBox ID="Comentario4TextBox" runat="server" 
                Text='<%# Bind("Comentario4") %>' />
            <br />
            CIE10:
            <asp:TextBox ID="CIE10TextBox" runat="server" Text='<%# Bind("CIE10") %>' />
            <br />
            Nombre:
            <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
            <br />
            medico:
            <asp:TextBox ID="medicoTextBox" runat="server" Text='<%# Bind("medico") %>' />
            <br />
            ID:
            <asp:Label ID="IDLabel1" runat="server" Text='<%# Eval("ID") %>' />
            <br />
            Telefono:
            <asp:TextBox ID="TelefonoTextBox" runat="server" 
                Text='<%# Bind("Telefono") %>' />
            <br />
            Edad:
            <asp:TextBox ID="EdadTextBox" runat="server" Text='<%# Bind("Edad") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                CommandName="Update" Text="Actualizar" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Paciente:
            <asp:TextBox ID="PacienteTextBox" runat="server" 
                Text='<%# Bind("Paciente") %>' />
            <br />
            FechaEvento:
            <asp:TextBox ID="FechaEventoTextBox" runat="server" 
                Text='<%# Bind("FechaEvento") %>' />
            <br />
            Comentario1:
            <asp:TextBox ID="Comentario1TextBox" runat="server" 
                Text='<%# Bind("Comentario1") %>' />
            <br />
            Comentario2:
            <asp:TextBox ID="Comentario2TextBox" runat="server" 
                Text='<%# Bind("Comentario2") %>' />
            <br />
            Comentario3:
            <asp:TextBox ID="Comentario3TextBox" runat="server" 
                Text='<%# Bind("Comentario3") %>' />
            <br />
            Comentario4:
            <asp:TextBox ID="Comentario4TextBox" runat="server" 
                Text='<%# Bind("Comentario4") %>' />
            <br />
            CIE10:
            <asp:TextBox ID="CIE10TextBox" runat="server" Text='<%# Bind("CIE10") %>' />
            <br />
            Nombre:
            <asp:TextBox ID="NombreTextBox" runat="server" Text='<%# Bind("Nombre") %>' />
            <br />
            medico:
            <asp:TextBox ID="medicoTextBox" runat="server" Text='<%# Bind("medico") %>' />
            <br />
            Telefono:
            <asp:TextBox ID="TelefonoTextBox" runat="server" 
                Text='<%# Bind("Telefono") %>' />
            <br />
            Edad:
            <asp:TextBox ID="EdadTextBox" runat="server" Text='<%# Bind("Edad") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                CommandName="Insert" Text="Insertar" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
        </InsertItemTemplate>
        <ItemTemplate>
            <table align="left" class="style1">
                <tr>
                    <td class="style2" colspan="2">
                        <table class="style1">
                            <tr>
                                <td class="style4">
                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logo.JPG" />
                                </td>
                                <td>
                                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" 
                                        Text='<%# Eval("Nombre") %>'></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="Silver" class="style2" colspan="2" valign="bottom">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        Paciente:</td>
                    <td>
                        <asp:Label ID="PacienteLabel" runat="server" Text='<%# Bind("Paciente") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Edad:</td>
                    <td>
                        <asp:Label ID="EdadLabel" runat="server" Text='<%# Bind("Edad") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Telefono:</td>
                    <td>
                        <asp:Label ID="TelefonoLabel" runat="server" Text='<%# Bind("Telefono") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Cie10</td>
                    <td>
                        <asp:Label ID="CIE10Label" runat="server" Text='<%# Bind("CIE10") %>' />
                    </td>
                </tr>
                <tr>
                    <td bgcolor="Silver" class="style3" colspan="2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="FechaEventoLabel" runat="server" 
                            Text='<%# Bind("FechaEvento") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Comentario1Label" runat="server" 
                            Text='<%# Bind("Comentario1") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Comentario2Label" runat="server" 
                            Text='<%# Bind("Comentario2") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Comentario3Label" runat="server" 
                            Text='<%# Bind("Comentario3") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="Comentario4Label" runat="server" 
                            Text='<%# Bind("Comentario4") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
                        &nbsp;</td>
                    <td>
                        <asp:Label ID="medicoLabel" runat="server" Text='<%# Bind("medico") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style2" colspan="2">
                        <asp:Label ID="Label2" runat="server" ForeColor="#0066CC" 
                            Text="Medicos  Especialistas en Alergologia Clinica    "></asp:Label>
                        &nbsp;<asp:Label ID="Label3" runat="server" ForeColor="#0066CC" 
                            Text="Universidad de Antioquia"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" class="style2" colspan="2">
                        <asp:Label ID="Label4" runat="server" ForeColor="#0066CC" 
                            Text="Teleono: 3541940 Telefax: 3541942   Email: ricardona@une.net.co"></asp:Label>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            &nbsp;<br />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:coneUAC %>" 
        SelectCommand="ListarImpresionIND" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="ID2" SessionField="ID2" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    </form>
</body>
</html>
