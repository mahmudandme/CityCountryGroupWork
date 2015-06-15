<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewCountry.aspx.cs" Inherits="CountryCityWebAppDemo.UI.ViewCountry" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Styles/ViewCountryStyle.css" rel="stylesheet" />
    <div class="wrapper2">
         <div class="headerText1">
             <h1>View Countries</h1>
         </div>
        <div class="searchContent">
            <fieldset>
                <legend>Search criteria</legend><br/>
              <table>
          <tr>
              <td>
                  Name :
              </td>
              <td>
                  <asp:TextBox ID="countryPartialNameTextBox" runat="server" Width="200px" Height="25px"></asp:TextBox>
              </td>
              <td>
                  <asp:Button ID="searchButton" runat="server" Text="Search" Width="80px" Height="25px" OnClick="searchButton_Click" />
              </td>
          </tr>
          
      </table>
            </fieldset>
        </div>
         <div class="searchOutputRegion">
             <asp:GridView ID="countrySearchGridView" runat="server" CssClass="countrySearchGridViewClass" AutoGenerateColumns="False" AllowPaging="True" PageSize="2" OnPageIndexChanging="countrySearchGridView_PageIndexChanging">
                 
                 <Columns>
                     <asp:BoundField HtmlEncode="False" HeaderText="Serial" DataField="Serial"/>
                     <asp:BoundField HtmlEncode="False" HeaderText="Name" DataField="Name"/>
                     <asp:BoundField HtmlEncode="False" HeaderText="About" DataField="About"/>
                     <asp:BoundField HtmlEncode="False" HeaderText="Number of City" DataField="NoOfCity"/>
                     <asp:BoundField HtmlEncode="False" HeaderText="Dwellers" DataField="NoOfCityDweller"/>
                 </Columns>
             </asp:GridView>
         </div>

    </div>

</asp:Content>
