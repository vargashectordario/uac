using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using libBD;
using System.Data.SqlClient;

public partial class Atencion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (!IsPostBack)
        {
            txtFecha.Text = DateTime.Now.ToShortDateString();
            txtHora.Text = DateTime.Now.ToString("HH:mm");
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            clsBD.strCnx = "coneUAC";
            string[] prm = new string[]{
            "@Comentario1="+ RadioButtonList1.SelectedValue,
            "@Comentario2="+ TextBox9.Text.Trim(),
            "@Comentario3="+ TextBox10.Text.Trim(),
            "@IDcita="+ Session["ID"].ToString(),
            "@Login="  + Session["Login"].ToString(),  
          
             };

            clsBD.Ejecutar_sp("GuardarOrden", prm);
            Label6.Text = "Se guardo Correcto";



        }
        catch
        {
            Label6.Text = "no se pudo guardar";

        }
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            clsBD.strCnx = "coneUAC";
            string[] prm = new string[]{
            "@Comentario1="+ TextBox11.Text.Trim(),
            "@Comentario2="+ TextBox12.Text.Trim(),
            "@Comentario3="+ TextBox13.Text.Trim(),
            "@Comentario4="+ TextBox14.Text.Trim(),
            "@cie10="+ TextBox15.Text.Trim(),
            "@IDcita="+ Session["ID"].ToString(),
            "@Login="  + Session["Login"].ToString(),  
          
             };

            clsBD.Ejecutar_sp("GuardarGeneral", prm);
            Label6.Text = "Se guardo Correcto";
            


        }
        catch
        {
            Label6.Text = "no se pudo guardar";

        }
    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            clsBD.strCnx = "coneUAC";
            string[] prm = new string[]{
            "@Comentario1="+ TextBox1.Text.ToString(),
            "@cie10="+ txtDescripcion4.Text.Trim(),
            "@IDcita="+ Session["ID"].ToString(),
            "@Login="  + Session["Login"].ToString(),  
          
             };

            clsBD.Ejecutar_sp("GuardarNota", prm);
            Label6.Text = "Se guardo Correcto";



        }
        catch
        {
            Label6.Text = "no se pudo guardar";

        }
    }

    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Session["ID2"] = ((ImageButton)sender).ToolTip;
        Session["Tipo"] = ((ImageButton)sender).CommandArgument;
        pop();
    }
    protected void pop()
    {
        string strScript;
        strScript = "<script language=JavaScript>window.open('imp.aspx', 'inf1', 'left=15,top=5,width=550,height=550,menubar=no,scrollbars=yes,resizable=yes');</script>";
        ClientScript.RegisterClientScriptBlock(Page.GetType(), "hec", strScript);
    }

}
