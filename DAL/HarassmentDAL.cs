using Common;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class HarassmentDAL
{
    private readonly string _connectionString;

    public HarassmentDAL(IConfiguration configuration)
    {
        _connectionString = configuration.GetConnectionString("DefaultConnection");
    }

    public bool SaveHarassment(Harassment harassment)
    {
        bool isSaved = false;

        using (SqlConnection con = new SqlConnection(_connectionString))
        {
            using (SqlCommand cmd = new SqlCommand("InsertHarassment", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Userid", harassment.userid);
                cmd.Parameters.AddWithValue("@Q1", harassment.Q1);
                cmd.Parameters.AddWithValue("@Q2", harassment.Q2);
                cmd.Parameters.AddWithValue("@Q3", harassment.Q3);
                cmd.Parameters.AddWithValue("@Q4", harassment.Q4);
                cmd.Parameters.AddWithValue("@Q5", harassment.Q5);
                cmd.Parameters.AddWithValue("@Q6", harassment.Q6);
                cmd.Parameters.AddWithValue("@Q7", harassment.Q7);
                cmd.Parameters.AddWithValue("@Q8", harassment.Q8);
                cmd.Parameters.AddWithValue("@Q9", harassment.Q9);

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
