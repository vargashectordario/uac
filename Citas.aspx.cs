using libBD;
using System;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Citas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.MaintainScrollPositionOnPostBack = true;
        if (!IsPostBack)
        {
            TextBox8.Text = DateTime.Now.ToShortDateString();
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Guardar();
    }
    private void Guardar()
    {
        try
        {
            clsBD.strCnx = "coneUAC";
            string[] prm = new string[]{
            "@NroIdentificacion="+ TextBox1.Text.Trim(),
            "@Nombres="+((TextBox)FormView1.FindControl("TextBox2")).Text.ToUpper().ToString(), 
            "@Apellidos="+((TextBox)FormView1.FindControl("TextBox3")).Text.ToUpper().ToString(),
            "@Sexo="+((RadioButtonList)FormView1.FindControl("RadioButtonList1")).SelectedValue, 
            "@Telefono="+((TextBox)FormView1.FindControl("TextBox4")).Text,
            "@Direccion="+((TextBox)FormView1.FindControl("TextBox5")).Text,
            "@Login="  + Session["Login"].ToString(),  
            "@Edad="+((TextBox)FormView1.FindControl("TextBox6")).Text,
            "@Fecha=" +((TextBox)FormView1.FindControl("TextBox7")).Text,
            "@Medico=" +((DropDownList)FormView1.FindControl("DropDownList1")).SelectedValue,
            "@Hora="+((DropDownList)FormView1.FindControl("DropDownList2")).SelectedValue, 
             };

            clsBD.Ejecutar_sp("GuardarAgenda", prm);
            ((GridView)FormView1.FindControl("GridView1")).DataBind();


        }
        catch
        {
            ((Label)FormView1.FindControl("Error")).Text = "No se pudo guardar el registro";
                    
        }
       }


    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            clsBD.strCnx = "coneUAC";
            string[] prm = new string[]{
            "@ID=" + ((ImageButton)sender).ToolTip,
            "@Login="  + Session["Login"].ToString(), 
            
        };

             clsBD.Ejecutar_sp("EliminarAgenda", prm);
            ((GridView)FormView1.FindControl("GridView1")).DataBind();
        }
        catch
        {
            ((Label)FormView1.FindControl("Error")).Text = "No se pudo Eliminar el registro";

        }
    }

    protected void verPaciente_Click(object sender, ImageClickEventArgs e)
    {
        Session["ID"] = ((ImageButton)sender).ToolTip;
        Response.Redirect("Atencion.aspx");
    }
    protected void verPaciente2_Click(object sender, ImageClickEventArgs e)
    {
        Session["ID"] = ((ImageButton)sender).ToolTip;
        Response.Redirect("Atencion.aspx");
    }
}
