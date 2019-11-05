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
        [Required]
        public virtual Units Units { get; set; }

        [Required, Display(Name = "Student ID")]
        public int StudentID { get; set; }

        [Display(Name = "Student Photo")]
        public byte StudentPhoto { get; set; }

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

        [NotMapped] public int UnitScore => Convert.ToInt32((Assessment1Score + Assessment2Score + Exam) / 3);

        public string Grade
        {
            get
            {
                if (UnitScore < 60)
                    return "N";
                else if (UnitScore < 80)
                    return "Cr";
                else
                {
                    return "HD";
                }
            }
        }

    }
}