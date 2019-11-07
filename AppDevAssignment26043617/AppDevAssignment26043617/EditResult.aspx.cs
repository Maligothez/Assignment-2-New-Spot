using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617
{
    public partial class EditResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var queryString = Request.QueryString["id"];

            if (string.IsNullOrWhiteSpace(queryString))
            {
                Response.Redirect("ManageResults.aspx");
                return;
            }
            try
            {


                var queryId = Convert.ToInt32(queryString?.Trim());
                var db = new ApplicationDbContext();
                var resultItem = db.Results.FirstOrDefault(x => x.ResultsID == queryId);

                if (resultItem == null)
                {
                    Response.Redirect("ManageResults.aspx");
                    return;
                }

                UnitCodeSelect.Text = resultItem.Unit.UnitId.ToString();
                StudentIdBox.Text = resultItem.StudentID.ToString();
                SemesterBox.Text = resultItem.Semester.ToString();
                YearBox.Text = resultItem.Year.ToString();
                Assessment1Box.Text = resultItem.Assessment1Score.ToString();
                Assessment2Box.Text = resultItem.Assessment2Score.ToString();
                ExamBox.Text = resultItem.Exam.ToString();

                if (resultItem.FileId != null)
                {
                    existingImageBox.ImageUrl = resultItem.FilePath;
                    existingImageBox.Visible = true;
                }
            }
            catch
            {
                Response.Redirect("ManageResults.aspx");
                return;
            }
        }

            protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var _db = new ApplicationDbContext();

                var resultId = Convert.ToInt32(Request.QueryString["id"]);

                var result = _db.Results.FirstOrDefault(x => x.ResultsID == resultId);

                if (result == null)
                    return;

                result.StudentID = StudentIdBox.Text.ToInteger();
                result.Semester = SemesterBox.Text.ToInteger();
                result.Year = YearBox.Text.ToInteger();
                result.Assessment1Score = Assessment1Box.Text.ToInteger();
                result.Assessment2Score = Assessment2Box.Text.ToInteger();
                result.Exam = ExamBox.Text.ToInteger();
                result.UnitId = UnitCodeSelect.SelectedItem.Value.ToInteger();

                if (StudentPhoto.HasFile)
                {
                    result.File = new FileItem
                    {
                        Name = StudentPhoto.FileName,
                        Size = StudentPhoto.FileBytes.Length,
                        Type = Path.GetExtension(StudentPhoto.FileName),
                        Content = StudentPhoto.FileBytes
                    };
                }

                _db.SaveChanges();

                Response.Redirect("ManageResults.aspx");
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var _db = new ApplicationDbContext();

                var resultId = Convert.ToInt32(Request.QueryString["id"]);

                var result = _db.Units.Find(resultId);

                if (result == null)
                    return;

                _db.Units.Remove(result);

                _db.SaveChanges();

                Response.Redirect("ManageResults.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageResults.aspx");
        }

        public IEnumerable<Units> GetUnits()
        {
            var db = new ApplicationDbContext();

            return db.Units.ToList();
        }
    }
}