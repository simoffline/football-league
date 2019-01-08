using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(KN133PfisterSYelögrüE.Startup))]
namespace KN133PfisterSYelögrüE
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
