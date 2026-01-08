using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPW2
{
    public partial class WebForm3 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEjemplo();
            }
        }

        void CargarEjemplo()
        {
            var datos = new List<object>
            {
    new { ID = 1, Nombre = "Juan Pérez", Carrera = "Sistemas", Promedio = 87 },
    new { ID = 2, Nombre = "Maria Lopez", Carrera = "Diseño Web", Promedio = 90 },
    new { ID = 3, Nombre = "Carlos Ruiz", Carrera = "Programación", Promedio = 58 },
    new { ID = 4, Nombre = "Ana García", Carrera = "Sistemas", Promedio = 68 },
    new { ID = 5, Nombre = "Luis Torres", Carrera = "Seguridad Informática", Promedio = 87 },
    new { ID = 6, Nombre = "Elena Beltrán", Carrera = "Diseño Web", Promedio = 67 },
    new { ID = 7, Nombre = "Roberto Gómez", Carrera = "Sistemas", Promedio = 87 },
    new { ID = 8, Nombre = "Sofía Méndez", Carrera = "Programación", Promedio = 98 },
    new { ID = 9, Nombre = "Diego Salas", Carrera = "Inteligencia Artificial", Promedio = 89 },
    new { ID = 10, Nombre = "Lucía Prado", Carrera = "Sistemas", Promedio = 91 }
};

            GridView1.DataSource = datos;
            GridView1.DataBind();
        }
    }
}