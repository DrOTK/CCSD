using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class EditCar : System.Web.UI.Page
{
    private String selected_car_id;

    protected string oldInfo;

    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        {
            tbMake.Text = Request.QueryString["Make"];
            tbModel.Text = Request.QueryString["Model"];
            tbPrice.Text = Request.QueryString["Price"];
            tbMPGC.Text = Request.QueryString["mpgc"];
            tbMPGH.Text = Request.QueryString["mpgh"];
            tbCID.Text = Request.QueryString["CID"];
        }

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        MySqlConnection con = (MySqlConnection)Session["MySqlConnection"];
        String Make = tbMake.Text;
        String Model = tbModel.Text;
        String Price = tbPrice.Text;
        String MPGC = tbMPGC.Text;
        String MPGH = tbMPGH.Text;
        String CID = tbCID.Text;

        String sql_command = "update Car set ID,Make,Model,Price,mpgc,mpgh = '" + tbCID + "' '" + tbMake.Text + "' '" + tbModel.Text +
            "' '" + tbPrice + "' '" + tbMPGC + "' '" + tbMPGH + "'"; 

        MySqlCommand cmd = new MySqlCommand(sql_command, con);
        cmd.ExecuteNonQuery();
        Response.Redirect("Default.aspx");
        
       
    }
}