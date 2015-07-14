﻿using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web.Mvc;
using MCT.DB.Entities;
using MCT.DB.Services;
using MCT.Search;
using MCT.Web.Models.Search;

namespace MCT.Web.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
        [HttpGet]
        public ActionResult Search()
        {
            SubjectManager subjectManager = new SubjectManager();

            //Get all subjects
            var species = subjectManager.GetAll<Species>();

            SearchModel Model = new SearchModel();

            //convert all subjects to subjectModels
            species.ToList().ForEach(s => Model.Species.Add(SpeciesModel.Convert(s)));

            Model.Species = Model.Species.OrderBy(p => p.Name).ToList();

            return View("Search",Model);
        }

        // GET: Search
        [HttpPost]
        public ActionResult Search(string searchValue)
        {
            Debug.WriteLine("SEARCH : "+searchValue);

            List<SpeciesModel> Model = new List<SpeciesModel>();
            SubjectManager subjectManager = new SubjectManager();

            //Get filtered subjects
            var species = string.IsNullOrEmpty(searchValue) ? SearchProvider.Search(searchValue) : SearchProvider.Search(searchValue);

            //convert all subjects to subjectModels
            species = species.OrderBy(p => p.Name);
            species.ToList().ForEach(s => Model.Add(SpeciesModel.Convert(s)));

            return PartialView("_searchResult", Model);
        
        }


        public ActionResult Details(long id, string type)
        {
            SubjectManager sm = new SubjectManager();

            Subject s = sm.Get(id);

            switch (type)
            {
                case "Plant":
                    {

                        Plant plant = sm.GetAll<Plant>().Where(p => p.Id.Equals(id)).FirstOrDefault();

                        PlantModel Model = PlantModel.Convert(plant);
                        //load interactions
                        Model.Interactions = SubjectModel.ConverInteractionModels(sm.GetAllDependingInteractions(plant).ToList());

                        return View("PlantDetails", Model);
                    }
                case "Animal":
                    {
                        Animal animal = sm.GetAll<Animal>().Where(a => a.Id.Equals(id)).FirstOrDefault();

                        AnimalModel Model = AnimalModel.Convert(animal);
                        Model.Interactions = SubjectModel.ConverInteractionModels(sm.GetAllDependingInteractions(animal).ToList());

                        return View("AnimalDetails", Model);
                    }
                case "Effect":
                    {
                        Effect effect = sm.GetAll<Effect>().Where(e => e.Id.Equals(id)).FirstOrDefault();

                        return View("EffectDetails");
                    }

                default: { break; }
            }

            return View("Search");
        }
    }
}