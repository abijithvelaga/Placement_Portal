/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import bean.listenerBean;
import java.io.Serializable;
import java.beans.*;
import java.util.regex.*;

public class sourceBean implements java.io.Serializable 
{

    private String name = "invalid";
    private String branch = "inv";
    private String companyname = "cognizant";
    private Integer aptitude= 0;
    private String mostAptitude = "ratios";
    private Integer verbal = 0;
    private String mostVerbal = "prepositions";
    private Integer coding = 0;
    private String mostCoding = "graphs";
    private Integer interviewRounds = 0;
    private String mostInterview = "jdbc";
    private String difficulty = "difficult";
    
  
    private PropertyChangeSupport mPcs = new PropertyChangeSupport(this);
    private VetoableChangeSupport mVcs = new VetoableChangeSupport(this);
    
    public sourceBean()
    {
        mVcs.addVetoableChangeListener(new listenerBean());
    }

    public String getName() 
    {
        return name;
    }
    public String getMostAptitude() 
    {
        return mostAptitude;
    }
    public Integer getVerbal() 
    {
        return verbal;
    }
    public String getMostVerbal() 
    {
        return mostVerbal;
    }
    public Integer getCoding() 
    {
        return coding;
    }
    public String getMostCoding() 
    {
        return mostCoding;
    }
    public Integer getInterviewRounds() 
    {
        return interviewRounds;
    }
    public String getInterview() 
    {
        return mostInterview;
    }
    public String Difficulty() 
    {
        return difficulty;
    }
    public String getBranch() 
    {
        return branch;
    }
    

    public void setName(String new_name)
    {
        try 
        {
            String old_name = name;
            mVcs.fireVetoableChange("name", old_name, new_name);
            name = new_name;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }

    public String getCompany() 
    {
        return companyname;
    }
    
    public Integer getAptitude() 
    {
        return aptitude;
    }
    
    public void setCompany(String new_company)
    {
        try 
        {
            String old_company = companyname;
            mVcs.fireVetoableChange("companyname", old_company, new_company);
            companyname = new_company;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
     
    public void setAptitude(Integer new_aptitude)
    {
        try 
        {
            Integer old_aptitude = aptitude;
            mVcs.fireVetoableChange("aptitude", old_aptitude, new_aptitude);
            aptitude = new_aptitude;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
    public void setBranch(String new_branch)
    {
        try 
        {
            String old_branch = branch;
            mVcs.fireVetoableChange("branch", old_branch, new_branch);
            branch = new_branch;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
    public void setMostAptitude(String new_apti)
    {
        try 
        {
            String old_apti = mostAptitude;
            mVcs.fireVetoableChange("mostAptitude", old_apti, new_apti);
            mostAptitude = new_apti;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
    public void setVerbal(Integer new_verbal)
    {
        try 
        {
            String old_verb = mostVerbal;
            mVcs.fireVetoableChange("mostVerbal", old_verb, new_verbal);
            verbal = new_verbal;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
    public void setMostVerbal(String new_verb)
    {
        try 
        {
            String old_verb = mostVerbal;
            mVcs.fireVetoableChange("mostVerbal", old_verb, new_verb);
            mostVerbal = new_verb;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
    public void setCoding(Integer new_coding)
    {
        try 
        {
            Integer old_coding = coding;
            mVcs.fireVetoableChange("coding", old_coding, new_coding);
            coding = new_coding;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
    public void setMostCoding(String new_code)
    {
        try 
        {
            String old_code = mostCoding;
            mVcs.fireVetoableChange("mostCoding", old_code, new_code);
            mostCoding = new_code;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
    public void setInterviewRounds(Integer new_interview)
    {
        try 
        {
            Integer old_interviewrounds = interviewRounds;
            mVcs.fireVetoableChange("interviewRounds", old_interviewrounds, new_interview);
            interviewRounds = new_interview;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
    public void setInterview(String new_inter)
    {
        try 
        {
            String old_inter = mostInterview;
            mVcs.fireVetoableChange("mostInterview", old_inter, new_inter);
            mostVerbal = new_inter;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
    public void setDifficulty(String diff)
    {
        try 
        {
            String old_diff = difficulty;
            mVcs.fireVetoableChange("difficulty", old_diff, diff);
            mostVerbal = diff;
        } 
        catch (PropertyVetoException e) 
        {
            e.printStackTrace();
        }
    }
   
    public void addPropertyChangeListener(PropertyChangeListener listener) 
    {
        mPcs.addPropertyChangeListener(listener);
    }
    
    public void removePropertyChangeListener(PropertyChangeListener listener) 
    {
        mPcs.removePropertyChangeListener(listener);
    }

    public void addVetoableChangeListener(String email,VetoableChangeListener listener) 
    {
        mVcs.addVetoableChangeListener(listener);
    }
    
    public void removeVetoableChangeListener(String email,VetoableChangeListener listener) 
    {
        mVcs.removeVetoableChangeListener(listener);
    }
}