﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MCT.DB.Entities
{
    public class Cultivation
    {
        public virtual long Id { get; set; }
        public virtual int CultivationDateStart { get; set; }
        public virtual int CultivationDateEnd { get; set; }
        public virtual int GerminationPeriodDays { get; set; }
        public virtual double GerminationTemperature { get; set; }

    }
}
