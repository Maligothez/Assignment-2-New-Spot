using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AppDevAssignment26043617.Models
{
    public class Results
    {
        [Key]
        public int ResultsID { get; set; }

        [Required]
        public int UnitId { get; set; }
        public virtual Units Unit { get; set; }

        [Required, Display(Name = "Student ID")]
        public int StudentID { get; set; }

        [Display(Name = "Student Photo")]
        public int? FileId { get; set; }
        public virtual FileItem File { get; set; }

        [Required]
        public int Semester { get; set; }

        [Required]
        public int Year { get; set; }

        [Required, Display(Name = "Assessment 1 Score")]
        public int Assessment1Score { get; set; }

        [Required, Display(Name = "Assessment 2 Score")]
        public int Assessment2Score { get; set; }

        [Required, Display(Name = "Exam Score")]
        public int Exam { get; set; }

        [NotMapped] public int UnitScore => Assessment1Score + Assessment2Score + Exam;

        [NotMapped]
        public string Grade => CalcGrade(UnitScore);

        public static string CalcGrade(int score)
        {
            if (score < 50)
                return "N";
            else if (score < 60)
                return "P";
            else if (score < 70)
                return "Cr";
            else if (score < 80)
                return "D";
            else
            {
                return "HD";
            }
        }

        [NotMapped] public string FilePath => FileId != null ? $"/api/files/{FileId}" : "";
    }
}