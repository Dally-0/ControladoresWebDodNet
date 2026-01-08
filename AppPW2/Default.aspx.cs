using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AppPW2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void mvEncuesta_ActiveViewChanged(object sender, EventArgs e)
        {

        }
        // --- VISTA 0: DATOS GENERALES ---
        protected void btnComenzar_Click(object sender, EventArgs e)
        {
            // Validamos que haya escrito algo (opcional pero recomendado)
            if (!string.IsNullOrWhiteSpace(txtNombre.Text))
            {
                // Pasamos a la Vista 1 (Preguntas)
                mvEncuesta.ActiveViewIndex = 1;
            }
            else
            {
                // Aquí podrías poner un mensaje de error si el nombre está vacío
                // Por ahora, simplemente no avanza
            }
        }

        protected void btnAtrasDatos_Click(object sender, EventArgs e)
        {
            // Volver a la Vista 0 (Datos) desde la Vista 1
            mvEncuesta.ActiveViewIndex = 0;
        }

        // --- VISTA 1 y 2: NAVEGACIÓN ENTRE PREGUNTAS ---
        protected void btnSiguiente1_Click(object sender, EventArgs e)
        {
            // De Vista 1 a Vista 2
            mvEncuesta.ActiveViewIndex = 2;
        }

        protected void btnAtras1_Click(object sender, EventArgs e)
        {
            // De Vista 2 a Vista 1
            mvEncuesta.ActiveViewIndex = 1;
        }

        // --- FINALIZAR ---
        protected void btnFinalizar_Click(object sender, EventArgs e)
        {
            // 1. Recuperamos el nombre escrito en la primera pantalla
            // Al ser un MultiView, el valor de txtNombre sigue vivo en memoria
            string nombreUsuario = txtNombre.Text;

            // Lo ponemos en el título del resultado
            lblNombreUsuario.Text = nombreUsuario;

            // 2. Recuperamos el resto de datos
            string nivel = ddlNivel.SelectedItem.Text;
            string os = rblOS.SelectedItem.Text;
            string area = rblPreferencia.SelectedItem.Text;

            string lenguajes = "";
            foreach (ListItem item in cblLenguajes.Items)
            {
                if (item.Selected) lenguajes += item.Text + ", ";
            }
            if (lenguajes.Length > 0) lenguajes = lenguajes.TrimEnd(',', ' ');

            // 3. Mostramos el resumen
            lblResumen.Text = "<b>Nivel:</b> " + nivel + "<br/>" +
                              "<b>SO Favorito:</b> " + os + "<br/>" +
                              "<b>Preferencia:</b> " + area + "<br/>" +
                              "<b>Lenguajes:</b> " + lenguajes;

            // 4. Vamos a la pantalla final (Índice 3)
            mvEncuesta.ActiveViewIndex = 3;
        }

        protected void btnReiniciar_Click(object sender, EventArgs e)
        {
            // Limpiamos todo para empezar de cero
            txtNombre.Text = "";
            cblLenguajes.ClearSelection();
            rblOS.SelectedIndex = 0;

            // Volvemos al inicio (Índice 0)
            mvEncuesta.ActiveViewIndex = 0;
        }

        protected void mvEncuesta_ActiveViewChanged1(object sender, EventArgs e)
        {

        }
    }
}