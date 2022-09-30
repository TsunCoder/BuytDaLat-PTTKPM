using System;
using System.Collections.Generic;
using System.Data.Entity;
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

        public List<BusRoute> Select_By(string ColumnName, string Value)
        {
            using(var db = new ROUTE_MANAGEMENTEntities())
            {
                ColumnName = ColumnName.ToLower();
                Value = Value.ToLower();
                string sql = "Select * From BusRoutes Where CONVERT(nvarchar, " + ColumnName + ") = '" + Value + "'";
                var ls = db.BusRoutes.SqlQuery(sql);
                if (ls != null && ls.Any())
                    return ls.ToList<BusRoute>();
                return new List<BusRoute>();
            }
        }

        public List<BusRoute> Select_By(string ColumnName, string Value, int PageSize, int PageIndex, out int TotalRows)
        {
            TotalRows = 0;
            using (var db = new ROUTE_MANAGEMENTEntities())
            {
                ColumnName = ColumnName.ToLower();
                Value = Value.ToLower();
                string sql = "Select * From BusRoutes Where CONVERT(nvarchar," + ColumnName + ") = '" + Value + "'";
                var ls = db.BusRoutes.SqlQuery(sql);
                if (ls != null && ls.Any())
                {
                    TotalRows = ls.Count();
                    return ls.OrderByDescending(s => s.BusRouteID).Skip(PageSize * PageIndex).Take(PageSize).ToList<BusRoute>();
                }
                return new List<BusRoute>();
            }
        }

        public int InsertUpdate(BusRoute obj)
        {
            using (var db = new ROUTE_MANAGEMENTEntities())
            {
                using (var db1 = new ROUTE_MANAGEMENTEntities())
                {
                    var find = db.BusRoutes.FirstOrDefault(s => s.BusRouteID == obj.BusRouteID);
                    if (find != null) db1.Entry(obj).State = EntityState.Modified;
                    else obj = db1.BusRoutes.Add(obj);
                    db1.SaveChanges();
                    return obj.BusRouteID;
                }
            }
        }

        public void Delete(int id)
        {
            using (var db = new ROUTE_MANAGEMENTEntities())
            {
                var obj = db.BusRoutes.FirstOrDefault(s => s.BusRouteID == id);
                if (obj != null)
                {
                    db.BusRoutes.Remove(obj);
                    db.SaveChanges();
                }
            }
        }

        public void Delete_IDs(List<string> IDs)
        {
            using (var db = new ROUTE_MANAGEMENTEntities())
            {
                var ls = db.BusRoutes.AsQueryable();
                if (ls != null && ls.Any())
                {
                    ls = ls.Where(s => IDs.Contains(s.BusRouteID.ToString()));
                    foreach (var item in ls)
                        db.BusRoutes.Remove(item);
                    db.SaveChanges();
                }
            }
        }

        public List<BusRoute> Find_Route(string Keyword)
        {
            using (var db = new ROUTE_MANAGEMENTEntities())
            {
                if (!string.IsNullOrWhiteSpace(Keyword))
                {
                    var obj = db.BusRoutes.FirstOrDefault(s => s.BusRouteID.ToString().CompareTo(Keyword) == 0);
                    if(obj != null)
                    {
                        List<BusRoute> ls = new List<BusRoute>();
                        ls.Add(obj);
                        return ls;
                    }
                    var list = db.BusRoutes.AsQueryable();
                    list = list.Where(s => s.BusRouteID.ToString().Contains(Keyword)
                    || s.RouteName.ToLower().Contains(Keyword)
                    || s.RouteNumber.ToLower().Contains(Keyword)
                    || s.ResponsibleUnitID.ToString().Contains(Keyword)
                    || s.OperationType.ToString().Contains(Keyword)
                    || s.OperationTime.ToString().Contains(Keyword)
                    || s.Fare.ToString().Contains(Keyword)
                    || s.BusesAmount.ToString().Contains(Keyword)
                    || s.BusesTime.ToString().Contains(Keyword)
                    || s.BusesSpace.ToString().Contains(Keyword)
                    );
                    if(list != null && list.Any())
                    {
                        return list.OrderByDescending(s => s.BusRouteID).ToList();
                    }
                }
                else
                {
                    var ls = db.BusRoutes.AsQueryable();
                    if(ls != null && ls.Any())
                    {
                        return ls.OrderByDescending(s => s.BusRouteID).ToList();
                    }
                }
                return new List<BusRoute>();
            }
        }

        public List<BusRoute> Find_KeyWord(string Keyword, int PageSize, int PageIndex, out int TotalRows)
        {
            TotalRows = 0;
            using (var db = new ROUTE_MANAGEMENTEntities())
            {
                if (!string.IsNullOrWhiteSpace(Keyword))
                {
                    var obj = db.BusRoutes.FirstOrDefault(s => s.BusRouteID.ToString().CompareTo(Keyword) == 0);
                    if (obj != null)
                    {
                        List<BusRoute> ls = new List<BusRoute>();
                        ls.Add(obj);
                        TotalRows = 1;
                        return ls;
                    }
                    var list = db.BusRoutes.AsQueryable();
                    list = list.Where(s => s.BusRouteID.ToString().Contains(Keyword)
                    || s.RouteName.ToLower().Contains(Keyword)
                    || s.RouteNumber.ToLower().Contains(Keyword)
                    || s.ResponsibleUnitID.ToString().Contains(Keyword)
                    || s.OperationType.ToString().Contains(Keyword)
                    || s.OperationTime.ToString().Contains(Keyword)
                    || s.Fare.ToString().Contains(Keyword)
                    || s.BusesAmount.ToString().Contains(Keyword)
                    || s.BusesTime.ToString().Contains(Keyword)
                    || s.BusesSpace.ToString().Contains(Keyword)
                    );
                    if (list != null && list.Any())
                    {
                        TotalRows = list.Count();
                        return list.OrderByDescending(s => s.BusRouteID).Skip(PageSize * PageIndex).Take(PageSize).ToList();
                    }
                }
                else
                {
                    var list = db.BusRoutes.AsQueryable();
                    if (list != null && list.Any())
                    {
                        TotalRows = list.Count();
                        return list.OrderByDescending(s => s.BusRouteID).Skip(PageSize * PageIndex).Take(PageSize).ToList();
                    }
                }
                return new List<BusRoute>();
            }
        }
    }
}
