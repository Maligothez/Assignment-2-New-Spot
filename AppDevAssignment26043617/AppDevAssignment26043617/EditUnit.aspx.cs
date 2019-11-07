using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617
{
    public partial class EditUnit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (Request.QueryString.Count == 0)
                {
                    Response.Redirect("ManageUnits.aspx");
                    return;
                }

                var unitString = Request.QueryString["id"];

                if (string.IsNullOrWhiteSpace(unitString))
                {
                    Response.Redirect("ManageUnits.aspx");
                    return;
                }
                try
                {
                    var unitId = Convert.ToInt32(unitString);

                    var _db = new ApplicationDbContext();

                    Units unitRequest = _db.Units.FirstOrDefault(x => x.UnitId == unitId);

                    if (unitRequest == null)
                    {
                        Response.Redirect("ManageUnits.aspx");
                        return;
                    }

                    unitCodeLabel.Text = unitRequest.UnitCode;
                    UnitTitleBox.Text = unitRequest.UnitTitle;
                    CoordinatorBox.Text = unitRequest.UnitCoordinator;

                    if (unitRequest.FileId != null)
                    {
                        existingFileLink.NavigateUrl = unitRequest.FilePath;
                        existingFileLink.Text = unitRequest.File.Name;
                        existingFileLink.Visible = true;
                    }
                }
                catch
                {
                    Response.Redirect("ManageUnits.aspx");
                    return;
                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var _db = new ApplicationDbContext();

                var unitId = Convert.ToInt32(Request.QueryString["id"]);

                var unit = _db.Units.FirstOrDefault(x => x.UnitId == unitId);

                if (unit == null)
                    return;

                unit.UnitTitle = UnitTitleBox.Text?.Trim();
                unit.UnitCoordinator = CoordinatorBox.Text?.Trim();

                if (unitFileUpload.HasFile)
                {
                    unit.File = new FileItem
                    {
                        Name = unitFileUpload.FileName,
                        Size = unitFileUpload.FileBytes.Length,
                        Type = Path.GetExtension(unitFileUpload.FileName),
                        Content = unitFileUpload.FileBytes
                    };
                }

                _db.SaveChanges();

                Response.Redirect("ManageUnits.aspx");
            }
        }

        public Units GetUnit([QueryString("id")] int? unitId)
        {
            if (unitId == null)
                return null;

            var _db = new ApplicationDbContext();

            return _db.Units.Find(unitId);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                var _db = new ApplicationDbContext();

                var unitId = Convert.ToInt32(Request.QueryString["id"]);

                var unit = _db.Units.Find(unitId);

                if (unit == null)
                    return;

                _db.Units.Remove(unit);

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