using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GestorMusical.Startup))]
namespace GestorMusical
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
