/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import java.beans.*;
import java.util.regex.*;

public class listenerBean implements VetoableChangeListener 
{
    public void vetoableChange(PropertyChangeEvent evt) throws PropertyVetoException 
    {
        String eventName = evt.getPropertyName();
        System.out.println(eventName);
        if (eventName.equalsIgnoreCase("name")) 
        {
            String name = evt.getNewValue().toString();
            if (Pattern.matches("[a-zA-Z]+", name) == false) 
            {
                throw new PropertyVetoException("Invalid Name", evt);                
            }
          
            System.out.println("Name entered = " + name);
        }
    }
}