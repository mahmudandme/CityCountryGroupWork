using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Caching;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityWebAppDemo.BLL;
using CountryCityWebAppDemo.Model;

namespace CountryCityWebAppDemo.UI
{
    public partial class CityEntry : System.Web.UI.Page
    {
        CityEntryBLL cityEntryBll = new CityEntryBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (! IsPostBack)
            {
                //ListItem li = new ListItem("Select country", "-1");
                //countryDropDownList.Items.Insert(0, li);
                GetAllCountryNamesInDropDownList();
                GetSomeCityInformation();
            }
            
            
        }

        public void GetAllCountryNamesInDropDownList()
        {
            List<Country> countries = cityEntryBll.GetAllCountryNames();
            countryDropDownList.DataSource = countries;
            countryDropDownList.DataTextField = "Name";
            countryDropDownList.DataValueField = "ID";
            countryDropDownList.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            if (cityEntryBll.IsCityExist(cityNameTextBox.Text))
            {
                statusLabel.Text = "City name already exist";
                statusLabel.ForeColor = System.Drawing.Color.Red;
                GetSomeCityInformation();
            }
            else
            {
                City city = new City();
                city.Name = cityNameTextBox.Text;
                city.About = Request.Form["edit1"];
                city.NumberOfDwellers = Convert.ToInt32(numberOfDwellersTextBox.Text);
                city.Location = locationTextBox.Text;
                city.Weather = weatherTextBox.Text;
                city.CountryID = Convert.ToInt32(countryDropDownList.SelectedValue);
                if (cityEntryBll.SaveCityInformation(city) >0)
                {
                    GetAllCountryNamesInDropDownList();
                    
                    statusLabel.Text = "Information saved";
                    statusLabel.ForeColor = System.Drawing.Color.Green;
                    

                }
                else
                {
                    statusLabel.Text = "Not saved";
                    statusLabel.ForeColor = System.Drawing.Color.Red;
                }
                

            }

            
        }

        public void GetSomeCityInformation()
        {
            cityGridView.DataSource = cityEntryBll.GetSomeCityInformation();
            cityGridView.DataBind();



        }

        protected void cityGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = "S#";
                e.Row.Cells[0].Width = 40;
                e.Row.Cells[1].Width = 100;
                e.Row.Cells[2].Width = 50;
                e.Row.Cells[3].Width = 100;
                


            }
        }

        protected void cityGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            cityGridView.PageIndex = e.NewPageIndex;
            GetSomeCityInformation();
        }


    }
}