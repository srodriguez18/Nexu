using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace ModelsAPI.Entity
{
    [Table("Brands", Schema = "dbo")]
    public class Brands
    {
        [Key]
        public int id { get; set; }
        public string name { get; set; }

    }
}