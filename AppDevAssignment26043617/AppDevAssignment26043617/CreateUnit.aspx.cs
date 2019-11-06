using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617
{
    public partial class CreateUnit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var _db = new ApplicationDbContext();

                var unit = new Units
                {
                    UnitCode = UnitCodeBox.Text?.Trim(),
                    UnitTitle = UnitTitleBox.Text?.Trim(),
                    UnitCoordinator = CoordinatorBox.Text?.Trim()
                };

                _db.Units.Add(unit);

                _db.SaveChanges();

                Response.Redirect("ManageUnits.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ManageUnits.aspx");
        }
    }
}