using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace AppDevAssignment26043617.Models
{
    public class SiteContext : DbContext
    {
        public SiteContext() : base("ScoreFinder")
        {
        }
        public DbSet<Users> Users { get; set; }
        public DbSet<Units> Units { get; set; }
        public DbSet<Results> Results { get; set; }

    }
}