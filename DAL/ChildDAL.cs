using Common;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

public class ChildDAL
{
    private readonly string _connectionString;

    public ChildDAL(IConfiguration configuration)
    {
        _connectionString = configuration.GetConnectionString("DefaultConnection");
    }

    public bool SaveChild(Child child)
    {
        bool isSaved = false;

        using (SqlConnection con = new SqlConnection(_connectionString))
        {
            using (SqlCommand cmd = new SqlCommand("InsertChild", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Userid", child.userid);
                cmd.Parameters.AddWithValue("@Q1", child.Q1);
                cmd.Parameters.AddWithValue("@Q2", child.Q2);
                cmd.Parameters.AddWithValue("@Q3", child.Q3);
                cmd.Parameters.AddWithValue("@Q4", child.Q4);
                cmd.Parameters.AddWithValue("@Q5", child.Q5);
                cmd.Parameters.AddWithValue("@Q6", child.Q6);
                cmd.Parameters.AddWithValue("@Q7", child.Q7);
                cmd.Parameters.AddWithValue("@Q8", child.Q8);
                cmd.Parameters.AddWithValue("@Q9", child.Q9);
                                                   
                con.Open();

                int rows = cmd.ExecuteNonQuery();

                if (rows > 0)
                {
                    isSaved = true;
                }
            }
        }

        return isSaved;
    }
}