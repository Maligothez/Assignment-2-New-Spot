using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.Entity;

namespace AppDevAssignment26043617.Models
{
    public class Initialiser : DropCreateDatabaseIfModelChanges<SiteContext>
    {

        protected override void Seed(SiteContext context)
        {
            GetUsers().ForEach(s => context.Users.Add(s));
            GetUnits().ForEach(n => context.Units.Add(n));
            GetResults().ForEach(r => context.Results.Add(r));

        }


        private static List<Users> GetUsers()
        {
            var users = new List<Users> {
                new Users
                {
                    UserID = 1,
                    UserEmail = "regretfulname@yahoo.com",
                    UserPassword = "password",
                    UserType = 1
                },
                new Users
                {
                    UserID = 2,
                    UserEmail = "lastName96@google.com",
                    UserPassword = "betterPassword",
                    UserType = 2
                },
               
            };

            return users;
        }

        private static List<Units> GetUnits()
        {
            var units = new List<Units> {
                new Units
                {
                    UnitCode = "10654",
                    UnitTitle = "Advanced Bread and Buttery",
                    UnitCoordinator = "Fred Bread",
                    
                },
                new Units
                {
                    UnitCode = "CSI655",
                    UnitTitle = "Dog Hidery",
                    UnitCoordinator = "Spot",
                },

            };

            return units;
        }

        private static List<Results> GetResults()
        {
            var results = new List<Results> {
                new Results
                {
                    UnitCode = "10654",
                    StudentID = 6523,
                    Semester = 1,
                    Year = 2015,
                    Assesment1Score = 56,
                    Assesment2Score= 78,
                    Exam = 54

                },
                new Results
                {
                    UnitCode = "CSI655",
                    StudentID = 10458,
                    Semester = 2,
                    Year = 2016,
                    Assesment1Score = 80,
                    Assesment2Score= 78,
                    Exam = 99
                },

            };

            return results;
        }

    }
}