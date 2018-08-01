using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AttendanceMonitoringSystem.Models
{
    public class DailyRecordModel
    {

        //        StudentID
        //        Name
        //          Program
        //          Year
        //          CheckIn
        //          Date

        public int Id { get; set; } 

        public string StudentID { get; set; }

        public string Name { get; set; }

        public string Program { get; set; }

        public string Year { get; set; }

        public DateTime Date { get; set; }
    }
}