/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package loc.dao;

import java.lang.String;
/**
 *
 * @author Misha
 */
public class MyData {
    
   private String destId;
   private String message;

    public MyData(String destId, String message) {
        this.destId = destId;
        this.message = message;
    }

    public MyData() {
    }

    public String getDestId() {
        return destId;
    }

    public void setDestId(String destId) {
        this.destId = destId;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
   
   
}
