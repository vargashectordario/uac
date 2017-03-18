<%@ Page Language="C#" MasterPageFile="~/Principal.master" AutoEventWireup="true" CodeFile="Atencion.aspx.cs" Inherits="Atencion" Title="Página sin título" ValidateRequest="false" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        Caption="INFORMACION DEL  PACIENTE" CaptionAlign="Top" 
        CssClass="accordionHeaderSelected" DataKeyNames="NroIdentificacion" 
        DataSourceID="Paciente" Height="50px" Width="545px">
        <Fields>
            <asp:BoundField DataField="paciente" HeaderText="paciente" ReadOnly="True" 
                SortExpression="paciente" />
            <asp:BoundField DataField="Sexo" HeaderText="Sexo" SortExpression="Sexo" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" 
                SortExpression="Telefono" />
            <asp:BoundField DataField="Direccion" HeaderText="Direccion" 
                SortExpression="Direccion" />
            <asp:BoundField DataField="Edad" HeaderText="Edad" SortExpression="Edad" />
            <asp:BoundField DataField="NroIdentificacion" HeaderText="NroIdentificacion" 
                ReadOnly="True" SortExpression="NroIdentificacion" />
            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="Paciente" runat="server" 
        ConnectionString="<%$ ConnectionStrings:coneUAC %>" SelectCommand="Paciente" 
        SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="ID" SessionField="ID" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    
   
    <table align="center" class="lbl" style="width: 20%">
        <tr>
            <td align="center">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" ImageUrl="~/images/blue/undo.gif" 
                    NavigateUrl="~/Citas.aspx">REGRESAR</asp:HyperLink>
