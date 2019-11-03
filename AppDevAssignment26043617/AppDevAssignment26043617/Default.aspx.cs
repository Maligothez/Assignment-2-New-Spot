using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (var db = new ApplicationDbContext())
            {
                var items = db.Results.ToList();

                foreach (var item in items)
                {
                    Console.WriteLine(item);
                }
            }
        }
    }
}