using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.Entity;

namespace AppDevAssignment26043617.Models
{
    public class Initialiser : DropCreateDatabaseIfModelChanges<ApplicationDbContext>
    {

        protected override void Seed(ApplicationDbContext context)
        {
            GetUsers().ForEach(s => context.Users.Add(s));
            GetUnits().ForEach(n => context.Units.Add(n));
            //GetResults().ForEach(r => context.Results.Add(r));
        }


        public static List<Users> GetUsers()
        {
            var users = new List<Users> {
                new Users
                {
                    UserEmail = "regretfulname@yahoo.com",
                    UserPassword = "password",
                    UserType = 1
                },
                new Users
                {
                    UserEmail = "lastName96@google.com",
                    UserPassword = "betterPassword",
                    UserType = 2
                },
               
            };

            return users;
        }

        public static List<Units> GetUnits()
        {
            var units = new List<Units> {
                new Units
                {
                    UnitId = 1,
                    UnitCode = "10654",
                    UnitTitle = "Advanced Bread and Buttery",
                    UnitCoordinator = "Fred Bread",
                    Results = new List<Results>
                    {
                        new Results
                        {
                            //UnitCode = "10654",
                            UnitId = 1,
                            StudentID = 6523,
                            Semester = 1,
                            Year = 2015,
                            Assessment1Score = 56,
                            Assessment2Score= 78,
                            Exam = 54

                        },
                        new Results
                        {
                            StudentID = 6523,
                            Semester = 2,
                            Year = 2015,
                            Assessment1Score = 75,
                            Assessment2Score = 80,
                            Exam = 85
                        }
                    }
                },
                new Units
                {
                    UnitId = 2,
                    UnitCode = "CSI655",
                    UnitTitle = "Dog Hidery",
                    UnitCoordinator = "Spot",
                    Results = new List<Results>
                    {
                        new Results
                        {
                            //UnitCode = "CSI655",
                            UnitId = 2,
                            StudentID = 10458,
                            Semester = 2,
                            Year = 2016,
                            Assessment1Score = 80,
                            Assessment2Score= 78,
                            Exam = 99
                        }
                    }
                },

            };

            return units;
        }
    }
}