using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Example_22_5
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //using System.Data;
        //using System.Data.SqlClient;
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowTableInGridView("shop.mdf", "select * from tblshop", GridView1);
        }
        //------------------------------------------------------------------------------------------
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Insert("shop.mdf", "tblshop", txtName.Text, txtSize.Text, txtModel.Text, txtTedad.Text, txtPool.Text, txtCountry.Text);
            ShowTableInGridView("shop.mdf", "select * from tblshop", GridView1);
        }
        //------------------------------------------------------------------------------------------
        public bool Insert(string bankName, string tableName, params string[] fieldValues)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = @"Data Source=.\sqlexpress; AttachDbFilename=|datadirectory|\" + bankName + "; Integrated Security=True; User Instance=True";
                connection.Open();
                SqlCommand command = new SqlCommand();
                string parameters = "";
                for (int i = 0; i < fieldValues.Length; i++)
                    parameters += "@" + "Field" + i + ",";
                parameters = parameters.Remove(parameters.Length - 1);
                command.CommandText = "insert into " + tableName + " values(" + parameters + ")";
                for (int i = 0; i < fieldValues.Length; i++)
                    command.Parameters.AddWithValue("Field" + i, fieldValues[i].ToString());
                command.Connection = connection;
                command.ExecuteNonQuery();
                connection.Close();
                return true;
            }
            catch (Exception e)
            {
                Response.Write(e.Message);
                return false;
            }
        }
        //------------------------------------------------------------------------------------------
        public void ShowTableInGridView(string bankName, string sqlString, GridView grView)
        {
            try
            {
                SqlConnection connection = new SqlConnection();
                connection.ConnectionString = @"Data Source=.\sqlexpress; AttachDbFilename=|datadirectory|\" + bankName + "; Integrated Security=True; User Instance=True";
                connection.Open();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(sqlString, connection);
                da.Fill(dt);
                grView.DataSource = dt;
                GridView1.DataBind();
                connection.Close();
            }
            catch (Exception e)
            {
                Response.Write(e.Message);
            }
        }
    }
}