using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Hydroppower.Model
{
    public class IDBRepository : DbContext
    {
        public DbSet<DataCompute> DataComputes { get; set; }
    }
}
