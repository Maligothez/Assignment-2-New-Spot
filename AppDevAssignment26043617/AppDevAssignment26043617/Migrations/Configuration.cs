using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617.Migrations
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Migrations;
    using System.Linq;

    internal sealed class Configuration : DbMigrationsConfiguration<AppDevAssignment26043617.Models.ApplicationDbContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
        }

        protected override void Seed(AppDevAssignment26043617.Models.ApplicationDbContext context)
        {
            //  This method will be called after migrating to the latest version.

            //  You can use the DbSet<T>.AddOrUpdate() helper extension method 
            //  to avoid creating duplicate seed data.

            Initialiser.GetUsers().ForEach(x => context.Users.AddOrUpdate(x));
            Initialiser.GetUnits().ForEach(x => context.Units.AddOrUpdate(x));
        }
    }
}
