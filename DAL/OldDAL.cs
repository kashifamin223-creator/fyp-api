using Common;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;

namespace DAL
{
    public class OldDAL
    {
        private readonly string _connectionString;

        public OldDAL(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");

        }

        public bool InsertOld(Old old)
        {
            bool isSaved = false;

            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("InsertOldage", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Userid", old.userid);
                    cmd.Parameters.AddWithValue("@Age", old.Age);
                    cmd.Parameters.AddWithValue("@Gender", old.Gender);
                    cmd.Parameters.AddWithValue("@living", old.living);
                    cmd.Parameters.AddWithValue("@diagnosed", old.diagnosed);
                    cmd.Parameters.AddWithValue("@support", old.support);

                    cmd.Parameters.AddWithValue("@Q1", old.Q1);
                    cmd.Parameters.AddWithValue("@Q2", old.Q2);
                    cmd.Parameters.AddWithValue("@Q3", old.Q3);
                    cmd.Parameters.AddWithValue("@Q4", old.Q4);
                    cmd.Parameters.AddWithValue("@Q5", old.Q5);
                    cmd.Parameters.AddWithValue("@Q6", old.Q6);
                    cmd.Parameters.AddWithValue("@Q7", old.Q7);
                    cmd.Parameters.AddWithValue("@Q8", old.Q8);
                    cmd.Parameters.AddWithValue("@Q9", old.Q9);

                    con.Open();
                    int rows = cmd.ExecuteNonQuery();
                    con.Close();
                    if (rows > 0)
                        isSaved = true;
                }
            }
            return isSaved;

        }
    }
}