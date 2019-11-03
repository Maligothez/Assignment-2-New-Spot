using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace AppDevAssignment26043617.Models
{
    public class Results
    {
        [Required]
        public string UnitCode { get; set; }

        [Required]
        public virtual  Units Units { get; set; }
        
        [Required, Display(Name = "Student ID")]
        public int StudentID { get; set; }

        [Display(Name = "Student Photo")]
        public byte StudentPhoto { get; set; }

        [Required]
        public int Semester { get; set; }

        [Required]
        public int Year { get; set; }

        [Required, Display(Name = "Assessment 1 Score")]
        public int Assesment1Score { get; set; }

        [Required, Display(Name = "Assessment 2 Score")]
        public int Assesment2Score { get; set; }

        [Required, Display(Name = "Exam Score")]
        public int Exam { get; set; }





    }
}