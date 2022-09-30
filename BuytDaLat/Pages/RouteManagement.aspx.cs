using BusinessLayer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BuytDaLat.Pages
{
    public partial class Route : System.Web.UI.Page
    {
        public List<BusRoute> ls = new List<BusRoute>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.hPageIndex.Value = "0";
                this.drlPageNumber.Text = Global.g_PageSize;
                this.LoadTimKiem(0);
                this.LoadResponsibleUnit();
                this.LoadEditButton();
            }
            this.LoadBusRoute();
            this.LoadPhanTrang();

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
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void btXoa_Click(object sender, EventArgs e)
        {
            string selected = Request.Form["cbID"];
            if (selected != null && selected.Trim().Length > 0)
            {
                List<string> list = selected.Split(',').ToList();
                BusRouteManagerSubsystem.Instance.busRouteFuns.Delete_IDs(list);
            }
            Page.Response.Redirect(Page.Request.Url.ToString(), true);
        }

        protected void drlPageNumber_SelectedIndexChanged(object sender, EventArgs e)
        {
            int PageIndex = int.Parse(this.hPageIndex.Value);
            this.LoadTimKiem(PageIndex);
            Global.g_PageSize = this.drlPageNumber.SelectedValue;
        }

        private void LoadEditButton()
        {
            try
            {
                int idEdit = int.Parse(Request.QueryString["idedit"]);
                BusRoute obj = BusRouteManagerSubsystem.Instance.busRouteFuns.Select_ID(idEdit);
                if (obj != null)
                {
                    this.txtID.Value = obj.BusRouteID.ToString();
                    this.txtRouteName.Value = obj.RouteName;
                    this.txtRouteNumber.Value = obj.RouteName;
                    this.txtRouteName.Value = obj.RouteName;
                    this.ddlResponsibleUnit.SelectedValue = obj.ResponsibleUnitID.ToString();
                    this.txtOperationType.Value = obj.OperationType;
                    this.txtOperationTime.Value = obj.OperationTime;
                    this.txtFare.Value = obj.Fare.ToString();
                    this.txtBusesAmount.Value = obj.BusesAmount.ToString();
                    this.txtBusesTime.Value = obj.BusesTime;
                    this.txtBusesSpace.Value = obj.BusesSpace;
                }
            }
            catch { }
        }

        private void LoadPhanTrang()
        {
            try
            {
                int TotalRows = int.Parse(this.hTotalRows.Value);
                int PageSize = int.Parse(this.drlPageNumber.SelectedValue);
                int count = TotalRows / PageSize;
                if (TotalRows % PageSize > 0)
                    count++;
                if (count > 7)
                    count = 7;
                this.pnButton.Controls.Clear();
                for (int i = 0; i < count; i++)
                {
                    Button bt = new Button()
                    {
                        ID = "bt" + i,
                        Text = (i + 1).ToString()
                    };
                    bt.Attributes.Add("runat", "server");
                    bt.Click += new EventHandler(this.btPhanTrang_Click);
                    bt.CssClass = "btn btn-dark ml-2";
                    this.pnButton.Controls.Add(bt);

                }

            }
            catch { }
        }

        protected void btPhanTrang_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            int PageIndex = int.Parse(this.hPageIndex.Value);
            switch (btn.ID)
            {
                case "btTruoc":
                    PageIndex = int.Parse(this.hPageIndex.Value);
                    PageIndex = (PageIndex > 0) ? PageIndex - 1 : 0;
                    this.hPageIndex.Value = PageIndex.ToString();
                    break;
                case "btSau":
                    int PageSize = int.Parse(this.drlPageNumber.SelectedValue);
                    int TotalRows = int.Parse(hTotalRows.Value);
                    PageIndex = ((PageIndex + 1) * PageSize < TotalRows) ? PageIndex + 1 : PageIndex;
                    break;
                default:
                    PageIndex = int.Parse(btn.Text) - 1;
                    break;
            }
            this.hPageIndex.Value = PageIndex.ToString();
            this.LoadTimKiem(PageIndex);
            this.UpdatePanel1.Update();
        }

        private void LoadTimKiem(int pIndex)
        {
            int PageSize = int.Parse(this.drlPageNumber.SelectedValue);
            int TotalRows = 0;
            this.ls = BusRouteManagerSubsystem.Instance.busRouteFuns.Find_KeyWord(this.txtKeyword.Value, PageSize, pIndex, out TotalRows);
            this.hTotalRows.Value = TotalRows.ToString();
            if (ls == null || ls.Count == 0)
            {
                this.pnTable.Visible = false;
                this.pnPhanTrang.Visible = false;
    
            }
        }

        protected void btTim_Click(object sender, EventArgs e)
        {
            this.pnPhanTrang.Visible = true;
            this.Label1.Text = "";

            this.hPageIndex.Value = "0";
            this.LoadTimKiem(0);
            this.LoadPhanTrang();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BusRoute obj = this.GetValue();
            BusRouteManagerSubsystem.Instance.busRouteFuns.InsertUpdate(obj);
        }

        protected void btnOpenFormAdd_Click1(object sender, EventArgs e)
        {
            this.Panel1.Visible = true;
            this.btnOpenFormAdd.Visible = false;
        }

        protected void btnCancelFormAdd_Click(object sender, EventArgs e)
        {
            this.Panel1.Visible = false;
            this.btnOpenFormAdd.Visible = true;
        }
    }
}