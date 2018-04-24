using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Usuario
/// </summary>
public class Usuario
{

    public static List<String> listaCanciones = new List<string>();
    public static List<String> listaDeArtista = new List<String>();

    private int id;
    private int idUsuarioEditar;
    
    public Usuario()
    {
        
    }

    public int getIdUsuarioEditar()
    {
        return idUsuarioEditar;
    }

    public void setIdUsuarioEditar(int idUsuarioEditar)
    {
        this.idUsuarioEditar = idUsuarioEditar;
    }

    public int getId()
    {
        return id;
    }

    public void setId(int id)
    {
        this.id = id;
    }
}

