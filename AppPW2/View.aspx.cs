using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPW2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnComenzar_Click(object sender, EventArgs e)
        {

            if (!string.IsNullOrWhiteSpace(txtNombre.Text))
            {
                mvEncuesta.ActiveViewIndex = 1;
            }

        }

        protected void btnAtrasDatos_Click(object sender, EventArgs e)
        {
            mvEncuesta.ActiveViewIndex = 0;
        }

        protected void btnSiguiente1_Click(object sender, EventArgs e)
        {
            mvEncuesta.ActiveViewIndex = 2;
        }

        protected void btnAtras1_Click(object sender, EventArgs e)
        {
            mvEncuesta.ActiveViewIndex = 1;
        }

        protected void btnFinalizar_Click(object sender, EventArgs e)
        {

            string nombreUsuario = txtNombre.Text;

            // Lo ponemos en el título del resultado
            lblNombreUsuario.Text = nombreUsuario;

            string nivel = ddlNivel.SelectedItem.Text;
            string os = rblOS.SelectedItem.Text;
            string area = rblPreferencia.SelectedItem.Text;

            string lenguajes = "";
            foreach (ListItem item in cblLenguajes.Items)
            {
                if (item.Selected) lenguajes += item.Text + ", ";
            }
            if (lenguajes.Length > 0) lenguajes = lenguajes.TrimEnd(',', ' ');

            lblResumen.Text = "<b>Nivel:</b> " + nivel + "<br/>" +
                              "<b>SO Favorito:</b> " + os + "<br/>" +
                              "<b>Preferencia:</b> " + area + "<br/>" +
                              "<b>Lenguajes:</b> " + lenguajes;

            mvEncuesta.ActiveViewIndex = 3;
        }

        protected void btnReiniciar_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            cblLenguajes.ClearSelection();
            rblOS.SelectedIndex = 0;

            mvEncuesta.ActiveViewIndex = 0;
        }

    }
}