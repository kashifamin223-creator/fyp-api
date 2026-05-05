using Common;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System.Data;

namespace DAL
{
    public class ParentsDAL
    {
        private readonly string _connectionString;

       
        public ParentsDAL(IConfiguration configuration)
        {
            _connectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public bool InsertParents(Parents obj)
        {
            bool isSaved = false;

            using (SqlConnection con = new SqlConnection(_connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("InsertParents", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@Userid", obj.userid);
                    cmd.Parameters.AddWithValue("@Age", obj.Age);
                    cmd.Parameters.AddWithValue("@Gender", obj.Gender);
                    cmd.Parameters.AddWithValue("@parenting", obj.parenting);
                    cmd.Parameters.AddWithValue("@number", obj.number);
                    cmd.Parameters.AddWithValue("@diagnosed", obj.diagnosed);
                    cmd.Parameters.AddWithValue("@support", obj.support);

                    cmd.Parameters.AddWithValue("@Q1", obj.Q1);
                    cmd.Parameters.AddWithValue("@Q2", obj.Q2);
                    cmd.Parameters.AddWithValue("@Q3", obj.Q3);
                    cmd.Parameters.AddWithValue("@Q4", obj.Q4);
                    cmd.Parameters.AddWithValue("@Q5", obj.Q5);
                    cmd.Parameters.AddWithValue("@Q6", obj.Q6);
                    cmd.Parameters.AddWithValue("@Q7", obj.Q7);
                    cmd.Parameters.AddWithValue("@Q8", obj.Q8);
                    cmd.Parameters.AddWithValue("@Q9", obj.Q9);

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