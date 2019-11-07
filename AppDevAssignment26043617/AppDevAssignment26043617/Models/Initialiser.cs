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
                    UnitCode = "CSR1654",
                    UnitTitle = "Advanced Bread and Buttery",
                    UnitCoordinator = "Fred Bread",
                    Results = new List<Results>
                    {
                        new Results
                        {
                            UnitId = 1,
                            StudentID = 65231234,
                            Semester = 1,
                            Year = 2015,
                            Assessment1Score = 11,
                            Assessment2Score= 16,
                            Exam = 32

                        },
                        new Results
                        {
                            StudentID = 65231234,
                            Semester = 2,
                            Year = 2015,
                            Assessment1Score = 15,
                            Assessment2Score = 18,
                            Exam = 55
                        }
                    }
                },
                new Units
                {
                    UnitId = 2,
                    UnitCode = "CSI6540",
                    UnitTitle = "Dog Hidery",
                    UnitCoordinator = "Spot",
                    Results = new List<Results>
                    {
                        new Results
                        {
                            UnitId = 2,
                            StudentID = 10458123,
                            Semester = 2,
                            Year = 2016,
                            Assessment1Score = 12,
                            Assessment2Score= 18,
                            Exam = 45
                        }
                    }
                },

            };

            return units;
        }
    }
}