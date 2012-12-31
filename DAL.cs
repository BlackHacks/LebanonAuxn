using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Text;
using System.Data;

namespace LebanonAuxn
{
    public class DAL
    {
        public static MySqlCommand getCommand(String cmdStr)
        {
            string connectionString = "database=Lebanonauxn; User Id=root; Password=root";
            // Create connection object, initialize with connection string, and open it.
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            StringBuilder s = new StringBuilder(cmdStr);
            command.CommandText = s.ToString();
            return command;
        }

        public static MySqlDataReader getReader(String cmdStr)
        {
            MySqlCommand command = getCommand(cmdStr);


            // create a DataReader and tell it to close the connection to the database when it is closed
            return command.ExecuteReader(CommandBehavior.CloseConnection);
        }

        public static MySqlCommand getCommand1(String cmdStr)
        {
            string connectionString = "database=Lebanonauxn; User Id=root; Password=root";
            // Create connection object, initialize with connection string, and open it.
            MySqlConnection connection = new MySqlConnection(connectionString);
            connection.Open();

            MySqlCommand command = new MySqlCommand();
            command.Connection = connection;
            StringBuilder s = new StringBuilder(cmdStr);
            command.CommandText = s.ToString();
            return command;
        }

        public static MySqlDataReader getReader1(String cmdStr)
        {
            MySqlCommand command = getCommand1(cmdStr);


            // create a DataReader and tell it to close the connection to the database when it is closed
            return command.ExecuteReader(CommandBehavior.CloseConnection);
        }

       

    }
}