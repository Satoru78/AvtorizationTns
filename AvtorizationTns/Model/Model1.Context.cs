﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace AvtorizationTns.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TelecomNevaSvyazEntities1 : DbContext
    {
        public TelecomNevaSvyazEntities1()
            : base("name=TelecomNevaSvyazEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AbonentEqupment> AbonentEqupment { get; set; }
        public virtual DbSet<Employee> Employee { get; set; }
        public virtual DbSet<EqupmentMagistral> EqupmentMagistral { get; set; }
        public virtual DbSet<Gender> Gender { get; set; }
        public virtual DbSet<Request> Request { get; set; }
        public virtual DbSet<Role> Role { get; set; }
        public virtual DbSet<SetiDostupa> SetiDostupa { get; set; }
        public virtual DbSet<SPB> SPB { get; set; }
        public virtual DbSet<Status> Status { get; set; }
        public virtual DbSet<sysdiagrams> sysdiagrams { get; set; }
        public virtual DbSet<TypeOfBuilding> TypeOfBuilding { get; set; }
        public virtual DbSet<TypeOfDogovor> TypeOfDogovor { get; set; }
        public virtual DbSet<TypeOfProblem> TypeOfProblem { get; set; }
        public virtual DbSet<TypeOfServices> TypeOfServices { get; set; }
        public virtual DbSet<VidOfServices> VidOfServices { get; set; }
        public virtual DbSet<Abonents> Abonents { get; set; }
    }
}
