using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AppDevAssignment26043617.Models;

namespace AppDevAssignment26043617
{
    public partial class EditResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var queryString = Request.QueryString["id"];

            if (string.IsNullOrWhiteSpace(queryString))
            {
                Response.Redirect("ManageResults.aspx");
                return;
            }

            var queryId = Convert.ToInt32(queryString?.Trim());
            var db = new ApplicationDbContext();
            var resultItem = db.Results.FirstOrDefault(x => x.ResultsID == queryId);

            if (resultItem == null)
            {
                Response.Redirect("ManageResults.aspx");
                return;
            }

            UnitCodeSelect.Text = resultItem.Unit.UnitId.ToString();

            if (resultItem.FileId != null)
            {
                existingImageBox.ImageUrl = resultItem.FilePath;
                existingImageBox.Visible = true;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Units> GetUnits()
        {
            var db = new ApplicationDbContext();

            return db.Units.ToList();
        }
    }
}