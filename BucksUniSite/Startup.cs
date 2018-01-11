using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BucksUniSite.Startup))]
namespace BucksUniSite
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
