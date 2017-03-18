using System;
using System.Web;
using System.Collections;
using System.Web.Services;
using System.Web.Services.Protocols;
using libBD;
using System.Data;
using System.Collections.Generic;
using System.Web.Script.Services;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
[ScriptService()]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {
    }

    [WebMethod]
    [ScriptMethod]
    public string[] getDx(string prefixText, int count)
    {
        List<string> lst = new List<string>();
        clsBD.strCnx = "coneUAC";
        DataSet ds = clsBD.Consultar_sp("ListarDiagnostico", new string[] { "@chr=" + prefixText });
        if (ds.Tables[0].Rows.Count == 0)
            lst.Add("SIN DATOS!!!");
        foreach (DataRow dr in ds.Tables[0].Rows)
            lst.Add(dr["Descripcion"].ToString());
        return lst.ToArray();
    }

}

