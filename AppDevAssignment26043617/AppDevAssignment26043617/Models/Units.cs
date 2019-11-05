using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace AppDevAssignment26043617.Models
{
    public class Units
    {
        [Key]
        public int UnitId { get; set; }

        [Required, StringLength(8), Index]
        public string UnitCode { get; set; }

        [Required, StringLength(100)]
        public string UnitTitle { get; set; }

        [Required, StringLength(50)]
        public string UnitCoordinator { get; set; }

        public byte[] UnitOutline { get; set; }

        public virtual ICollection<Results> Results { get; set; }

    }
}