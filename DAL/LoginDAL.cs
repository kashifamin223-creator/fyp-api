
using Common;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;

namespace DAL
{
    public class LoginDAL
    {
        private readonly string _connectionString;

        public LoginDAL(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        public (bool IsValid, long? UserId) AuthenticateUser(Login login)
        {
            bool isValid = false;
            long? userId = null;

            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("AuthenticateUser", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Email", login.Email);
                    cmd.Parameters.AddWithValue("@Password", login.Password);

                    SqlParameter userIdParam = new SqlParameter("@Userid", SqlDbType.BigInt)
                    {
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(userIdParam);

                    SqlParameter isValidParam = new SqlParameter("@IsValid", SqlDbType.Bit)
                    {
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(isValidParam);

                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    isValid = (bool)isValidParam.Value;
                    if (isValid && userIdParam.Value != DBNull.Value)
                    {
                        userId = Convert.ToInt64(userIdParam.Value);
                    }
                }
            }

            return (isValid, userId);
        }

        public bool SaveLogin(Login login)
        {
            var result = AuthenticateUser(login);
            return result.IsValid;
        }
    }
}
