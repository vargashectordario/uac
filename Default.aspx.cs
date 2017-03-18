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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            clsBD.strCnx = "coneUAC";
            DataRow DatosIngreso = clsBD.Consultar_sp("LoginUsuario", new string[] { "@Usuario=" + UserName.Text.Trim(), "@Clave=" + Password.Text.Trim() }).Tables[0].Rows[0];

            Session["Login"] = DatosIngreso["Usuario"].ToString();
            Session["Usuario"] = DatosIngreso["NombreUsuario"].ToString();
            Session["Permiso"] = DatosIngreso["Permiso"].ToString();
            Error.Text = "";
            Response.Redirect("Citas.aspx");

        }
        catch
        {
             Error.Text = "Usuario no autorizado";
        }

    }
}
