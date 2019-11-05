using System.Web;
using AppDevAssignment26043617.Models;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

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

            Initialiser.GetUnits().ForEach(x => context.Units.AddOrUpdate(x));

            var roles = context.Roles.ToList();

            var roleStore = new RoleStore<IdentityRole>(context);
            var roleManager = new RoleManager<IdentityRole>(roleStore);

            if (roles.All(x => x.Name != "Admin"))
            {
                roleManager.Create(AdminRole);
            }

            if (roles.All(x => x.Name != "Event Manager"))
            {
                roleManager.Create(EventManager);
            }

            var userStore = new UserStore<ApplicationUser>(context);
            var userManager = new ApplicationUserManager(userStore);

            if (!context.Users.Any(x => x.Email == "admin@ecu.com"))
            {
                var user = new ApplicationUser()
                {
                    Email = "admin@ecu.com",
                    UserName = "Administrator"
                };

                userManager.Create(user, "Admin#1");
                context.Users.AddOrUpdate(user);
                userManager.AddToRole(user.Id, "Admin");
            }

            ApplicationUser item = context.Users.FirstOrDefault();

            if (!context.Users.Any(x => x.Email == "manager@ecu.com"))
            {
                var user = new ApplicationUser()
                {
                    Email = "manager@ecu.com",
                    UserName = "Event Manager"
                };

                userManager.Create(user, "Manager#1");
                context.Users.AddOrUpdate(user);
                userManager.AddToRole(user.Id, "Event Manager");
            }
        }

        private IdentityRole AdminRole => new IdentityRole("Admin");
        private IdentityRole EventManager => new IdentityRole("Event Manager");
    }
}
