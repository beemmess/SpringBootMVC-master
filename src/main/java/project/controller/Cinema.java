package project.controller;

/**
 * Created by audurgudjons on 28/10/15.
 */
public class Cinema {
    public String title;
    public String restricted;
    public double imdbRate;
    public String imdbLink;
    public String image;
    public String showtimes;
    public String theater;
    public String schedule;

    public Cinema(String titill, String aldurstakmark, double imdbEinkunn, String imdbLinkur, String mynd, String syningartimar, String kvikmyndahus, String dagskra){
        title = titill;
        restricted = aldurstakmark;
        imdbRate = imdbEinkunn;
        imdbLink = imdbLinkur;
        image = mynd;
        showtimes = syningartimar;
        theater = kvikmyndahus;
        schedule = dagskra;
    }
}
