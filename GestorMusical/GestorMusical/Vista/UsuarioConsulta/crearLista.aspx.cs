using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Vista_UsuarioConsulta_crearLista : System.Web.UI.Page
{
    Usuario usuario = UserConnect.usuario;
    Consulta consulta = new Consulta();
    Insersión insertarLista = new Insersión();

    protected void Page_Load(object sender, EventArgs e)
    {
        enlazarTodasLasCanciones();
    }

    protected void btnNuevaLista_Click(object sender, EventArgs e)
    {
        if(txtNombreLista.Text.Length > 0)
        {
            insertarLista.insertarLista(txtNombreLista.Text, usuario.getId().ToString());
            txtMiListaActual.Text = txtNombreLista.Text;
            enlazarTodasLasCanciones();
        }
    }

    private void enlazarTodasLasCanciones()
    {
        SqlConnection conexion = Conexion.conectar();        

        String query = "Select Cancion.IdCancion, Cancion.Cancion, Artista.NombreArtista from Cancion "+
            "inner join Album on Cancion.Album_FK = Album.IdAlbum "+
            "inner join Artista on Album.Artista_FK = Artista.IdArtista WHERE Cancion.Estado_FK != 2";


        SqlCommand consulta = new SqlCommand(string.Format(query), conexion);
        SqlDataAdapter da = new SqlDataAdapter(consulta);
        DataTable dt = new DataTable();
        da.Fill(dt);

        gridTodasCanciones.DataSource = dt;
        gridTodasCanciones.DataBind();
        conexion.Close();
    }

    private void verMiListaActual()
    {

        {
            SqlConnection conexion = Conexion.conectar();

            int idLista = consulta.obtenerIdListaActual(txtMiListaActual.Text);

            String query = "Select Cancion.Cancion, Artista.NombreArtista from Cancion "+
                "inner join Album on Cancion.Album_FK = Album.IdAlbum "+
                "inner join Artista on Album.Artista_FK = Artista.IdArtista " +
                "inner join Cancion_Lista on Cancion.IdCancion = Cancion_Lista.Cancion_FK "+
                "where Cancion_Lista.Lista_FK = "+idLista.ToString();


            SqlCommand command = new SqlCommand(string.Format(query), conexion);
            SqlDataAdapter da = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            da.Fill(dt);

            gridMiListaActual.DataSource = dt;
            gridMiListaActual.DataBind();
            conexion.Close();
        }
    }

    protected void gridTodasCanciones_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int fila = e.RowIndex;
        //String valor = gridListaCanciones.SelectedRow.Cells[1].ToString();
        String idCancion = gridTodasCanciones.Rows[fila].Cells[1].Text;

        int idLista = consulta.obtenerIdListaActual(txtMiListaActual.Text);

        insertarLista.insertarCancionALista(idCancion, idLista.ToString());

        verMiListaActual();
    }
}