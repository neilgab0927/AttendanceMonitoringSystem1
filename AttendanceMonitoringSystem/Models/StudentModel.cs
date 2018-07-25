using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AttendanceMonitoringSystem.Models
{
    public class StudentModel
    {
        //  Id	StudentId	FirstName	MiddleName	LastName
        public int Id { get; set; }

        public string StudentId { get; set; }

        public string FirstName { get; set; }

        public string MiddleName { get; set; }

        public string LastName { get; set; }

    }
}