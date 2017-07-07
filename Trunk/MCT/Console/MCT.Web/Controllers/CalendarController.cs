﻿using MCT.Cal;
using MCT.DB.Entities;
using MCT.DB.Services;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Web.Mvc;

namespace MCT.Web.Controllers
{
    public class CalendarController : Controller
    {
        // GET: Calendar
        public ActionResult Index()
        {
            return View();
        }

        #region calendar

        public JsonResult GetEvents()
        {
            SubjectManager subjectmanager = new SubjectManager();

            var events = new List<object>();

            foreach (var VARIABLE in subjectmanager.GetAll<TimePeriod>())
            {
                if (VARIABLE != null)
                    events.Add(getEventFromTimeperiod(VARIABLE, VARIABLE.Type));
            }

            return Json(events.ToArray(), JsonRequestBehavior.AllowGet);
        }

        private object getEventFromTimeperiod(TimePeriod tp, TimePeriodType type)
        {
            string color = "";

            Debug.WriteLine(tp);

            switch (type)
            {
                case TimePeriodType.Sowing: { color = "green"; break; }
                case TimePeriodType.Harvest: { color = "blue"; break; }
                case TimePeriodType.Bloom: { color = "yellow"; break; }
                case TimePeriodType.SeedMaturity: { color = "red"; break; }
            }

            var json = new
            {
                title = tp.AssignedTo.Name,
                start = TimeConverter.GetStartDateTime((int)tp.StartMonth).ToString("yyyy-MM-dd", CultureInfo.CreateSpecificCulture("en-US")),
                end = TimeConverter.GetEndDateTime((int)tp.EndMonth).ToString("yyyy-MM-dd", CultureInfo.CreateSpecificCulture("en-US")),
                backgroundColor = color
            };

            Debug.WriteLine(json);

            if (json != null)
                return json;

            return null;
        }

        #endregion calendar

        #region Gantt

        public JsonResult GetEventsForGantt()
        {
            SubjectManager subjectmanager = new SubjectManager();

            var events = new List<object>();

            foreach (var VARIABLE in subjectmanager.GetAll<TimePeriod>())
            {
                if (VARIABLE != null)
                    events.Add(getEventFromTimeperiodForGantt(VARIABLE, VARIABLE.Type));
            }

            return Json(events.ToArray(), JsonRequestBehavior.AllowGet);
        }

        //private object createPlants()

        private object getEventFromTimeperiodForGantt(TimePeriod tp, TimePeriodType type)
        {
            string color = "";

            Debug.WriteLine(tp);

            switch (type)
            {
                case TimePeriodType.Sowing: { color = "green"; break; }
                case TimePeriodType.Harvest: { color = "blue"; break; }
                case TimePeriodType.Bloom: { color = "yellow"; break; }
                case TimePeriodType.SeedMaturity: { color = "red"; break; }
            }
            var x = System.DateTime.Today;
            var y = System.DateTime.Now;
            var fromDT = x.Millisecond; //TimeConverter.GetStartDateTime((int)tp.StartMonth).Ticks;
            var toDT = y.Millisecond;//TimeConverter.GetEndDateTime((int)tp.EndMonth).Ticks;

            //name: "Testing",
            //    desc: " ",
            //    values: [{
            //    from: today_friendly,
            //        to: next_friendly,
            //        label: "Test",
            //        customClass: "ganttRed"
            //    }]

            var tpJSON = new
            {
                label = tp.AssignedTo.Name,
                from = "/Date(" + fromDT + ")/",
                to = "/Date(" + toDT + ")/",
                customClass = "ganttRed"
            };


            var json = new
            {
                name = tp.AssignedTo.Name,
                desc = "",
                values = new []{tpJSON}  
            };

            Debug.WriteLine(json);

            if (json != null)
                return json;

            return null;
        }

        #endregion Gantt
    }
}