using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class BusRouteFuns
    {
        public List<BusRoute> Select_All()
        {
            using (var db = new ROUTE_MANAGEMENTEntities())
            {
                var ls = db.BusRoutes.AsQueryable();
                if (ls != null && ls.Any())
                    return ls.ToList();
                return new List<BusRoute>();
            }
        }

        public BusRoute Select_ID(int id)
        {
            using(var db = new ROUTE_MANAGEMENTEntities())
            {
                return db.BusRoutes.FirstOrDefault(s => s.BusRouteID == id);
            }
        }

        public List<BusRoute> Select_IDs(List<string> IDs)
        {
            using(var db = new ROUTE_MANAGEMENTEntities())
            {
                var ls = db.BusRoutes.AsQueryable();
                if (ls != null && ls.Any())
                {
                    ls = ls.Where(s => IDs.Contains(s.BusRouteID.ToString()));
                    return ls.ToList();
                }
                return new List<BusRoute>();
            }
        }
    }
}
