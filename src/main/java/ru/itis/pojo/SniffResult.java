package ru.itis.pojo;

import java.util.Date;

/**
 * Created by Ilya Evlampiev on 02.11.2015.
 */
public class SniffResult {
    private long id;
    private String hijackedUrl;
    private String referer;
    private String author;
    private Date sniffingDate;

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getHijackedUrl() {
        return hijackedUrl;
    }

    public void setHijackedUrl(String hijackedUrl) {
        this.hijackedUrl = hijackedUrl;
    }

    public String getReferer() {
        return referer;
    }

    public void setReferer(String referer) {
        this.referer = referer;
    }

    public Date getSniffingDate() {
        return sniffingDate;
    }

    public void setSniffingDate(Date sniffingDate) {
        this.sniffingDate = sniffingDate;
    }

    @Override
    public String toString() {
        return "SniffResult{" +
                "id=" + id +
                ", hijackedUrl='" + hijackedUrl + '\'' +
                ", referer='" + referer + '\'' +
                ", author='" + author + '\'' +
                ", sniffingDate=" + sniffingDate +
                '}';
    }
}
