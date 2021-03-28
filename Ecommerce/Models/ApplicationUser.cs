using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Ecommerce.Models
{
    public class ApplicationUser : IdentityUser
    {
        [Required]
        public string FullName { get; set; }

        [Required]
        [NotMapped]
        public string StreetAddress { get; set; }

        [Required]
        [NotMapped]
        public string City { get; set; }

        [Required]
        [NotMapped]
        public string State { get; set; }

        [Required]
        [NotMapped]
        public string PostalCode { get; set; }
    }
}
