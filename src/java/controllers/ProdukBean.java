
package controllers;

import java.sql.Blob;
import java.sql.Date;

public class ProdukBean {
    int id_produk;
    String nama_produk,deskripsi;
    Blob foto_produk;
    int harga_produk;
    int diskon;
    Date tgl_produk;
    int stok;

    public int getId_produk() {
        return id_produk;
    }

    public void setId_produk(int id_produk) {
        this.id_produk = id_produk;
    }

    public String getNama_produk() {
        return nama_produk;
    }

    public void setNama_produk(String nama_produk) {
        this.nama_produk = nama_produk;
    }

    public String getDeskripsi() {
        return deskripsi;
    }

    public void setDeskripsi(String deskripsi) {
        this.deskripsi = deskripsi;
    }

    public Blob getFoto_produk() {
        return foto_produk;
    }

    public void setFoto_produk(Blob foto_produk) {
        this.foto_produk = foto_produk;
    }

    public int getHarga_produk() {
        return harga_produk;
    }

    public void setHarga_produk(int harga_produk) {
        this.harga_produk = harga_produk;
    }

    public int getDiskon() {
        return diskon;
    }

    public void setDiskon(int diskon) {
        this.diskon = diskon;
    }

    public Date getTgl_produk() {
        return tgl_produk;
    }

    public void setTgl_produk(Date tgl_produk) {
        this.tgl_produk = tgl_produk;
    }

    public int getStok() {
        return stok;
    }

    public void setStok(int stok) {
        this.stok = stok;
    }
    
    
}
