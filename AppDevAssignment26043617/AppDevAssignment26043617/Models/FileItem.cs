using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace AppDevAssignment26043617.Models
{
    public class FileItem
    {
        [Key]
        public int FileId { get; set; }

        public string Name { get; set; }
        public string Type { get; set; }
        public long Size { get; set; }

        public byte[] Content { get; set; }
    }
}