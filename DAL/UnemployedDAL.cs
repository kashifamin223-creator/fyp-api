using Common;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;

namespace DAL
{
    public class UnemployedDAL
    {
        private readonly string _connectionString;

        
        public UnemployedDAL(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public bool SaveUnemployed(Unemployed unemployed )
        {
            bool isSaved = false;

            {
                using (SqlConnection con = new SqlConnection(_connectionString))
                {
                    using (SqlCommand cmd = new SqlCommand("InsertUnemployed", con))
                    {
                        cmd.CommandType = CommandType.StoredProcedure;

                        cmd.Parameters.AddWithValue("@Userid", unemployed.userid);
                        cmd.Parameters.AddWithValue("@Age", unemployed.Age);
                        cmd.Parameters.AddWithValue("@Gender", unemployed.Gender);
                        cmd.Parameters.AddWithValue("@employment", unemployed.employment);
                        cmd.Parameters.AddWithValue("@diagnosed", unemployed.diagnosed);
                        cmd.Parameters.AddWithValue("@support", unemployed.support);

                        cmd.Parameters.AddWithValue("@Q1", unemployed.Q1);
                        cmd.Parameters.AddWithValue("@Q2", unemployed.Q2);
                        cmd.Parameters.AddWithValue("@Q3", unemployed.Q3);
                        cmd.Parameters.AddWithValue("@Q4", unemployed.Q4);
                        cmd.Parameters.AddWithValue("@Q5", unemployed.Q5);
                        cmd.Parameters.AddWithValue("@Q6", unemployed.Q6);
                        cmd.Parameters.AddWithValue("@Q7", unemployed.Q7);
                        cmd.Parameters.AddWithValue("@Q8", unemployed.Q8);
                        cmd.Parameters.AddWithValue("@Q9", unemployed.Q9);

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
}