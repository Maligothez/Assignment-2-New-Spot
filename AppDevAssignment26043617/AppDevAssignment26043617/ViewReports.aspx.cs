using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617
{
    public partial class ViewReports : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IEnumerable<Units> GetResults()
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Units> GetUnits()
        {
            var _db = new ApplicationDbContext();

            IQueryable<Units> query = _db.Units;

            return query;
        }

        public IEnumerable<int> GetStudents()
        {
            var _db = new ApplicationDbContext();

            return _db.Results.Select(y => y.StudentID).Distinct().ToList();
        }
    }
}