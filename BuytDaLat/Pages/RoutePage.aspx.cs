using BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuytDaLat.Pages
{
    public partial class RoutePage : System.Web.UI.Page
    {
        public List<BusRoute> route = new List<BusRoute>();
        protected void Page_Load(object sender, EventArgs e)
        {
            route = BusRouteManagerSubsystem.Instance.busRouteFuns.Select_All();
        }

        private void LoadTimKiem()
        {
            this.route = BusRouteManagerSubsystem.Instance.busRouteFuns.Find_Route(this.txtSearch.Value);
            if (route == null || route.Count == 0)
            {
                this.Label1.Text = "Không tìm thấy dữ liệu.";
            }
        }

        protected void btnRouView_Click(object sender, EventArgs e)
        {
            LoadTimKiem();
        }
    }
}