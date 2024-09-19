using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TeamManagement.Models
{
    public class DepartmentModel
    {
        [DisplayName("Department Id")]
        public int Id { get; set; }
        [Required]
        [DisplayName("Department Name")]
        public string DepartmentName { get; set; }

        [DisplayName("Created Date")]
        [Required]
        public DateTime CreatedDate { get; set; }
    }
}