&nbsp;Regresar</td>
        </tr>
    </table>
   
   
   <cc1:Accordion ID="Accordion1" runat="server" SelectedIndex="0"
      HeaderCssClass="accordionHeader"
      HeaderSelectedCssClass="accordionHeaderSelected" 
      AutoSize="None" FadeTransitions="true" TransitionDuration="250" FramesPerSecond="40"
       RequireOpenedPane="false" SuppressHeaderPostbacks="true" Width="545px">
    <Panes>
        <cc1:AccordionPane ID="AccordionPane1" runat="server">
        <Header>ATENCION GRAL</Header>
        <Content>
         <table class="accordionContent">
       
        <tr>
            <td style="width: 268px" >
                Motivo Consulta</td>
            <td style="width: 399px" >
                <asp:TextBox ID="TextBox11" runat="server" CssClass="txt" Width="320px" 
                    Height="30px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 268px">
                Efermedad Actual</td>
            <td style="width: 399px">
                <asp:TextBox ID="TextBox12" runat="server" CssClass="txt" Width="320px" 
                    Height="30px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
       
       
        <tr>
            <td style="width: 268px">
                Antecedentes Personales</td>
            <td style="width: 399px">
                <asp:TextBox ID="TextBox13" runat="server" CssClass="txt" Width="320px" 
                    Height="30px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
       
       
        <tr>
            <td style="width: 268px">
                Antecedentes Familiares
            </td>
            <td style="width: 399px">
                <asp:TextBox ID="TextBox14" runat="server" CssClass="txt" Width="320px" 
                    Height="30px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
       
       
        <tr>
            <td style="width: 268px; height: 18px;" >
                Examen fisico</td>
            <td style="width: 399px; height: 18px;" align="center">
                
        </tr>
       
       
        <tr>
            <td style="width: 268px">
                Diagnostico:</td>
            <td style="width: 399px">
                <asp:TextBox ID="TextBox15" runat="server" CssClass="txt" Width="400px"></asp:TextBox>
                <cc1:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
                    CompletionInterval="500" CompletionSetCount="25" 
                    MinimumPrefixLength="2" ServiceMethod="getDx" ServicePath="WebService.asmx" 
                    TargetControlID="TextBox15" >
                </cc1:AutoCompleteExtender>
            
            </td>
        </tr>
       
       
        <tr>
            <td style="height: 18px;" align="center" colspan="2" >
                   
              <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/images/blue/play.gif" onclick="ImageButton3_Click" />
                
            &nbsp;Guardar</td>
        </tr>
   
    </table>
        </Content>
        
        </cc1:AccordionPane>
    
        <cc1:AccordionPane ID="AccordionPane2" runat="server">
        <Header>NOTAS EVOLUCION</Header>
        <Content>
         <table class="accordionContent" style="width: 540px">
       <tr>
            <td style="width: 399px" valign="top">
                Fecha hora:</td>
            <td style="width: 399px" valign="top">
                <asp:TextBox ID="txtFecha" runat="server" CssClass="txt"></asp:TextBox>
                <cc1:CalendarExtender ID="txtFecha_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txtFecha">
                </cc1:CalendarExtender>
                <asp:TextBox ID="txtHora" runat="server" ReadOnly="true" Width="60px" 
                    CssClass="txt"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 399px" valign="top">
                Analisis</td>
            <td style="width: 399px" valign="top">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="txt" Height="58px" 
                    TextMode="MultiLine"></asp:TextBox>
                
            </td>
        </tr>
       
       
        <tr>
            <td style="width: 399px" valign="top">
                Diagnostico
                              
            </td>
            <td style="width: 399px" valign="top">
                <asp:TextBox ID="txtDescripcion4" runat="server" Columns="80" MaxLength="450" 
                    Rows="3" Width="400px" CssClass="txt" Height="20px"></asp:TextBox>
                   <cc1:AutoCompleteExtender ID="AutoCompleteExtender2" runat="server" 
                    CompletionInterval="500" CompletionSetCount="25" 
                    MinimumPrefixLength="2" ServiceMethod="getDx" ServicePath="WebService.asmx" 
                    TargetControlID="txtDescripcion4" >
                </cc1:AutoCompleteExtender>
                
            </td>
        </tr>
   
       
        <tr>
            <td valign="top" align="center" colspan="2">
              <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/blue/play.gif" onclick="ImageButton1_Click" />
                
            &nbsp;Guardar</td>
        </tr>
   
    </table>
        </Content>
    </cc1:AccordionPane>
     <cc1:AccordionPane ID="AccordionPane3" runat="server">
     <Header>ORDENES MEDICAS</Header>
        <Content>
        <table class="accordionContent">
        <tr>
            <td align="center" class="lbl" colspan="2" >
                
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="txt" 
                     DataTextField="Nombre" DataValueField="ID" 
                    RepeatColumns="6" RepeatDirection="Horizontal" Width="500px">
         <asp:ListItem>Interconsulta</asp:ListItem>
         <asp:ListItem>Laboratorio</asp:ListItem>
          <asp:ListItem>Ayuda dx</asp:ListItem>
           <asp:ListItem>Medicamentos</asp:ListItem>
            <asp:ListItem>Otros</asp:ListItem>
                </asp:RadioButtonList>
               
            </td>
        </tr>
       
        <tr>
            <td style="width: 399px" >
                Procedimiento:</td>
            <td style="width: 399px">
                <asp:TextBox ID="TextBox9" runat="server" CssClass="txt" Width="300px"></asp:TextBox>
            </td>
        </tr>
       
       
        <tr>
            <td style="width: 399px">
                Sustentacion Clinica:</td>
            <td style="width: 399px">
                <asp:TextBox ID="TextBox10" runat="server" CssClass="txt" Height="40px" 
                    TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
       
       
        <tr>
            <td style="width: 399px">
                Guardar</td>
            <td style="width: 399px">
                   
              <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/images/blue/play.gif" onclick="ImageButton2_Click" />
                
            </td>
        </tr>
       
       
        <tr>
            <td style="width: 399px" >
                &nbsp;</td>
            <td style="width: 399px" >
                &nbsp;</td>
        </tr>
   
    </table>
        </Content> 
     </cc1:AccordionPane>
    
    
    
    <cc1:AccordionPane ID="AccordionPane4" runat="server">
    <Header>IMPRIMIR</Header>
    <Content>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CssClass="accordionContent" DataSourceID="imp" Width="545px">
        <Columns>
            <asp:TemplateField>
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton4" runat="server" 
                        ImageUrl="images/blue/print.gif" CommandArgument='<%# Eval("Nombre") %>' 
                        ToolTip='<%# Eval("ID") %>' onclick="ImageButton4_Click" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Paciente" HeaderText="Paciente" ReadOnly="True" 
                SortExpression="Paciente" />
            <asp:BoundField DataField="FechaEvento" HeaderText="Fecha" 
                SortExpression="FechaEvento" />
            <asp:BoundField DataField="Nombre" HeaderText="Formato" 
                SortExpression="Nombre" />
        </Columns>
        <HeaderStyle CssClass="accordionHeader" />
    </asp:GridView>
    <asp:SqlDataSource ID="imp" runat="server" 
        ConnectionString="<%$ ConnectionStrings:coneUAC %>" 
        SelectCommand="ListarImpresion" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:SessionParameter Name="IDcita" SessionField="ID" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    </Content>
    </cc1:AccordionPane>
</Panes>
</cc1:Accordion>

  
    
</asp:Content>

