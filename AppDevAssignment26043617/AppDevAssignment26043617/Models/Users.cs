using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace AppDevAssignment26043617.Models
{
    public class Users
    {
        [ScaffoldColumn(false)]
        public int UserID { get; set; }

        [Required, StringLength(100), Display(Name = "Email")]
        public string UserEmail { get; set; }

        [Required, StringLength(20), Display(Name = "Password")]
        public string UserPassword { get; set; }

        [Required]
        public int UserType { get; set; }

    }
}