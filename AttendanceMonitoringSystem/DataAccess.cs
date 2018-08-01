using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using AttendanceMonitoringSystem.Models;
using Dapper;

namespace AttendanceMonitoringSystem
{
    public class DataAccess
    {

        public Users ValidateLogIn(string _userName, string _password)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("AMSconnect")))
            {
                //var output = connection.Query<Person>($"select * from People where LastName = '{lastName}'").ToList();
                var output = connection.QueryFirstOrDefault<Users>($"spValidateLogIn @UserName, @Password", new { UserName = _userName, Password = _password });

                return output;
            }
        }

        #region Student


        // bind to repeater
        public List<StudentModel> GetListOfStudents()
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("AMSconnect")))
            {
                var output = connection.Query<StudentModel>("spStudent_GetList").ToList();
                return output;
            }
        }

        public void InsertUpdateStudent(int _id, string _studentNumber, string _firstName, string _middleName, string _lastName, bool _isActive, string _program, DateTime _admissionYear)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("AMSconnect")))
            {
                List<StudentModel> Students = new List<StudentModel> // create new List<StudentModel>
                {
                    new StudentModel() // instantiate new StudentModel
                    {
                        // Id = yung propert ni StudentModel >> _id = parameter na pinasa sa method na to (InsertUpdateStudent)
                        Id = _id,
                        StudentId = _studentNumber,
                        FirstName = _firstName,
                        MiddleName = _middleName,
                        LastName = _lastName,
                        IsActive = _isActive,
                        Program = _program,
                        AdmissionYear = _admissionYear
                    }
                };

                connection.Execute("spStudent_InsertUpdate @Id, @StudentId, @FirstName, @MiddleName, @LastName, @isActive, @program, @admissionYear", Students);
            }
        }

        public StudentModel GetStudentById(int id)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("AMSconnect")))
            {
                var output = connection.QueryFirstOrDefault<StudentModel>("spStudent_GetById @Id", new { Id = id });

                return output;
            }
        }

        public void DeleteStudentById(int id)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("AMSconnect")))
            {
                connection.Execute("spStudent_DeleteById @Id", new { Id = id });

            }
        }

        #endregion


        #region Daily Record

        // Bind List to Repeater
        public List<DailyRecordModel> GetDailyRecord()
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("AMSconnect")))
            {
                var output = connection.Query<DailyRecordModel>($"spDailyRecord_GetList").ToList();
                return output;
            }
        }

        #endregion


        //public List<Person> GetPeople(string lastName)
        //{
        //    using (IDbConnection connection = new SqlConnection(Helper.CnnVal("SampleDB")))
        //    {
        //        //var output = connection.Query<Person>($"select * from People where LastName = '{lastName}'").ToList();
        //        var output = connection.Query<Person>($"People_GetByLastName @LastName", new { LastName = lastName }).ToList();
        //        return output;
        //    }
        //}

        //public Person GetPerson(string lastName)
        //{
        //    using (IDbConnection connection = new SqlConnection(Helper.CnnVal("SampleDB")))
        //    {
        //        //var output = connection.Query<Person>($"select * from People where LastName = '{lastName}'").ToList();
        //        var output = connection.QueryFirstOrDefault<Person>($"People_GetByLastName @LastName", new {LastName = lastName});

        //        return output;
        //    }
        //}


        //public void InsertPerson(string firstName, string lastName, string email, string phone)
        //{
        //    using (IDbConnection connection = new SqlConnection(Helper.CnnVal("SampleDB")))
        //    {
        //        List<Person> people = new List<Person>
        //        {
        //            new Person()
        //            {
        //                FirstName = firstName,
        //                LastName = lastName,
        //                EmailAddress = email,
        //                PhoneNumber = phone
        //            }
        //        };


        //        connection.Execute("People_Insert @FirstName, @LastName, @EmailAddress, @PhoneNumber", people);
        //    }
        //}
    }
}