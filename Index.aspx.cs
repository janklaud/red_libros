using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Capa_Entidades;
using capa_regla;
using System.Data;
using System.IO;


namespace Red_libros
{
    public partial class Index : System.Web.UI.Page
    {
        Centlibros oentlibros = new Centlibros();
        Centusuarios oentusuarios = new Centusuarios();
        Creglibros oreglibros = new Creglibros();
        Cregusuarios oregusuarios = new Cregusuarios();
        
        protected void Page_Load(object sender, EventArgs e)
        {

            
            
            if (!IsPostBack)
            {
                if (Session["inicio"] == null)
                {
                    Response.Redirect("LOGIN.aspx");
                }
            }

            

        }

       


            /*

             System.Drawing.Image foto = bytes_a_imagen(oentlibros.foto);
             foto.Save(Server.MapPath("~/") + "nuevo.jpg", System.Drawing.Imaging.ImageFormat.Jpeg);

             pcbfoto.ImageUrl = "~/nuevo.jpg";
             pcbfoto.DataBind();

     */






        


        //metodo para convertir de bytes a imagen
        private System.Drawing.Image bytes_a_imagen(Byte[] foto)
        {
            if (!(foto == null))
            {
                MemoryStream codi = new MemoryStream(foto);
                System.Drawing.Image resultado = System.Drawing.Image.FromStream(codi);
                return resultado;
            }
            else
            {
                return null;
            }
        }
        protected void BTTagregar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reg_libro.aspx");
        }


        protected void limpiar_campos()
        {
            lblautor.Text = "";
            lblcodigo.Text = "";
            lbldescripcion.Text = "";
            lblgenero.Text = "";
            lblnombre.Text = "";
            


        }


        protected void txtdatos_TextChanged(object sender, EventArgs e)
        {
            /*
            oentlibros.codlibro = txtdatos.Text;
            oentlibros.descripcion = txtdatos.Text;
            oentlibros.genero = txtdatos.Text;
            oentlibros.autor = txtdatos.Text;
            oentlibros.nombre = txtdatos.Text;


            switch (rbltipo.SelectedIndex)
            {
                case 0:
                    oentlibros.tipo = "1";
                    break;
                case 1:
                    oentlibros.tipo = "2";
                    break;
                case 2:
                    oentlibros.tipo = "3";
                    break;
                case 3:
                    oentlibros.tipo = "4";
                    break;
                case 4:
                    oentlibros.tipo = "5";

                    break;
            }

               DataSet ds = new DataSet();              
              ds = oreglibros.consulta_libros(oentlibros);
              Label1.Text = "" + ds.Tables[0].Rows.Count;
              gvresultado.DataSource = ds;
              gvresultado.DataBind();*/


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("LOGIN.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            oentlibros.nombre = txtnombre.Text;

            DataSet ds = new DataSet();
            ds = oreglibros.consulta_libros1(oentlibros);
            if (ds.Tables[0].Rows.Count == 0)
            {
                lblmensaje.Text = "libro no registrado";
                limpiar_campos();
                txtnombre.Focus();
            }
            else
            {
                lblcodigo.Text = ds.Tables[0].Rows[0]["codlibro"].ToString();
                lbldescripcion.Text = ds.Tables[0].Rows[0]["descripcion"].ToString();
                lblgenero.Text = ds.Tables[0].Rows[0]["genero"].ToString();
                lblnombre.Text = ds.Tables[0].Rows[0]["nombre"].ToString();
                lblautor.Text = ds.Tables[0].Rows[0]["autor"].ToString();
                System.Drawing.Image foto = bytes_a_imagen(oentlibros.foto);                
                pcbfoto.ImageUrl = ds.Tables[0].Rows[0]["foto"] + "~" + ViewState["foto"];
                pcbfoto.DataBind();
               

                

            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LOGINADMIN.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("COMPRA.aspx");
        }
    }
}