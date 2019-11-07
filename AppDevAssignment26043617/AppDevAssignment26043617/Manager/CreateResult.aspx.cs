using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617
{
    public static class StringExtensions
    {
        public static int ToInteger(this string str)
        {
            if (string.IsNullOrWhiteSpace(str))
            {
                return 0;
            }

            try
            {
                return Convert.ToInt32(str?.Trim());
            }
            catch
            {
                return 0;
            }
        }
    }

    public partial class CreateResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private static string[] validStrings = { ".png", ".jpg", ".jpeg", ".gif" };

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsPostBack && Page.IsValid)
            {
                var _db = new ApplicationDbContext();

                var result = new Results
                {
                    StudentID = StudentIdBox.Text.ToInteger(),
                    Semester = SemesterBox.Text.ToInteger(),
                    Year = YearBox.Text.ToInteger(),
                    Assessment1Score = Assessment1Box.Text.ToInteger(),
                    Assessment2Score = Assessment2Box.Text.ToInteger(),
                    Exam = ExamBox.Text.ToInteger(),
                    UnitId = UnitCodeSelect.SelectedItem.Value.ToInteger(),
                };

                if (StudentPhoto.HasFile)
                {
                    var extension = Path.GetExtension(StudentPhoto.FileName)?.ToLower();

                    if (validStrings.Contains(extension))
                    {
                        result.File = new FileItem()
                        {
                            Content = StudentPhoto.FileBytes,
                            Name = StudentPhoto.FileName,
                            Size = StudentPhoto.FileBytes.Length,
                            Type = extension
                        };
                    }
                }

                _db.Results.Add(result);
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
            var _db = new ApplicationDbContext();

            return _db.Units.ToList();
        }
    }
}