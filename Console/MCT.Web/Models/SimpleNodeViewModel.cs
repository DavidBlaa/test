﻿using MCT.DB.Entities;
using Newtonsoft.Json;
using Newtonsoft.Json.Converters;
using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace MCT.Web.Models
{
    public class SimpleNodeViewModel
    {
        public long Id { get; set; }

        [Required]
        [Remote("CheckNameExist", "Search", ErrorMessage = "Name existiert bereits.")]
        public String Name { get; set; }

        [Required]
        [Remote("CheckScientificNameExist", "Search", ErrorMessage = "Scientific Name existiert bereits.")]
        public String ScientificName { get; set; }

        public String Description { get; set; }

        [Required]
        [JsonConverter(typeof(StringEnumConverter))]
        public TaxonRank TaxonRank { get; set; }

        public SimpleNodeViewModel Parent { get; set; }

        public static SimpleNodeViewModel Convert(Node node)
        {
            SimpleNodeViewModel model = new SimpleNodeViewModel();
            model.Id = node.Id;
            model.Name = node.Name;
            model.ScientificName = node.ScientificName;
            model.Description = node.Description;
            model.TaxonRank = node.Rank;

            if (node.Parent != null)
            {
                model.Parent = Convert(node.Parent);
            }

            return model;
        }
    }
}