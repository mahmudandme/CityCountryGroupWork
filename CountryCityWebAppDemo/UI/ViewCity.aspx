<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewCity.aspx.cs" Inherits="CountryCityWebAppDemo.UI.ViewCity" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Styles/NewStyleSheet.css" rel="stylesheet" />
    
     <div class="wrapper2">
         <div class="headerText1">
             <h1>View Cities</h1>
         </div>
        <div class="searchContent">
            <fieldset>
                <legend>Search criteria</legend><br/>
              <table>
          <tr>
              <td>
                  <asp:RadioButton ID="cityRadioButton" runat="server" Text="City" GroupName="searchRadioButton" Checked="True" AutoPostBack="True" OnCheckedChanged="cityRadioButton_CheckedChanged" /></td>
              <td>Name : </td>
              <td>
                  <asp:TextBox ID="citySearchTextBox" runat="server" Width="200px"></asp:TextBox></td>
              <td></td>
          </tr>
          <tr>
              <td>
                  <asp:RadioButton ID="countryRadioButton" Text="Country" runat="server" GroupName="searchRadioButton" AutoPostBack="True" OnCheckedChanged="cityRadioButton_CheckedChanged" /></td>
              <td></td>
              <td>
                  <asp:DropDownList ID="countryDropDownList" runat="server" Width="205px" Height="25px"></asp:DropDownList>
              <td>
                  <asp:Button ID="searchButton" runat="server" Text="Search" Width="80px" Height="30px" OnClick="searchButton_Click" /></td>
          </tr>
      </table>
            </fieldset>
        </div>
         <div class="searchOutputRegion">
             <asp:GridView ID="citySearchGridView" AutoGenerateColumns="False" AllowPaging="True" PageSize="4" runat="server" CssClass="citySearchGridViewClass" OnPageIndexChanging="citySearchGridView_PageIndexChanging" OnRowDataBound="citySearchGridView_RowDataBound">
                 <Columns>
                 <asp:BoundField HeaderText="Serial" DataField="Serial" HtmlEncode="False"/>
                 <asp:BoundField HeaderText="City Name" DataField="Name" HtmlEncode="False"/>
                 <asp:BoundField HeaderText="About" DataField="About" HtmlEncode="False"/>
                 <asp:BoundField HeaderText="Number Of Dwellers" DataField="NumberOfDwellers" HtmlEncode="False"/>
                 <asp:BoundField HeaderText="Location" DataField="Location" HtmlEncode="False"/>
                 <asp:BoundField HeaderText="Weather" DataField="Weather" HtmlEncode="False"/>
                 <asp:BoundField HeaderText="Country" DataField="Country" HtmlEncode="False"/>
                 <asp:BoundField HeaderText="About Country" DataField="AboutCountry" HtmlEncode="False"/>
                 </Columns>
             </asp:GridView>
         </div>

    </div>
    
    

</asp:Content>
