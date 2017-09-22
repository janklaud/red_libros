using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Entidades;
using capa_regla;
using System.Data;


namespace Red_libros
{
    public partial class LOGIN : System.Web.UI.Page
    {
        Centlibros oentlibros = new Centlibros();
        Centusuarios oentusuarios = new Centusuarios();
        Creglibros oreglibros = new Creglibros();
        Cregusuarios oregusuarios = new Cregusuarios();




        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTTiniciar_Click(object sender, EventArgs e)
        {



            if (txtusuario.Text.Trim() == "" | txtcontraseña.Text.Trim() == "")
            {
                lblmensajeusua.Text = "digite un usuario y contraseña";
            }

            else
            {
                oentusuarios.nom = txtusuario.Text;
                oentusuarios.pass = txtcontraseña.Text;

                DataSet ds = new DataSet();

                ds = oregusuarios.ver_usuarios(oentusuarios);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["inicio"] = txtusuario.Text;                   
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    lblmensajeusua.Text = "Usuario y/o Contraseña Incorrecta";
                }

            }
            


        }





        

        protected void BTTregistrar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }
    }
}