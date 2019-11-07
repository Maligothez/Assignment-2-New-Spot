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
            var _db = new ApplicationDbContext();

            var unitId = Request.QueryString["id"].ToInteger();

            var unit = _db.Units.FirstOrDefault(x => x.UnitId == unitId);

            if (unit == null)
            {
                Response.Redirect("ViewReports.aspx");
                return;
            }

            UnitLabel.Text = $"{unit.UnitCode}";

            var data = GetResults(unitId);

            ResultsLabel.Text = $"Results: {data.Count}";
            var avg = (int)Math.Round((double) data.Sum(x => x.UnitScore) / data.Count, 0);
            GradeLabel.Text = $"Unit Avg: {avg} {Results.CalcGrade(avg)}";
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