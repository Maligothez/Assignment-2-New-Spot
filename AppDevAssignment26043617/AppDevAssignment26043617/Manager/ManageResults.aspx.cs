using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;
using System.Web.ModelBinding;

namespace AppDevAssignment26043617
{
    public partial class ManageResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Results> GetResults()
        {
            var _db = new ApplicationDbContext();

            IQueryable<Results> query = _db.Results;

            return query;
        }
    }
}