﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class EditCar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        MySqlConnection con = (MySqlConnection)Session["MySqlConnection"];
        if (con.State != System.Data.ConnectionState.Open)
        {
            Session["Error Time!"] = "MySqlConnection is disconnected";
            Response.Redirect("Error.aspx");
            return;
        }

        String Make = tbMake.Text;
        String Model = tbModel.Text;
        String Price = tbPrice.Text;
        String MPGC = tbMPGC.Text;
        String MPGH = tbMPGH.Text;

        String query = @"update Car set(Make,Model,Price,mpgc,mpgh) values('" + Make + "','" + Model + "','" + Price
            + "','" + MPGC + "','" + MPGH + "')";

        MySqlCommand cmd = new MySqlCommand(query, con);
        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception exep)
        {
            String error = exep.Message;
            Session["Error Time!"] = error;
            Response.Redirect("Error.aspx");
            return;
        }
        Response.Redirect("Default.aspx");
        return;
    }
}