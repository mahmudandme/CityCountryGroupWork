using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityWebAppDemo.BLL;

namespace CountryCityWebAppDemo.UI
{
    public partial class ViewCountry : System.Web.UI.Page
    {
       SearchCountryBLL searchCountryBll = new SearchCountryBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            GetAllCountryInforationInGrid();
        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            countrySearchGridView.DataSource =
                searchCountryBll.GetAllCountryByCountryName(countryPartialNameTextBox.Text);
            countrySearchGridView.DataBind();
        }

        protected void countrySearchGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            countrySearchGridView.PageIndex = e.NewPageIndex;
            
        }

        public void GetAllCountryInforationInGrid()
        {
            countrySearchGridView.DataSource = searchCountryBll.GetAllCountryInformation();
            countrySearchGridView.DataBind();

        }



    }
}