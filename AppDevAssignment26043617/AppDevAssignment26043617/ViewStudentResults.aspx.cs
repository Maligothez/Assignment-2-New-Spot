using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617
{
    public partial class ViewStudentResults : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var studentId = Request.QueryString["id"].ToInteger();

            studentLabel.Text = $"Student ID: {studentId}";

            var data = GetResults(studentId).ToList();

            ResultsLabel.Text = $"Results: {data.Count}";
            var avg = (int)Math.Round((double)data.Sum(x => x.UnitScore) / data.Count, 0);
            GradeLabel.Text = $"Course Avg: {avg} {Results.CalcGrade(avg)}";
        }

        public IEnumerable<Results> GetResults([QueryString("id")] int studentId)
        {
            var db = new ApplicationDbContext();

            return db.Results.Where(x => x.StudentID == studentId);
        }
    }
}