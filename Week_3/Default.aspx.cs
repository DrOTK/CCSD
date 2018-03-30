using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection con;
    private bool m_ConnectionOpen;

    protected void Page_Load(object sender, EventArgs e)
    {
        m_ConnectionOpen = false;

        String cnx = "Database=Dealership; Data Source=LocalHost;User Id=root;SslMode=none";
        con = new MySqlConnection(cnx);

        try
        {
            con.Open();
            m_ConnectionOpen = true;
        } catch(Exception ex)
        {
            Response.Write("The connection could not be opened -" + ex.ToString());
        }
        if(con.State == System.Data.ConnectionState.Open)
        {
            Session["MySqlConnection"] = con; // please store the connection before accessing it from another page
            Response.Write("Connection Established!<br/>");
            String query = "SELECT * from Car";
            MySqlCommand cmd = new MySqlCommand(query, con);
            MySqlDataReader rdr = cmd.ExecuteReader();
            while(rdr.Read() )
            {
                String mMake = rdr["Make"].ToString();
                String mModel = rdr["Model"].ToString();
                String mPrice = rdr["Price"].ToString();
                String mMpgc = rdr["mpgc"].ToString();
                String mMpgh = rdr["mpgh"].ToString();

                String entry = "<tr>" + "<td>" + mMake + " ";
                entry +=  "<td>" + mModel + " " + "</td>";
                entry += "<td>" + "$" + mPrice + " " + "</td>";
                entry += "<td>" + mMpgc + "mi. " +"</td>";
                entry += "<td>" + mMpgh + "mi" + "</td>" + "</tr>" + "<br/>";


                Response.Write(entry);
            }
            rdr.Close();
            Response.Write("</table>");
        }
        else
        {

            Response.Redirect("Error.aspx");
            Response.Write(con.State.ToString() + "<br/>");
        }
    }




    protected void BtnAddStudent_Click(object sender, EventArgs e)
    {
        Response.Redirect("Register.aspx");
    }

    protected void btnEditCar_Click(object sender, EventArgs e)
    {


    }
}