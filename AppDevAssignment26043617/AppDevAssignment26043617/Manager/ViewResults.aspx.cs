using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;
using System.Web.ModelBinding;

namespace AppDevAssignment26043617
{
    public partial class ViewResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            unitResultsView.DataSource = GetResults();
            unitResultsView.DataBind();
        }

        public List<Results> GetResults()
        {
            var _db = new ApplicationDbContext();

            IQueryable<Results> query = _db.Results;

            if (filterStudent.SelectedIndex != 0)
            {
                var studentId = filterStudent.Text.ToInteger();
                query = query.Where(x => x.StudentID == studentId);
            }

            if (filterUnit.SelectedIndex != 0)
            {
                var unitId = filterUnit.SelectedItem.Value.ToInteger();
                query = query.Where(x => x.UnitId == unitId);
            }

            if (filterSemester.SelectedIndex != 0)
            {
                var semesterValue = filterSemester.SelectedItem.Value.ToInteger();
                query = query.Where(x => x.Semester == semesterValue);
            }

            if (filterYear.SelectedIndex != 0)
            {
                var yearValue = filterYear.SelectedItem.Value.ToInteger();
                query = query.Where(x => x.Year == yearValue);
            }

            var data = query.ToList();

            ResultsLabel.Text = $"Results: {data.Count}";
            if (data.Count == 0)
                GradeLabel.Text = "Grade Avg: N/A";
            else
            {
                var avg = (int) Math.Round((double) data.Sum(x => x.UnitScore) / data.Count, 0);
                GradeLabel.Text = $"Grade Avg: {avg} {Results.CalcGrade(avg)}";
            }

            return data;
        }

        public IEnumerable<string> GetStudentIds()
        {
            var db = new ApplicationDbContext();

            var studentIds = db.Results.Select(y => y.StudentID).Distinct().ToList();

            return studentIds.Select(x => x.ToString("D8")).ToList();
        }

        public IEnumerable<Units> GetUnitCodes()
        {
            var db = new ApplicationDbContext();

            return db.Units.ToList();
        }

        public IEnumerable<int> GetSemesters()
        {
            return new List<int>{1,2};
        }

        public IEnumerable<int> GetYears()
        {
            var db = new ApplicationDbContext();

            return db.Results.Select(y => y.Year).Distinct().ToList();
        }
    }
}