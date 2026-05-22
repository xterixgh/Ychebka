using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace YchebnayaPractika.Data;

public partial class AppDbContext : DbContext
{
    public AppDbContext()
    {
    }

    public AppDbContext(DbContextOptions<AppDbContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Component> Components { get; set; }

    public virtual DbSet<Equipment> Equipment { get; set; }

    public virtual DbSet<EquipmentFailure> EquipmentFailures { get; set; }

    public virtual DbSet<EquipmentType> EquipmentTypes { get; set; }

    public virtual DbSet<Material> Materials { get; set; }

    public virtual DbSet<Order> Orders { get; set; }

    public virtual DbSet<OrderDrawing> OrderDrawings { get; set; }

    public virtual DbSet<OrderQualityCheck> OrderQualityChecks { get; set; }

    public virtual DbSet<OrderSize> OrderSizes { get; set; }

    public virtual DbSet<OrderStatusHistory> OrderStatusHistories { get; set; }

    public virtual DbSet<Product> Products { get; set; }

    public virtual DbSet<ProductDrawing> ProductDrawings { get; set; }

    public virtual DbSet<ProductSize> ProductSizes { get; set; }

    public virtual DbSet<ProductionOperation> ProductionOperations { get; set; }

    public virtual DbSet<SpecAssemblyUnit> SpecAssemblyUnits { get; set; }

    public virtual DbSet<SpecComponent> SpecComponents { get; set; }

    public virtual DbSet<SpecMaterial> SpecMaterials { get; set; }

    public virtual DbSet<SpecOperation> SpecOperations { get; set; }

    public virtual DbSet<Supplier> Suppliers { get; set; }

    public virtual DbSet<UserAccount> UserAccounts { get; set; }

    public virtual DbSet<UserRole> UserRoles { get; set; }

    public virtual DbSet<Worker> Workers { get; set; }

    public virtual DbSet<WorkerOperation> WorkerOperations { get; set; }

    public virtual DbSet<Workshop> Workshops { get; set; }

    public virtual DbSet<WorkshopPlanItem> WorkshopPlanItems { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseNpgsql("Host=localhost;Port=5432;Database=BaseForYchebka;Username=postgres;Password=Bill0405h/");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Component>(entity =>
        {
            entity.HasKey(e => e.IdComponent).HasName("Component_pkey");

            entity.ToTable("Component");

            entity.HasIndex(e => e.Article, "Component_Article_key").IsUnique();

            entity.Property(e => e.IdComponent).UseIdentityAlwaysColumn();
            entity.Property(e => e.Article).HasMaxLength(100);
            entity.Property(e => e.ComponentName).HasMaxLength(255);
            entity.Property(e => e.ComponentType).HasMaxLength(100);
            entity.Property(e => e.PurchasePrice).HasPrecision(18, 2);
            entity.Property(e => e.QuantityInStock).HasPrecision(18, 3);
            entity.Property(e => e.UnitName).HasMaxLength(50);
            entity.Property(e => e.WeightValue).HasPrecision(18, 3);

            entity.HasOne(d => d.IdSupplierNavigation).WithMany(p => p.Components)
                .HasForeignKey(d => d.IdSupplier)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("FK_Component_Supplier");
        });

        modelBuilder.Entity<Equipment>(entity =>
        {
            entity.HasKey(e => e.IdEquipment).HasName("Equipment_pkey");

            entity.HasIndex(e => e.Marking, "Equipment_Marking_key").IsUnique();

            entity.Property(e => e.IdEquipment).UseIdentityAlwaysColumn();
            entity.Property(e => e.Marking).HasMaxLength(100);

            entity.HasOne(d => d.IdEquipmentTypeNavigation).WithMany(p => p.Equipment)
                .HasForeignKey(d => d.IdEquipmentType)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_Equipment_EquipmentType");
        });

        modelBuilder.Entity<EquipmentFailure>(entity =>
        {
            entity.HasKey(e => e.IdEquipmentFailure).HasName("EquipmentFailure_pkey");

            entity.ToTable("EquipmentFailure");

            entity.Property(e => e.IdEquipmentFailure).UseIdentityAlwaysColumn();
            entity.Property(e => e.FailureEnd).HasColumnType("timestamp without time zone");
            entity.Property(e => e.FailureReason).HasMaxLength(255);
            entity.Property(e => e.FailureStart).HasColumnType("timestamp without time zone");

            entity.HasOne(d => d.IdEquipmentNavigation).WithMany(p => p.EquipmentFailures)
                .HasForeignKey(d => d.IdEquipment)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_EquipmentFailure_Equipment");

            entity.HasOne(d => d.IdMasterUserNavigation).WithMany(p => p.EquipmentFailures)
                .HasForeignKey(d => d.IdMasterUser)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_EquipmentFailure_User");
        });

        modelBuilder.Entity<EquipmentType>(entity =>
        {
            entity.HasKey(e => e.IdEquipmentType).HasName("EquipmentType_pkey");

            entity.ToTable("EquipmentType");

            entity.HasIndex(e => e.TypeName, "EquipmentType_TypeName_key").IsUnique();

            entity.Property(e => e.IdEquipmentType).UseIdentityAlwaysColumn();
            entity.Property(e => e.TypeName).HasMaxLength(150);
        });

        modelBuilder.Entity<Material>(entity =>
        {
            entity.HasKey(e => e.IdMaterial).HasName("Material_pkey");

            entity.ToTable("Material");

            entity.HasIndex(e => e.Article, "Material_Article_key").IsUnique();

            entity.Property(e => e.IdMaterial).UseIdentityAlwaysColumn();
            entity.Property(e => e.Article).HasMaxLength(100);
            entity.Property(e => e.Gost).HasMaxLength(100);
            entity.Property(e => e.LengthValue).HasPrecision(18, 3);
            entity.Property(e => e.MaterialName).HasMaxLength(255);
            entity.Property(e => e.MaterialType).HasMaxLength(100);
            entity.Property(e => e.PurchasePrice).HasPrecision(18, 2);
            entity.Property(e => e.QuantityInStock).HasPrecision(18, 3);
            entity.Property(e => e.UnitName).HasMaxLength(50);

            entity.HasOne(d => d.IdSupplierNavigation).WithMany(p => p.Materials)
                .HasForeignKey(d => d.IdSupplier)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("FK_Material_Supplier");
        });

        modelBuilder.Entity<Order>(entity =>
        {
            entity.HasKey(e => e.IdOrder).HasName("Order_pkey");

            entity.ToTable("Order");

            entity.HasIndex(e => e.OrderNumber, "Order_OrderNumber_key").IsUnique();

            entity.Property(e => e.IdOrder).UseIdentityAlwaysColumn();
            entity.Property(e => e.OrderCost).HasPrecision(18, 2);
            entity.Property(e => e.OrderName).HasMaxLength(255);
            entity.Property(e => e.OrderNumber).HasMaxLength(12);
            entity.Property(e => e.OrderQuantity)
                .HasPrecision(18, 3)
                .HasDefaultValueSql("1");
            entity.Property(e => e.Status)
                .HasMaxLength(50)
                .HasDefaultValueSql("'Новый'::character varying");

            entity.HasOne(d => d.IdCustomerUserNavigation).WithMany(p => p.OrderIdCustomerUserNavigations)
                .HasForeignKey(d => d.IdCustomerUser)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_Order_CustomerUser");

            entity.HasOne(d => d.IdManagerUserNavigation).WithMany(p => p.OrderIdManagerUserNavigations)
                .HasForeignKey(d => d.IdManagerUser)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("FK_Order_ManagerUser");

            entity.HasOne(d => d.IdProductNavigation).WithMany(p => p.Orders)
                .HasForeignKey(d => d.IdProduct)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_Order_Product");
        });

        modelBuilder.Entity<OrderDrawing>(entity =>
        {
            entity.HasKey(e => e.IdOrderDrawing).HasName("OrderDrawing_pkey");

            entity.ToTable("OrderDrawing");

            entity.Property(e => e.IdOrderDrawing).UseIdentityAlwaysColumn();
            entity.Property(e => e.FileName).HasMaxLength(255);

            entity.HasOne(d => d.IdOrderNavigation).WithMany(p => p.OrderDrawings)
                .HasForeignKey(d => d.IdOrder)
                .HasConstraintName("FK_OrderDrawing_Order");
        });

        modelBuilder.Entity<OrderQualityCheck>(entity =>
        {
            entity.HasKey(e => e.IdOrderQualityCheck).HasName("OrderQualityCheck_pkey");

            entity.ToTable("OrderQualityCheck");

            entity.Property(e => e.IdOrderQualityCheck).UseIdentityAlwaysColumn();
            entity.Property(e => e.CheckedAt)
                .HasDefaultValueSql("now()")
                .HasColumnType("timestamp without time zone");
            entity.Property(e => e.GradeSign).HasMaxLength(1);
            entity.Property(e => e.ParameterName).HasMaxLength(255);

            entity.HasOne(d => d.IdMasterUserNavigation).WithMany(p => p.OrderQualityChecks)
                .HasForeignKey(d => d.IdMasterUser)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_OrderQualityCheck_User");

            entity.HasOne(d => d.IdOrderNavigation).WithMany(p => p.OrderQualityChecks)
                .HasForeignKey(d => d.IdOrder)
                .HasConstraintName("FK_OrderQualityCheck_Order");
        });

        modelBuilder.Entity<OrderSize>(entity =>
        {
            entity.HasKey(e => e.IdOrderSize).HasName("OrderSize_pkey");

            entity.ToTable("OrderSize");

            entity.Property(e => e.IdOrderSize).UseIdentityAlwaysColumn();
            entity.Property(e => e.SizeName).HasMaxLength(100);
            entity.Property(e => e.SizeValue).HasPrecision(18, 3);
            entity.Property(e => e.UnitName).HasMaxLength(50);

            entity.HasOne(d => d.IdOrderNavigation).WithMany(p => p.OrderSizes)
                .HasForeignKey(d => d.IdOrder)
                .HasConstraintName("FK_OrderSize_Order");
        });

        modelBuilder.Entity<OrderStatusHistory>(entity =>
        {
            entity.HasKey(e => e.IdOrderStatusHistory).HasName("OrderStatusHistory_pkey");

            entity.ToTable("OrderStatusHistory");

            entity.Property(e => e.IdOrderStatusHistory).UseIdentityAlwaysColumn();
            entity.Property(e => e.ChangedAt)
                .HasDefaultValueSql("now()")
                .HasColumnType("timestamp without time zone");
            entity.Property(e => e.NewStatus).HasMaxLength(50);
            entity.Property(e => e.OldStatus).HasMaxLength(50);

            entity.HasOne(d => d.IdChangedByUserNavigation).WithMany(p => p.OrderStatusHistories)
                .HasForeignKey(d => d.IdChangedByUser)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("FK_OrderStatusHistory_User");

            entity.HasOne(d => d.IdOrderNavigation).WithMany(p => p.OrderStatusHistories)
                .HasForeignKey(d => d.IdOrder)
                .HasConstraintName("FK_OrderStatusHistory_Order");
        });

        modelBuilder.Entity<Product>(entity =>
        {
            entity.HasKey(e => e.IdProduct).HasName("Product_pkey");

            entity.ToTable("Product");

            entity.Property(e => e.IdProduct).UseIdentityAlwaysColumn();
            entity.Property(e => e.ProductName).HasMaxLength(255);
        });

        modelBuilder.Entity<ProductDrawing>(entity =>
        {
            entity.HasKey(e => e.IdProductDrawing).HasName("ProductDrawing_pkey");

            entity.ToTable("ProductDrawing");

            entity.Property(e => e.IdProductDrawing).UseIdentityAlwaysColumn();
            entity.Property(e => e.FileName).HasMaxLength(255);

            entity.HasOne(d => d.IdProductNavigation).WithMany(p => p.ProductDrawings)
                .HasForeignKey(d => d.IdProduct)
                .HasConstraintName("FK_ProductDrawing_Product");
        });

        modelBuilder.Entity<ProductSize>(entity =>
        {
            entity.HasKey(e => e.IdProductSize).HasName("ProductSize_pkey");

            entity.ToTable("ProductSize");

            entity.Property(e => e.IdProductSize).UseIdentityAlwaysColumn();
            entity.Property(e => e.SizeName).HasMaxLength(100);
            entity.Property(e => e.SizeValue).HasPrecision(18, 3);
            entity.Property(e => e.UnitName).HasMaxLength(50);

            entity.HasOne(d => d.IdProductNavigation).WithMany(p => p.ProductSizes)
                .HasForeignKey(d => d.IdProduct)
                .HasConstraintName("FK_ProductSize_Product");
        });

        modelBuilder.Entity<ProductionOperation>(entity =>
        {
            entity.HasKey(e => e.IdProductionOperation).HasName("ProductionOperation_pkey");

            entity.ToTable("ProductionOperation");

            entity.HasIndex(e => e.OperationName, "ProductionOperation_OperationName_key").IsUnique();

            entity.Property(e => e.IdProductionOperation).UseIdentityAlwaysColumn();
            entity.Property(e => e.OperationName).HasMaxLength(255);
        });

        modelBuilder.Entity<SpecAssemblyUnit>(entity =>
        {
            entity.HasKey(e => e.IdSpecAssemblyUnit).HasName("SpecAssemblyUnit_pkey");

            entity.ToTable("SpecAssemblyUnit");

            entity.HasIndex(e => new { e.IdProduct, e.IdChildProduct }, "UQ_SpecAssemblyUnit_Product_Child").IsUnique();

            entity.Property(e => e.IdSpecAssemblyUnit).UseIdentityAlwaysColumn();
            entity.Property(e => e.Quantity).HasPrecision(18, 3);

            entity.HasOne(d => d.IdChildProductNavigation).WithMany(p => p.SpecAssemblyUnitIdChildProductNavigations)
                .HasForeignKey(d => d.IdChildProduct)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_SpecAssemblyUnit_ChildProduct");

            entity.HasOne(d => d.IdProductNavigation).WithMany(p => p.SpecAssemblyUnitIdProductNavigations)
                .HasForeignKey(d => d.IdProduct)
                .HasConstraintName("FK_SpecAssemblyUnit_Product");
        });

        modelBuilder.Entity<SpecComponent>(entity =>
        {
            entity.HasKey(e => e.IdSpecComponent).HasName("SpecComponent_pkey");

            entity.ToTable("SpecComponent");

            entity.HasIndex(e => new { e.IdProduct, e.IdComponent }, "UQ_SpecComponent_Product_Component").IsUnique();

            entity.Property(e => e.IdSpecComponent).UseIdentityAlwaysColumn();
            entity.Property(e => e.Quantity).HasPrecision(18, 3);

            entity.HasOne(d => d.IdComponentNavigation).WithMany(p => p.SpecComponents)
                .HasForeignKey(d => d.IdComponent)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_SpecComponent_Component");

            entity.HasOne(d => d.IdProductNavigation).WithMany(p => p.SpecComponents)
                .HasForeignKey(d => d.IdProduct)
                .HasConstraintName("FK_SpecComponent_Product");
        });

        modelBuilder.Entity<SpecMaterial>(entity =>
        {
            entity.HasKey(e => e.IdSpecMaterial).HasName("SpecMaterial_pkey");

            entity.ToTable("SpecMaterial");

            entity.HasIndex(e => new { e.IdProduct, e.IdMaterial }, "UQ_SpecMaterial_Product_Material").IsUnique();

            entity.Property(e => e.IdSpecMaterial).UseIdentityAlwaysColumn();
            entity.Property(e => e.Quantity).HasPrecision(18, 3);

            entity.HasOne(d => d.IdMaterialNavigation).WithMany(p => p.SpecMaterials)
                .HasForeignKey(d => d.IdMaterial)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_SpecMaterial_Material");

            entity.HasOne(d => d.IdProductNavigation).WithMany(p => p.SpecMaterials)
                .HasForeignKey(d => d.IdProduct)
                .HasConstraintName("FK_SpecMaterial_Product");
        });

        modelBuilder.Entity<SpecOperation>(entity =>
        {
            entity.HasKey(e => e.IdSpecOperation).HasName("SpecOperation_pkey");

            entity.ToTable("SpecOperation");

            entity.HasIndex(e => new { e.IdProduct, e.SequenceNo }, "UQ_SpecOperation_Product_Seq").IsUnique();

            entity.Property(e => e.IdSpecOperation).UseIdentityAlwaysColumn();
            entity.Property(e => e.OperationName).HasMaxLength(255);

            entity.HasOne(d => d.IdEquipmentTypeNavigation).WithMany(p => p.SpecOperations)
                .HasForeignKey(d => d.IdEquipmentType)
                .OnDelete(DeleteBehavior.SetNull)
                .HasConstraintName("FK_SpecOperation_EquipmentType");

            entity.HasOne(d => d.IdProductNavigation).WithMany(p => p.SpecOperations)
                .HasForeignKey(d => d.IdProduct)
                .HasConstraintName("FK_SpecOperation_Product");
        });

        modelBuilder.Entity<Supplier>(entity =>
        {
            entity.HasKey(e => e.IdSupplier).HasName("Supplier_pkey");

            entity.ToTable("Supplier");

            entity.HasIndex(e => e.SupplierName, "Supplier_SupplierName_key").IsUnique();

            entity.Property(e => e.IdSupplier).UseIdentityAlwaysColumn();
            entity.Property(e => e.SupplierName).HasMaxLength(255);
        });

        modelBuilder.Entity<UserAccount>(entity =>
        {
            entity.HasKey(e => e.IdUserAccount).HasName("UserAccount_pkey");

            entity.ToTable("UserAccount");

            entity.HasIndex(e => e.Login, "UserAccount_Login_key").IsUnique();

            entity.Property(e => e.IdUserAccount).UseIdentityAlwaysColumn();
            entity.Property(e => e.FullName).HasMaxLength(255);
            entity.Property(e => e.Login).HasMaxLength(100);
            entity.Property(e => e.PasswordHash).HasMaxLength(255);

            entity.HasOne(d => d.IdUserRoleNavigation).WithMany(p => p.UserAccounts)
                .HasForeignKey(d => d.IdUserRole)
                .OnDelete(DeleteBehavior.Restrict)
                .HasConstraintName("FK_UserAccount_UserRole");
        });

        modelBuilder.Entity<UserRole>(entity =>
        {
            entity.HasKey(e => e.IdUserRole).HasName("UserRole_pkey");

            entity.ToTable("UserRole");

            entity.HasIndex(e => e.RoleName, "UserRole_RoleName_key").IsUnique();

            entity.Property(e => e.IdUserRole).UseIdentityAlwaysColumn();
            entity.Property(e => e.RoleName).HasMaxLength(30);
        });

        modelBuilder.Entity<Worker>(entity =>
        {
            entity.HasKey(e => e.IdWorker).HasName("Worker_pkey");

            entity.ToTable("Worker");

            entity.HasIndex(e => e.IdUserAccount, "Worker_IdUserAccount_key").IsUnique();

            entity.Property(e => e.IdWorker).UseIdentityAlwaysColumn();
            entity.Property(e => e.Education).HasMaxLength(255);
            entity.Property(e => e.Qualification).HasMaxLength(255);

            entity.HasOne(d => d.IdUserAccountNavigation).WithOne(p => p.Worker)
                .HasForeignKey<Worker>(d => d.IdUserAccount)
                .HasConstraintName("FK_Worker_UserAccount");
        });

        modelBuilder.Entity<WorkerOperation>(entity =>
        {
            entity.HasKey(e => e.IdWorkerOperation).HasName("WorkerOperation_pkey");

            entity.ToTable("WorkerOperation");

            entity.HasIndex(e => e.IdProductionOperation, "IX_WorkerOperation_IdProductionOperation");

            entity.HasIndex(e => e.IdWorker, "IX_WorkerOperation_IdWorker");

            entity.HasIndex(e => new { e.IdWorker, e.IdProductionOperation }, "UQ_WorkerOperation_Worker_Operation").IsUnique();

            entity.Property(e => e.IdWorkerOperation).UseIdentityAlwaysColumn();

            entity.HasOne(d => d.IdProductionOperationNavigation).WithMany(p => p.WorkerOperations)
                .HasForeignKey(d => d.IdProductionOperation)
                .HasConstraintName("FK_WorkerOperation_ProductionOperation");

            entity.HasOne(d => d.IdWorkerNavigation).WithMany(p => p.WorkerOperations)
                .HasForeignKey(d => d.IdWorker)
                .HasConstraintName("FK_WorkerOperation_Worker");
        });

        modelBuilder.Entity<Workshop>(entity =>
        {
            entity.HasKey(e => e.IdWorkshop).HasName("Workshop_pkey");

            entity.ToTable("Workshop");

            entity.HasIndex(e => e.WorkshopName, "Workshop_WorkshopName_key").IsUnique();

            entity.Property(e => e.IdWorkshop).UseIdentityAlwaysColumn();
            entity.Property(e => e.WorkshopName).HasMaxLength(255);
        });

        modelBuilder.Entity<WorkshopPlanItem>(entity =>
        {
            entity.HasKey(e => e.IdWorkshopPlanItem).HasName("WorkshopPlanItem_pkey");

            entity.ToTable("WorkshopPlanItem");

            entity.Property(e => e.IdWorkshopPlanItem).UseIdentityAlwaysColumn();
            entity.Property(e => e.IconType).HasMaxLength(50);
            entity.Property(e => e.PosX).HasPrecision(18, 2);
            entity.Property(e => e.PosY).HasPrecision(18, 2);

            entity.HasOne(d => d.IdWorkshopNavigation).WithMany(p => p.WorkshopPlanItems)
                .HasForeignKey(d => d.IdWorkshop)
                .HasConstraintName("FK_WorkshopPlanItem_Workshop");
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
