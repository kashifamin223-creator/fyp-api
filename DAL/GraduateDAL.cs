using System;
using System.Data;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Common;

public class GraduateDAL
{
    private readonly string _connectionString;

    public GraduateDAL(IConfiguration configuration)
    {
        _connectionString = configuration.GetConnectionString("DefaultConnection");
    }

    public bool SaveGraduate(Graduate graduate)
    {
        bool isSaved = false;

        using (SqlConnection con = new SqlConnection(_connectionString))
        {
            using (SqlCommand cmd = new SqlCommand("InsertGraduate", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                // Parameters mapping
                cmd.Parameters.AddWithValue("@Userid", graduate.Userid);
                cmd.Parameters.AddWithValue("@Age", graduate.Age);
                cmd.Parameters.AddWithValue("@Gender", graduate.Gender);
                cmd.Parameters.AddWithValue("@Education", graduate.education);
                cmd.Parameters.AddWithValue("@Diagnosed", graduate.diagnosed);
                cmd.Parameters.AddWithValue("@support", graduate.support);

                cmd.Parameters.AddWithValue("@Q1", graduate.Q1);
                cmd.Parameters.AddWithValue("@Q2", graduate.Q2);
                cmd.Parameters.AddWithValue("@Q3", graduate.Q3);
                cmd.Parameters.AddWithValue("@Q4", graduate.Q4);
                cmd.Parameters.AddWithValue("@Q5", graduate.Q5);
                cmd.Parameters.AddWithValue("@Q6", graduate.Q6);
                cmd.Parameters.AddWithValue("@Q7", graduate.Q7);
                cmd.Parameters.AddWithValue("@Q8", graduate.Q8);
                cmd.Parameters.AddWithValue("@Q9", graduate.Q9);

                con.Open();

                int rows = cmd.ExecuteNonQuery();
                con.Close();
                if (rows > 0)
                {
                    isSaved = true;
                }
            }
        }

        return isSaved;
    }
}