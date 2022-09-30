using BusinessLayer;
using System;

namespace BuytDaLat.Pages
{
    public partial class RouteDetail : System.Web.UI.Page
    {
        public BusRoute br = null;
        public ResponsibleUnit ru = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                int id = int.Parse(Request.QueryString["id"]);
                br = BusRouteManagerSubsystem.Instance.busRouteFuns.Select_ID(id);
                int idRu = br.ResponsibleUnitID.GetValueOrDefault(0);
                ru = BusRouteManagerSubsystem.Instance.responsibleUnitFuncs.Select_ID(idRu);
            }
            catch { Response.Redirect("/Pages/RoutePage"); };

        }

    }
}