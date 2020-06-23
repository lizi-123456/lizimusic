using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using 栗子音乐.Models;

namespace 栗子音乐.Controllers
{
    public class BaseController : Controller
    {

        public shuifengEntities1 sf = new shuifengEntities1();
        public BaseController()
        {
            //传入我们需要的数据
            ViewData["music"] = sf.sel_music_singer_Albums_all().ToList();


        }
    }
}