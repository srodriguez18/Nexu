using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace ModelsAPI.Entity
{
    [Table("Models", Schema = "dbo")]
    public class Models
    {
        [Key]
        public int? id { get; set; }
        public string? name { get; set; }
        public int? average_price { get; set; }
        public int? brand_id { get; set; }

    }
}