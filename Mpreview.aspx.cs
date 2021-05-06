using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace user_Registration
{
    public partial class Mpreview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             for(int i=0;i<Request.Files.Count;i++)
            {
                HttpPostedFile file=Request.Files[i];
                if(file.ContentLength>0)
                {
                    string fname=Path.GetFileName(file.FileName);
                    file.SaveAs(Server.MapPath(Path.Combine("~/Savedimages/",fname)));
                }
                    Label1.Text = Request.Files.Count+" Images Has Been Saved Successfully and let you know through mail";
                
               
             }
        }
    }
}