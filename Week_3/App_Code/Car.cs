using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Car
/// </summary>
public class Car
{

    public int m_ID;
    String m_Make;
    String m_Model;
    Double m_Price;
    int m_MPGC;
    int m_MPGH;

    public Car(int ID, String Make, String Model, double Price, int MPGC, int MPGH)
    {
        m_ID = ID;
        m_Make = Make;
        m_Model = Model;
        m_Price = Price;
        m_MPGC = MPGC;
        m_MPGH = MPGH;
    }

    
       
}
    
