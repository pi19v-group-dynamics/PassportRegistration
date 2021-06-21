using Npgsql;
using System;
using System.Collections.Generic;
using System.Data;

namespace PassportRegistration
{
    class Database
    {
        NpgsqlConnection _connection;

        public Database(string host, string username, string password, string database)
        {
            _connection = new NpgsqlConnection($"Host={host};Username={username};Password={password};Database={database}");
        }

        public List<string> Tables()
        {
            try
            {
                List<string> tables = new List<string>();

                _connection.Open();

                string sql = "SELECT table_name " +
                    "FROM information_schema.tables " +
                    "WHERE table_schema = 'public' " +
                    "ORDER BY table_name";

                NpgsqlCommand cmd = new NpgsqlCommand(sql, _connection);
                NpgsqlDataReader dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    tables.Add(dr[0].ToString());
                }

                return tables;
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                _connection.Close();
            }
        }

        public bool IsConnected()
        {
            bool isConnected = false;
            try
            {
                _connection.Open();
                if (_connection.State == System.Data.ConnectionState.Open)
                {
                    isConnected = true;
                    return isConnected;
                }
                else
                    return isConnected;
            }
            catch (Exception)
            {
                return isConnected;
            }
            finally
            {
                _connection.Close();
            }
        }

        public DataTable SelectTable(string sql)
        {
            try
            {
                DataTable dt = new DataTable();

                _connection.Open();

                NpgsqlCommand cmd = new NpgsqlCommand(sql, _connection);
                dt.Load(cmd.ExecuteReader());

                return dt;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                _connection.Close();
            }
        }

        public void NonQuery(string sql)
        {
            try
            {
                _connection.Open();
                NpgsqlCommand cmd = new NpgsqlCommand(sql, _connection);
                cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                _connection.Close();
            }
        }

        public List<string> Values(string sql, string columnName)
        {
            try
            {
                List<string> values = new List<string>();
                NpgsqlDataReader dr;

                _connection.Open();
                NpgsqlCommand cmd = new NpgsqlCommand(sql, _connection);

                dr = cmd.ExecuteReader();

                while (dr.Read())
                {
                    values.Add(dr.GetString(dr.GetOrdinal(columnName)));
                }

                return values;
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                _connection.Close();
            }
        }

        public object Scalar(string sql)
        {
            try
            {
                _connection.Open();

                NpgsqlCommand cmd = new NpgsqlCommand(sql, _connection);
                return cmd.ExecuteScalar();
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                _connection.Close();
            }
        }
    }
}
