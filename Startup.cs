using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(user_Registration.Startup))]
namespace user_Registration
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) 
        {
            ConfigureAuth(app);
        }
    }
}
