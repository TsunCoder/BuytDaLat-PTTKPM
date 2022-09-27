using BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuytDaLat.Pages
{
    public partial class Route : System.Web.UI.Page
    {
        public List<BusRoute> ls = new List<BusRoute>();

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadResponsibleUnit();
            LoadBusRoute();
            
        }

        private void LoadBusRoute()
        {
            ls = BusRouteManagerSubsystem.Instance.busRouteFuns.Select_All();
        }

        private void LoadResponsibleUnit()
        {
            this.ddlResponsibleUnit.Items.Clear();
            this.ddlResponsibleUnit.DataSource = BusRouteManagerSubsystem.Instance.responsibleUnitFuncs.Select_All();
            this.ddlResponsibleUnit.DataTextField = "ReponsibleUnitName";
            this.ddlResponsibleUnit.DataValueField = "ResponsibleUnitID";
            this.DataBind();
        }

        private BusRoute GetValue()
        {
            BusRoute obj = new BusRoute();
            obj.BusRouteID = this.txtID.Value.Length > 0 ? int.Parse(this.txtID.Value) : -1;
            obj.RouteNumber = this.txtRouteNumber.Value;
            obj.RouteName = this.txtRouteName.Value;
            obj.ResponsibleUnitID = int.Parse(this.ddlResponsibleUnit.SelectedValue);
            obj.OperationType = this.txtOperationType.Value;
            obj.OperationTime = this.txtOperationTime.Value;
            obj.Fare = int.Parse(this.txtFare.Value);
            obj.BusesAmount = int.Parse(this.txtBusesAmount.Value);
            obj.BusesTime = this.txtBusesTime.Value;
            obj.BusesSpace = this.txtBusesSpace.Value;
            return obj;
        }

        protected void btLuu_Click(object sender, EventArgs e)
        {
            BusRoute obj = this.GetValue();
            BusRouteManagerSubsystem.Instance.busRouteFuns.InsertUpdate(obj);
        }
    }
}