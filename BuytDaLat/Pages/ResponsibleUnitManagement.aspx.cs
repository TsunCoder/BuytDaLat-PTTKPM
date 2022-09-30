using BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;

namespace BuytDaLat.Pages
{
    public partial class ResponsibleUnitManagement : System.Web.UI.Page
    {
        public List<ResponsibleUnit> ls = new List<ResponsibleUnit>();
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadEdit();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            ResponsibleUnit obj = this.GetValue();
            BusRouteManagerSubsystem.Instance.responsibleUnitFuncs.InsertUpdate(obj);

        }

        private void LoadEdit()
        {
            try
            {
                int idEdit = int.Parse(Request.QueryString["idedit"]);
                ResponsibleUnit obj = BusRouteManagerSubsystem.Instance.responsibleUnitFuncs.Select_ID(idEdit);
                if (obj != null)
                {
                    this.txtPhoneNumber.Value = obj.PhoneNumber;
                    this.txtID.Value = obj.ResponsibleUnitID.ToString();
                    this.txtResbonsilbeName.Value = obj.ReponsibleUnitName;
                }
            }
            catch { }
        }

        protected void btLuu_Click1(object sender, EventArgs e)
        {

            ResponsibleUnit obj = this.GetValue();
            BusRouteManagerSubsystem.Instance.responsibleUnitFuncs.InsertUpdate(obj);
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            string selected = Request.Form["cbID"];
            if (selected != null && selected.Trim().Length > 0)
            {
                List<string> list = selected.Split(',').ToList();
                BusRouteManagerSubsystem.Instance.responsibleUnitFuncs.Delete_IDs(list);
            }

        }
    }
}