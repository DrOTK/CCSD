using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CCSD.Startup))]
namespace CCSD
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
