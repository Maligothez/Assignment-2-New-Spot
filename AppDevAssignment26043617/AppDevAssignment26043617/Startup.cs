using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(AppDevAssignment26043617.Startup))]
namespace AppDevAssignment26043617
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
