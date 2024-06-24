using Microsoft.EntityFrameworkCore;
using System.Collections.Generic;
using System.Reflection.Emit;
using ModelsAPI.Entity;
namespace ModelsAPI.Context
{
    public class NexuContext : DbContext
    {
        public NexuContext(DbContextOptions<NexuContext> options) : base(options)
        {

        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Models>().HasKey(c => new { c.id });
            modelBuilder.Entity<Brands>().HasKey(c => new { c.id });
        }

        #region DbSet Members
        public DbSet<Models> Models { get; set; }
        public DbSet<Brands> Brands { get; set; }
        #endregion

    }
}
