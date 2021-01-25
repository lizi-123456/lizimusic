using Qiniu.Http;
using Qiniu.Storage;
using Qiniu.Util;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using 栗子音乐.Models;

namespace 栗子音乐.Controllers
{
    public class RecordController : BaseController
    {

        // GET: Record
        //主页，用于数据展示
        public ActionResult Index()
        {

            //合辑数据展示
            ViewData["Albums"] = sf.Albums.ToList();
            //合辑的前六条数据
            ViewData["Albums_top"] = sf.Albums.Take(6).ToList();
            //根据点击次数排行，查询前七条数据
            ViewData["music_top"] = sf.sel_music_singer_Albums_all().OrderByDescending(s => s.Music_Play_Count).Take(7).ToList();

            //根据ID排行，查询最新的七条数据
            ViewData["music_New"] = sf.sel_music_singer_Albums_all().OrderByDescending(s => s.Music_ID).Take(7).ToList();


            return View();
        }


        //搜索，用于搜索歌曲
        public ActionResult Serach(string searchOverlay)
        {

            var serach_detial = sf.sel_music_singer_Albums_all().ToList().Where(s => s.Music_Name.Contains(searchOverlay));

            return View(serach_detial);
        }


        //歌曲的点击次数，也就是播放次数
        public ActionResult Music_Play_Count(int? MusicId)
        {
            Music music = sf.Music.FirstOrDefault(x => x.Music_ID == MusicId);
            music.Music_Play_Count += 1;
            if (sf.SaveChanges() > 0)
            {
                return Content("true");
            }
            else
            {
                return Content("false");
            }
        }


        //合辑的点击次数，也就是播放次数
        public ActionResult Albums_onclick(int? Albums_ID)
        {
            Albums Albums = sf.Albums.FirstOrDefault(x => x.Albums_ID == Albums_ID);
            Albums.Albums_onclick += 1;
            if (sf.SaveChanges() > 0)
            {
                return Content("true");
            }
            else
            {
                return Content("false");
            }

        }


        //歌手的点击次数
        public ActionResult Singer_onclick(int? Singer_ID)
        {
            Singer Singer = sf.Singer.FirstOrDefault(b => b.Singer_ID == Singer_ID);
            Singer.Singer_onclick += 1;
            sf.SaveChanges();
            if (sf.SaveChanges() > 0)
            {
                return Content("true");
            }
            else
            {
                return Content("false");
            }

        }


        public ActionResult Login()
        {

            return View();
        }


        public ActionResult Error()
        {
            return View();
        }


        //合辑
        public ActionResult Albums()
        {
            //合辑数据展示
            ViewData["Albums"] = sf.Albums.ToList();

            return View();
        }


        //合辑详情
        public ActionResult Album_single(int? Albums_ID)
        {
            //合辑详情名称和图片展示
            ViewData["Albums_xq"] = sf.Albums.Where(s => s.Albums_ID == Albums_ID).ToList();

            //合集详情音乐展示
            ViewData["Albums_music"] = sf.sel_music_singer_Albums_all().Where(z => z.Albums_ID == Albums_ID).ToList();

            return View();
        }


        //歌手的数据展示
        public ActionResult Artists()
        {
            var list = sf.Singer.ToList();

            return View(list);
        }


        public ActionResult Artists_single(int? Singer_ID)
        {
            ViewData["singer_xq"] = sf.Singer.Where(s => s.Singer_ID == Singer_ID).ToList();

            ViewData["singer_music"] = sf.sel_music_singer_Albums_all().Where(x => x.Singer_ID == Singer_ID).ToList();

            return View();
        }


        public ActionResult Blog()
        {
            return View();
        }


        public ActionResult Blog_single()
        {
            return View();
        }


        //歌曲分类
        public ActionResult Categories()
        {
            List<Music_Category> list = sf.Music_Category.ToList();

            ViewData["music_list"] = sf.sel_music_singer_Albums_all().ToList();

            return View(list);
        }


        //歌曲分类视图
        public ActionResult Categories_xq(int? Category_ID, string Category_Name)
        {
            List<Music_Category> list = sf.Music_Category.ToList();

            ViewData["music_listname"] = sf.sel_music_singer_Albums_all().Where(x => x.Category_ID == Category_ID).ToList();

            ViewBag.categroy_name = Category_Name;

            return View(list);
        }


        public ActionResult Events()
        {
            return View();
        }


        public ActionResult Events_single()
        {
            return View();
        }


        public ActionResult Gallery()
        {
            return View();
        }


        public ActionResult Page_blank()
        {
            return View();
        }


        public ActionResult Page_blank_tabs()
        {
            return View();
        }


        public ActionResult Panel_element_tabels()
        {
            return View();
        }


        public ActionResult Panel_page_contacts()
        {
            return View();
        }


        public ActionResult Profile_file()
        {
            return View();
        }



        public void touxiang(string AccessKey,string SecretKey,string filename,string path)
        {
            Mac mac = new Mac(AccessKey, SecretKey);
            // 上传文件名
            string key = "img/usertp/" + filename;
            // 本地文件路径
            //string filePath = "C:/inetpub/wwwroot/栗子音乐/assets/img";
            string filePath = "E:/aaaaaMVC卓越项目/栗子音乐/assets/img/usertp/"+path;
            // 存储空间名
            string Bucket = "lizixs";
            // 设置上传策略，详见：https://developer.qiniu.com/kodo/manual/1206/put-policy
            PutPolicy putPolicy = new PutPolicy();
            // 设置要上传的目标空间
            putPolicy.Scope = Bucket;
            // 上传策略的过期时间(单位:秒)
            putPolicy.SetExpires(3600000);
            // 文件上传完毕后，在多少天后自动被删除
            putPolicy.DeleteAfterDays = 365;
            // 生成上传token
            string token = Auth.CreateUploadToken(mac, putPolicy.ToJsonString());
            Config config = new Config();
            // 设置上传区域
            config.Zone = Zone.ZONE_CN_East;
            // 设置 http 或者 https 上传
            config.UseHttps = true;
            config.UseCdnDomains = true;
            config.ChunkSize = ChunkUnit.U512K;
            // 表单上传
            FormUploader target = new FormUploader(config);
            HttpResult result = target.UploadFile(filePath, key, token, null);
        }


        public ActionResult ceshi(HttpPostedFileBase file)
        {
            if (file != null)
            {
                if (file.ContentLength != 0)
                {
                    file.SaveAs(Server.MapPath("~/assets/img/usertp/" + file.FileName));
                    touxiang("FRIseQa1oqtaZBl0y8WNeb8DflGsfTv_NeIoPW4-", "xjhDnVx_0YjdHFdwzRiNgDSLR4uIMZk3vzv6Fl_6",file.FileName,file.FileName);
                }
            }


            

            return View();
        }


        public ActionResult Register()
        {


            return View();
        }


        public ActionResult Saved()
        {
            return View();
        }


        public ActionResult Services()
        {
            return View();
        }


        public ActionResult Signin()
        {
            return View();
        }


        public ActionResult Videos()
        {
            return View();
        }


        public ActionResult Video_single()
        {
            return View();
        }
    }
}