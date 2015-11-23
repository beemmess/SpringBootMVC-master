package project.persistence.entities.Forecast;

import java.io.File;
import java.io.InputStream;
import java.net.URL;


//package com.aurora.seo;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;

import org.json.JSONObject;
import org.json.XML;
import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;



import jdk.internal.org.xml.sax.XMLReader;
import org.xml.sax.helpers.XMLReaderFactory;

import javax.print.DocFlavor;

/**
 * Created by audurgudjons on 22/11/15.
 */
public class Aurora {

        public static void main(String[] args)
        {
            try {
                new Aurora().start();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        private void start() throws Exception
        {
            URL url = new URL("http://xmlweather.vedur.is/aurora?op=xml&lang=en&type=index");
            URLConnection connection = url.openConnection();

            Document doc = parseXML(connection.getInputStream());
            NodeList descNodes = doc.getElementsByTagName("aurora");

            for(int i=0; i<descNodes.getLength();i++)
            {
                System.out.println(descNodes.item(i).getTextContent());
            }
        }

        private Document parseXML(InputStream stream)
                throws Exception
        {
            DocumentBuilderFactory objDocumentBuilderFactory = null;
            DocumentBuilder objDocumentBuilder = null;
            Document doc = null;
            try
            {
                objDocumentBuilderFactory = DocumentBuilderFactory.newInstance();
                objDocumentBuilder = objDocumentBuilderFactory.newDocumentBuilder();

                doc = objDocumentBuilder.parse(stream);
            }
            catch(Exception ex)
            {
                throw ex;
            }

            return doc;
        }


    /*String str = "http://xmlweather.vedur.is/aurora?op=xml&lang=en&type=index";
    URL url = new URL(str);
    InputStream is = url.openStream();
    int ptr = 0;
    StringBuilder builder = new StringBuilder();
    while((ptr = is.read()) != -1); {
        builder.append((char) ptr);
    }
    String xml = builder.toString();

    JSONObject jsonObject = XML.toJSONObject(xml);
    System.out.println(jsonObject);


    public static void main(String argv[]) {

        try {

            File fXmlFile = new File("/Users/audurgudjons/GitHub/SpringBootMVC-master/aurora.xml");
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(fXmlFile);

            //optional, but recommended
            //read this - http://stackoverflow.com/questions/13786607/normalization-in-dom-parsing-with-java-how-does-it-work
            doc.getDocumentElement().normalize();

            System.out.println("Root element :" + doc.getDocumentElement().getNodeName());

            NodeList nList = doc.getElementsByTagName("sun");

            System.out.println("----------------------------");

            for (int temp = 0; temp < nList.getLength(); temp++) {

                Node nNode = nList.item(temp);

                System.out.println("\nCurrent Element :" + nNode.getNodeName());

                if (nNode.getNodeType() == Node.ELEMENT_NODE) {

                    Element eElement = (Element) nNode;

                    System.out.println("Sunset : " + eElement.getElementsByTagName("sunset").item(0).getTextContent());
                    System.out.println("Darkness : " + eElement.getElementsByTagName("darkness").item(0).getTextContent());
                    System.out.println("Dawn : " + eElement.getElementsByTagName("dawn").item(0).getTextContent());
                    System.out.println("Sunrise : " + eElement.getElementsByTagName("sunrise").item(0).getTextContent());
                    //System.out.println("Salary : " + eElement.getElementsByTagName("salary").item(0).getTextContent());

                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }*/

}
