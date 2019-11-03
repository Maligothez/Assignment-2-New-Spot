using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace AppDevAssignment26043617.Models
{
    public class Result
    {
        [Key]
        public int ResultsID { get; set; }

        [Required]
        public int UnitId { get; set; }
        [Required]
        public virtual Unit Unit { get; set; }

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





    }
}