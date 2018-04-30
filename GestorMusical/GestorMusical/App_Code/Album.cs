using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Album
/// </summary>
public class Album
{
    private int idAlbum;


    public Album()
    {        
    }


    public int getIdAlbum()
    {
        return idAlbum;
    }

    public void setIdAlbum(int idAlbum)
    {
        this.idAlbum = idAlbum;
    }
}