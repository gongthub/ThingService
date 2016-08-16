using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using Vlinker.SmartHome.Model.Base;
using Vlinker.SmartHome.Model.Hydropower;


namespace Vlinker.SmartHome.Model.Context
{
    public class SmartHomeDbContext : DbContext
    {
        public SmartHomeDbContext()
            : base("SmartHomeDbContext")
        {
            
        }

        public DbSet<SupplierConfig> SupplierConfigs { get; set; }

        public DbSet<User> Users { get; set; }

        public DbSet<Province> Provinces { get; set; }

        public DbSet<City> Cities { get; set; }

        public DbSet<District> Districts { get; set; }
        public DbSet<ReCharge> ReCharges { get; set; }
        public DbSet<JoyData> JoyDatas { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Province>().Property(p => p.ID).HasColumnName("pro_id");
            modelBuilder.Entity<Province>().HasKey(p => p.ID);

            modelBuilder.Entity<City>().Property(p => p.ID).HasColumnName("city_id");
            modelBuilder.Entity<City>().Property(p => p.ProvinceID).HasColumnName("pro_id");
            modelBuilder.Entity<City>().HasKey(p => p.ID);

            modelBuilder.Entity<District>().Property(p => p.ID).HasColumnName("dis_id");
            modelBuilder.Entity<District>().Property(p => p.CityID).HasColumnName("city_id");
            modelBuilder.Entity<District>().HasKey(p => p.ID);
        }
    }
}