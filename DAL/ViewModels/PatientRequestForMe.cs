using DAL.DataModels;
using Microsoft.AspNetCore.Http;
using System.ComponentModel.DataAnnotations;

namespace DAL.ViewModels
{
    public class PatientRequestForMe
    {

        public string? UserName { get; set; }
        public string? symptoms { get; set; }
        [Required(ErrorMessage = "First name cannot be kept empty")]
        [RegularExpression("^[a-zA-Z]+$", ErrorMessage = "Please enter a valid first name.")]
        public string FirstName { get; set; }
        [Required(ErrorMessage = "Last name cannot be kept empty")]
        [RegularExpression("^[a-zA-Z]+$", ErrorMessage = "Please enter a valid last name.")]
        public string LastName { get; set; }
        [Required(ErrorMessage = "Date of Birth cannot be empty")]
        public DateTime? DOB { get; set; }
        [Required(ErrorMessage = "Email cannot be kept empty")]
        [RegularExpression("^([\\w\\.\\-]+)@([\\w\\-]+)((\\.(\\w){2,3})+)$", ErrorMessage = "Enter Valid Email")]
        public string? Email { get; set; }
        [Required(ErrorMessage = "Phone number cannot be kept empty")]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Entered phone format is not valid.")]
        public string? PhoneNumber { get; set; }
        public string? Street { get; set; }
        public string? City { get; set; }
        [Required(ErrorMessage = "Kindly select a state")]
        public int? State { get; set; }
        [StringLength(6)]
        public string? Zipcode { get; set; }
        public string? Room { get; set; }
        public IFormFile? File { get; set; }
        public int RequestID { get; set; }
        public string code { get; set; }
        public List<Region>? regions { get; set; }
    }
}
