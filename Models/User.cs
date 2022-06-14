using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace signin_signup_backend.Models
{
    [Table("tb_User", Schema = "signIn_signUp")]
    public class User
    {
        [Key]

        public string Id { get; set; }
        public string Name { get; set; }
        public string Password { get; set; }
    }
}
