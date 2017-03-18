<%@ Page Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="Citas.aspx.cs" Inherits="Citas" Title="Página sin título"  ValidateRequest="false"%>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <cc1:Accordion ID="Accordion1" runat="server" SelectedIndex="0"
      HeaderCssClass="accordionHeader"
      HeaderSelectedCssClass="accordionHeaderSelected" 
      AutoSize="None" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40"
       RequireOpenedPane="false" SuppressHeaderPostbacks="true" Width="545px">
    <Panes>
        <cc1:AccordionPane ID="AccordionPane1" runat="server">
        <Header>AGENDA</Header>
        <Content>
        <table align="left">
        <tr>
            <td class="lbl" align="left">
                Fecha:<asp:TextBox ID="TextBox8" runat="server" Width="190px" CssClass="txt" 
                    AutoPostBack="True"></asp:TextBox>
                <cc1:CalendarExtender ID="TextBox8_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox8">
                </cc1:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td align="left">

<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                        Caption="Citas Programadas" CaptionAlign="Top" 
                    CssClass="txt" DataKeyNames="ID" 
                                        DataSourceID="Agenda" Width="399px">
                                        <Columns>
                                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                                            <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
                                            <asp:BoundField DataField="Paciente" HeaderText="Paciente" ReadOnly="True" 
                                                SortExpression="Medico" />
                                            <asp:BoundField DataField="Telefono" HeaderText="Telefono" 
                                                SortExpression="Telefono" />
                                            <asp:TemplateField HeaderText="Ver">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="verPaciente" runat="server" 
                                                        ImageUrl="~/images/blue/user.gif" CausesValidation="False" 
                                                        onclick="verPaciente_Click" ToolTip='<%# Eval("ID") %>' />
                                                    
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                <asp:SqlDataSource ID="Agenda" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:coneUAC %>" 
                    SelectCommand="CitasMedicoFecha" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox8" Name="Fecha" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
        </Content>
        
        </cc1:AccordionPane>
    
        <cc1:AccordionPane ID="AccordionPane2" runat="server">
        <Header>PROGRAMAR PACIENTE</Header>
        <Content>
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
       
                <table align="left" Height = "400px">
                    <tr valign = "top">
                    <td style="width: 56px" valign = "top" class="lbl">Identificacion:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"  CssClass="txt"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/images/blue/play.gif" CausesValidation="False" />
                </td>
        </tr>
        <tr valign = "top">
            <td colspan="2" valign = "top">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="Pacientes" 
                    Width="390px">
                    <EditItemTemplate>
                        Nombres:
                        <asp:TextBox ID="NombresTextBox" runat="server" Text='<%# Bind("Nombres") %>' />
                        <br />
                        Apellidos:
                        <asp:TextBox ID="ApellidosTextBox" runat="server" 
                            Text='<%# Bind("Apellidos") %>' />
                        <br />
                        Sexo:
                        <asp:TextBox ID="SexoTextBox" runat="server" Text='<%# Bind("Sexo") %>' />
                        <br />
                        Telefono:
                        <asp:TextBox ID="TelefonoTextBox" runat="server" 
                            Text='<%# Bind("Telefono") %>' />
                        <br />
                        Direccion:
                        <asp:TextBox ID="DireccionTextBox" runat="server" 
                            Text='<%# Bind("Direccion") %>' />
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
                        Nombres:
                        <asp:TextBox ID="NombresTextBox0" runat="server" 
                            Text='<%# Bind("Nombres") %>' />
                        <br />
                        Apellidos:
                        <asp:TextBox ID="ApellidosTextBox0" runat="server" 
                            Text='<%# Bind("Apellidos") %>' />
                        <br />
                        Sexo:
                        <asp:TextBox ID="SexoTextBox0" runat="server" Text='<%# Bind("Sexo") %>' />
                        <br />
                        Telefono:
                        <asp:TextBox ID="TelefonoTextBox0" runat="server" 
                            Text='<%# Bind("Telefono") %>' />
                        <br />
                        Direccion:
                        <asp:TextBox ID="DireccionTextBox0" runat="server" 
                            Text='<%# Bind("Direccion") %>' />
                        <br />
                        Edad:
                        <asp:TextBox ID="EdadTextBox0" runat="server" Text='<%# Bind("Edad") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                            CommandName="Insert" Text="Insertar" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                            CausesValidation="False" CommandName="Cancel" Text="Cancelar" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <table align="left" width="390">
                            <tr>
                                <td class="lbl">
                                    Nombres:</td>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" 
                                        Text='<%# Bind("Nombres") %>' Width="190px" CssClass="txt"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">
                                    Apellidos:</td>
                                <td>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Apellidos") %>' 
                                        Width="190px" CssClass="txt"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">
                                    Sexo:</td>
                                <td>
                                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="txt" 
                                        RepeatDirection="Horizontal" SelectedValue='<%# Bind("Sexo") %>' Width="200px">
                                        <asp:ListItem Value="F">Femenino</asp:ListItem>
                                        <asp:ListItem Value="M">Masculino</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">
                                    Telefono:</td>
                                <td>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Telefono") %>' 
                                        Width="190px" CssClass="txt"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">
                                    Direccion:</td>
                                <td>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Direccion") %>' 
                                        Width="190px" CssClass="txt"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">
                                    Edad:</td>
                                <td>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Edad") %>' 
                                        Width="60px" CssClass="txt"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:Label ID="Label6" runat="server" CssClass="lbl" Text="Agendar"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">
                                    Medico:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" 
                                        CssClass="txt" DataSourceID="Medicos" DataTextField="nombre" 
                                        DataValueField="Usuario">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">
                                    Fecha:</td>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server" Width="100px" CssClass="txt"></asp:TextBox>
                                    
                                    <cc1:CalendarExtender ID="TextBox7_CalendarExtender" runat="server" 
                                        Enabled="True" TargetControlID="TextBox7">
                                    </cc1:CalendarExtender>
                                    
                                </td>
                            </tr>
                            <tr>
                                <td class="lbl">
                                    Hora:</td>
                                <td>
                                    <asp:DropDownList ID="DropDownList2" runat="server" Width="70px" CssClass="txt" 
                                        DataSourceID="Horas" DataTextField="Hora" DataValueField="ID">
                                    </asp:DropDownList>
                                    &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                                        ImageUrl="~/images/blue/plus.gif" onclick="ImageButton2_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:Label ID="Error" runat="server" ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        Caption="Citas Programadas" CaptionAlign="Top" CssClass="txt" DataKeyNames="ID" 
                                        DataSourceID="Citas" Width="399px">
                                        <Columns>
                                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                                            <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
                                            <asp:BoundField DataField="Medico" HeaderText="Medico" ReadOnly="True" 
                                                SortExpression="Medico" />
                                            <asp:TemplateField HeaderText="Cancelar">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="ImageButton3" runat="server" 
                                                        ImageUrl="~/images/blue/x.gif" CausesValidation="False" 
                                                        onclick="ImageButton3_Click" ToolTip='<%# Eval("ID") %>' />
                                                    <cc1:ConfirmButtonExtender ID="ImageButton3_ConfirmButtonExtender" 
                                                        runat="server" ConfirmText="Esta seguro de eliminar la cita" Enabled="True" 
                                                        TargetControlID="ImageButton3">
                                                    </cc1:ConfirmButtonExtender>
                                                     <asp:ImageButton ID="verPaciente2" runat="server" 
                                                        ImageUrl="~/images/blue/user.gif" CausesValidation="False" 
                                                        onclick="verPaciente_Click" ToolTip='<%# Eval("ID") %>' />
                                                    
                                                    
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="Citas" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:coneUAC %>" 
                                        SelectCommand="CitasPaciente" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="TextBox1" Name="NroIdentificacion" 
                                                PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <asp:RequiredFieldValidator ID="Val1" runat="server" 
                                        ControlToValidate="TextBox2" ErrorMessage="Dato requerido" ForeColor="White"></asp:RequiredFieldValidator>
                                    <cc1:ValidatorCalloutExtender ID="Val1_ValidatorCalloutExtender" runat="server" 
                                        Enabled="True" TargetControlID="Val1">
                                    </cc1:ValidatorCalloutExtender>
                                    <asp:RequiredFieldValidator ID="Val2" runat="server" 
                                        ControlToValidate="TextBox3" ErrorMessage="Dato requerido" ForeColor="White"></asp:RequiredFieldValidator>
                                    <cc1:ValidatorCalloutExtender ID="Val2_ValidatorCalloutExtender" runat="server" 
                                        Enabled="True" TargetControlID="Val2">
                                    </cc1:ValidatorCalloutExtender>
                                    <asp:RequiredFieldValidator ID="Val3" runat="server" 
                                        ControlToValidate="TextBox6" ErrorMessage="Dato requerido" ForeColor="White"></asp:RequiredFieldValidator>
                                    <cc1:ValidatorCalloutExtender ID="Val3_ValidatorCalloutExtender" runat="server" 
                                        Enabled="True" TargetControlID="Val3">
                                    </cc1:ValidatorCalloutExtender>
                                    <asp:RequiredFieldValidator ID="Val4" runat="server" 
                                        ControlToValidate="TextBox7" ErrorMessage="Dato requerido" ForeColor="White"></asp:RequiredFieldValidator>
                                    <cc1:ValidatorCalloutExtender ID="Val4_ValidatorCalloutExtender" runat="server" 
                                        Enabled="True" TargetControlID="Val4">
                                    </cc1:ValidatorCalloutExtender>
                                </td>
                            </tr>
                        </table>
                      
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="Pacientes" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:coneUAC %>" 
                    SelectCommand="PacienteCargar" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="NroIdentificacion" 
                            PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
                <asp:SqlDataSource ID="Medicos" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:coneUAC %>" 
                    SelectCommand="ListarMedicos" SelectCommandType="StoredProcedure">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="Horas" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:coneUAC %>" SelectCommand="ListarHoras" 
                    SelectCommandType="StoredProcedure">
                </asp:SqlDataSource>
               
            </td>
        </tr>
    </table>
    </ContentTemplate>
    
    </asp:UpdatePanel>
    </Content>
    </cc1:AccordionPane>
    
    </Panes>
</cc1:Accordion>
</asp:Content>

