﻿using System;
using System.Linq;
using MCT.DB.Entities;

namespace MCT.Web.Models.Search
{
    public class SubjectModel
    {
        public long Id { get; set; }
        public String Name { get; set; }
        public String Description { get; set; }
        public String ImagePath { get; set; }

        public SubjectType Type { get; set; }

        public static SubjectModel Convert(Subject subject)
        {

            SubjectModel model = new SubjectModel();

            model.Id = subject.Id;

            if (!String.IsNullOrEmpty(subject.Name))
                model.Name = subject.Name;

            if (!String.IsNullOrEmpty(subject.Description))
                model.Description = subject.Description;

            model.Type = GetType(subject);

            if (!subject.Medias.Any())
            {
                model.ImagePath = "/Images/Empty.png";
            }
            else
            {
                model.ImagePath =  subject.Medias.First().ImagePath;
            }

            return model;
        }

        protected static SubjectType GetType(Subject subject)
        {
            if (subject is Animal) return SubjectType.Animal;
            if (subject is Effect) return SubjectType.Effect;
            if(subject is Plant) return SubjectType.Plant;

            return SubjectType.Unknow;

        }
    }

    public enum SubjectType
    { 
        Animal,
        Effect,
        Plant,
        Unknow
    }
}