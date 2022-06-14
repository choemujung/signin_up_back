using Microsoft.EntityFrameworkCore;
using System.Diagnostics.CodeAnalysis;

namespace signin_signup_backend.Models
{
    public class UserContext : DbContext
    { 
        public DbSet<User> Users { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=toy;Username=postgres;Password=gis123123",
                x => x.MigrationsHistoryTable("__EFMigrationHistory", "signIn_signUp"));
        }
    }
}
