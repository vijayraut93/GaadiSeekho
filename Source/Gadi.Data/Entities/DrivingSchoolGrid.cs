namespace Gadi.Data.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("DrivingSchoolGrid")]
    public partial class DrivingSchoolGrid
    {
        [Key]
        [Column(Order = 0)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int DrivingSchoolId { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(500)]
        public string Name { get; set; }

        [Key]
        [Column(Order = 2)]
        [StringLength(500)]
        public string Address1 { get; set; }

        [StringLength(500)]
        public string Address2 { get; set; }

        [StringLength(500)]
        public string Address3 { get; set; }

        [StringLength(500)]
        public string Address4 { get; set; }

        [Key]
        [Column(Order = 3)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int Pincode { get; set; }

        [Key]
        [Column(Order = 4)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public long Mobile { get; set; }

        [StringLength(100)]
        public string Telephone { get; set; }

        [StringLength(100)]
        public string EmailId { get; set; }

        [Key]
        [Column(Order = 5, TypeName = "datetime2")]
        public DateTime CreatedDate { get; set; }

        public double? Latitude { get; set; }

        public double? Longitude { get; set; }

        public decimal? MinimumFeeWithLicense { get; set; }

        public decimal? MinimumFeeWithOutLicense { get; set; }

        public int? NumberOfCars { get; set; }

        [Key]
        [Column(Order = 6)]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int PersonnelId { get; set; }

        public string RelativePath { get; set; }

        [StringLength(1180)]
        public string SearchField { get; set; }
    }
}
