﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace 栗子音乐
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default1",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Record", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
