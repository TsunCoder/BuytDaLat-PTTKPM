using BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuytDaLat.Pages
{
    public partial class ResponsibleUnitManagement : System.Web.UI.Page
    {
        public List<ResponsibleUnit> ls = new List<ResponsibleUnit>();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadResposible();
        }

        private void LoadResposible()
        {
            ls = BusRouteManagerSubsystem.Instance.responsibleUnitFuncs.Select_All();
        }


        private ResponsibleUnit GetValue()
        {
            ResponsibleUnit obj = new ResponsibleUnit();
            obj.ResponsibleUnitID = this.txtID.Value.Length > 0 ? int.Parse(this.txtID.Value) : -1;
            obj.ReponsibleUnitName = this.txtResbonsilbeName.Value;
            obj.PhoneNumber = this.txtPhoneNumber.Value;
            return obj;
        }

        protected void btLuu_Click(object sender, EventArgs e)
        {
            ResponsibleUnit obj = this.GetValue();
            BusRouteManagerSubsystem.Instance.responsibleUnitFuncs.InsertUpdate(obj);
        }
    }
}