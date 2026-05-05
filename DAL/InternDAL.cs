using System;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Common;

public class InternDAL
{
    private readonly string _connectionString;

    public InternDAL(IConfiguration configuration)
    {
        _connectionString = configuration.GetConnectionString("DefaultConnection");
    }

    public bool SaveIntern(Intern intern)
    {
        bool isSaved = false;

        using (SqlConnection con = new SqlConnection(_connectionString))
        {
            using (SqlCommand cmd = new SqlCommand("InsertIntern", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Userid", intern.userid);
                cmd.Parameters.AddWithValue("@Age", intern.Age);
                cmd.Parameters.AddWithValue("@Gender", intern.Gender);
                cmd.Parameters.AddWithValue("@status", intern.status);
                cmd.Parameters.AddWithValue("@diagnosed", intern.diagnosed);
                cmd.Parameters.AddWithValue("@treatment", intern.treatment);

                cmd.Parameters.AddWithValue("@Q1", intern.Q1);
                cmd.Parameters.AddWithValue("@Q2", intern.Q2);
                cmd.Parameters.AddWithValue("@Q3", intern.Q3);
                cmd.Parameters.AddWithValue("@Q4", intern.Q4);
                cmd.Parameters.AddWithValue("@Q5", intern.Q5);
                cmd.Parameters.AddWithValue("@Q6", intern.Q6);
                cmd.Parameters.AddWithValue("@Q7", intern.Q7);
                cmd.Parameters.AddWithValue("@Q8", intern.Q8);
                cmd.Parameters.AddWithValue("@Q9", intern.Q9);

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