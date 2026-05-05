using System;
using System.Data;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Common;

public class TraumaDAL
{
    private readonly string _connectionString;

    public TraumaDAL(IConfiguration configuration)
    {
        _connectionString = configuration.GetConnectionString("DefaultConnection");
    }

    public bool SaveTrauma(Trauma trauma)
    {
        bool isSaved = false;

        using (SqlConnection con = new SqlConnection(_connectionString))
        {
            using (SqlCommand cmd = new SqlCommand("InsertTrauma", con))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Userid", trauma.userid);
                cmd.Parameters.AddWithValue("@Q1", trauma.Q1);
                cmd.Parameters.AddWithValue("@Q2", trauma.Q2);
                cmd.Parameters.AddWithValue("@Q3", trauma.Q3);
                cmd.Parameters.AddWithValue("@Q4", trauma.Q4);
                cmd.Parameters.AddWithValue("@Q5", trauma.Q5);
                cmd.Parameters.AddWithValue("@Q6", trauma.Q6);
                cmd.Parameters.AddWithValue("@Q7", trauma.Q7);
                cmd.Parameters.AddWithValue("@Q8", trauma.Q8);
                cmd.Parameters.AddWithValue("@Q9", trauma.Q9);

                // ✅ Output parameter
                SqlParameter output = new SqlParameter("@Result", SqlDbType.Int);
                output.Direction = ParameterDirection.Output;
                cmd.Parameters.Add(output);

                con.Open();
                cmd.ExecuteNonQuery();

                int result = (int)output.Value;
                con.Close();

                if (result == 1)
                    isSaved = true;
            }
        }

        return isSaved;
    }
}