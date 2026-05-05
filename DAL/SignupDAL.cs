using Common;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;

namespace DAL
{
    public class SignupDAL
    {
        private readonly string _connectionString;

        public SignupDAL(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }

        public (bool IsSaved, long? UserId) InsertSignup(Signup obj)
        {
            bool isSaved = false;
            long? userId = null;

            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("InsertSign_up", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Email", obj.Email);
                    cmd.Parameters.AddWithValue("@Password", obj.Password);

                    SqlParameter userIdParam = new SqlParameter("@Userid", SqlDbType.BigInt);
                    userIdParam.Direction = ParameterDirection.Output;
                    cmd.Parameters.Add(userIdParam);

                    con.Open();
                    int rows = cmd.ExecuteNonQuery();
                    con.Close();
                    
                    if (rows > 0 || rows == -1)
                    {
                        isSaved = true;
                        if (userIdParam.Value != DBNull.Value)
                        {
                            userId = Convert.ToInt64(userIdParam.Value);
                        }
                    }
                }   
            }
            return (isSaved, userId);
        }
    }
}