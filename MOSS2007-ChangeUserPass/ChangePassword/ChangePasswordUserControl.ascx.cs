using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using Microsoft.SharePoint;
using Microsoft.SharePoint.WebControls;
using System.DirectoryServices.AccountManagement;
using System.Web.Hosting;

namespace MOSS2007_ChangeUserPass.ChangePassword
{
    public partial class ChangePasswordUserControl : UserControl
    {

        string strLoginName = SPContext.Current.Web.CurrentUser.LoginName;


        protected void Page_Load(object sender, EventArgs e)
        {
            LblUsername1.Text = strLoginName;
        }



        private void ChangePassword(string NewPass)
        {

            try
            {
                using (HostingEnvironment.Impersonate())
                {
                    using (var context = new PrincipalContext(ContextType.Domain))
                    using (var user = UserPrincipal.FindByIdentity(
                                      context,
                                      IdentityType.SamAccountName,
                                      strLoginName))
                    {
                        user.SetPassword(NewPass);
                        LblMsg.Text = "Password changed successfully";
                    }
                }
            }
            catch (Exception Ex)
            {
                LblMsg.Text = Ex.Message + " Unable to change your password. Please contact your Administrator";
            }
        }

        protected void btnChangePwd_Click(object sender, EventArgs e)
        {

            if (txtNewPass1.Text == txtNewPass2.Text)
            {
                ChangePassword(txtNewPass2.Text);
            }
            else
            {
                LblMsg.Text = "Passwords don't match!";
            }
        }
    }
}
