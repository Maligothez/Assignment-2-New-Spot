using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Data.Entity;
using AppDevAssignment26043617.Models;
using Serilog;
using Serilog.Events;

namespace AppDevAssignment26043617
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // Initialize the product database.
            //Database.SetInitializer(new Initialiser());

            Log.Logger = new LoggerConfiguration()
                .MinimumLevel.Debug()
                .WriteTo.Console()
                .WriteTo.MSSqlServer(
                    System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString,
                    "Log", autoCreateSqlTable: true)
                .CreateLogger();
        }
    }
}