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

        public bool IsActive { get; set; }

        // type mo 'prop' then tab 2x
        // mag gegenerate na siya ng auto property
        // then saka mo palitan yung dataType pati yung variable name
        // press tab after mag type ng dataType pati variable
        public string Program { get; set; }

        public DateTime AdmissionYear { get; set; }

        // hindi mapped sa DB
        public string Year { get; set; }    


    }
}