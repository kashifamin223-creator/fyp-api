using Common;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;

namespace DAL
{
    public class EmployedDAL
    {
        private readonly string _connectionString;

        public EmployedDAL(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");

        }

        public bool InsertEmployed(Employed emp)
        {
            bool isSaved = false;

            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("InsertEmployed", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Userid", emp.userid);
                    cmd.Parameters.AddWithValue("@Age", emp.Age);
                    cmd.Parameters.AddWithValue("@Gender", emp.Gender);
                    cmd.Parameters.AddWithValue("@employment", emp.employment);
                    cmd.Parameters.AddWithValue("@years", emp.years);
                    cmd.Parameters.AddWithValue("@diagnosed", emp.diagnosed);
                    cmd.Parameters.AddWithValue("@support", emp.support);

                    cmd.Parameters.AddWithValue("@Q1", emp.Q1);
                    cmd.Parameters.AddWithValue("@Q2", emp.Q2);
                    cmd.Parameters.AddWithValue("@Q3", emp.Q3);
                    cmd.Parameters.AddWithValue("@Q4", emp.Q4);
                    cmd.Parameters.AddWithValue("@Q5", emp.Q5);
                    cmd.Parameters.AddWithValue("@Q6", emp.Q6);
                    cmd.Parameters.AddWithValue("@Q7", emp.Q7);
                    cmd.Parameters.AddWithValue("@Q8", emp.Q8);
                    cmd.Parameters.AddWithValue("@Q9", emp.Q9);
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