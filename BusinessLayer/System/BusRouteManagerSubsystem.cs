using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer
{
    public class BusRouteManagerSubsystem : BaseSystem
    {
        private static BusRouteManagerSubsystem instance = null;
        
        public static BusRouteManagerSubsystem Instance
        {
            get
            {
                if (instance == null)
                    instance = new BusRouteManagerSubsystem();
                return instance;
            }
        }
    }
}
