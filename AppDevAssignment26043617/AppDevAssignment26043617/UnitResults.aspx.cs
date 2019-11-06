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
    public partial class UnitResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public List<Results> GetResults([QueryString("id")] int? unitId)
        {
            var _db = new ApplicationDbContext();

            IQueryable<Results> query = _db.Results;
            if (unitId.HasValue && unitId > 0)
            {
                return query.Where(p => p.UnitId == unitId).ToList();
            }

            return new List<Results>();
        }
    }
}