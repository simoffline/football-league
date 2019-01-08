using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using KN133PfisterSYelögrüE.Models;
using System.Data.Entity;
using System.Data.SqlClient;

namespace KN133PfisterSYelögrüE.Controllers
{
    public class TorschuetzenController : Controller
    {
        // GET: Torschützen
        public ActionResult Torschuetzen()
        {
            string constring = "Data Source=LAPTOPSP\\SQLEXPRESS;Initial Catalog=db_fussballliga;Integrated Security=True";
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                string query = "SELECT spielername, anzahltore FROM dbo.tbl_spieler ORDER BY anzahltore";
                SqlCommand command;
                SqlDataReader reader;
                command = new SqlCommand(query, con);
                reader = command.ExecuteReader();
                int i = 0;
                List<Torschuetzen> torschütze = new List<Torschuetzen>();
                while (reader.Read())
                {
                    torschütze.Add(new Torschuetzen(){ Name = reader.GetString(i), AnzTore = reader.GetByte(i + 1)});
                    i++;
                }
                reader.Close();
            }
            con.Close();
            return View(torschütze);

        }
    }
}