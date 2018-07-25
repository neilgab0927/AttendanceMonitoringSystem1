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

        public List<StudentModel> GetListOfStudents()
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("AMSconnect")))
            {
                var output = connection.Query<StudentModel>("spStudentGetList").ToList();
                return output;
            }
        }

        public void InsertUpdateStudent(int _id, string _studentNumber, string _firstName, string _middleName, string _lastName)
        {
            using (IDbConnection connection = new SqlConnection(Helper.CnnVal("AMSconnect")))
            {
                List<StudentModel> Students = new List<StudentModel>
                {
                    new StudentModel()
                    {
                        Id = _id,
                        StudentId = _studentNumber,
                        FirstName = _firstName,
                        MiddleName = _middleName,
                        LastName = _lastName
                    }
                };

                connection.Execute("spInsertUpdateStudent @Id, @StudentId, @FirstName, @MiddleName, @LastName", Students);
            }
        }


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