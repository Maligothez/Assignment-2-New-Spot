using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data.Entity;

namespace AppDevAssignment26043617.Models
{
    public class Initialiser
    {
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