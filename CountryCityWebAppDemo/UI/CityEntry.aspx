<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="CityEntry.aspx.cs" Inherits="CountryCityWebAppDemo.UI.CityEntry" ValidateRequest="false" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Styles/CityEntryStyle.css" rel="stylesheet" />
    <link href="../Froala/css/froala_editor.css" rel="stylesheet" />
    <link href="../Froala/css/froala_style.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
     
    


    <div class="cityEntryWrapper">   
        <div class="cityEntryContainer">
            <div class="cityEntryHeaderText">
                <h1>City Entry</h1>
            </div>
            <div class="cityEntryContent">
            <div class="nameEntryDiv">
                <div class="nameText">
                    <h1>Name :</h1>
                </div>
                
                <div class="nameTextBoxDiv">
                    <asp:TextBox ID="cityNameTextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="cityNameTextBox" ErrorMessage="City name is required" ForeColor="red">
                        
                    </asp:RequiredFieldValidator>
                </div>
            </div>
            
            <div class="aboutEntryDiv">
              <div class="aboutText">
                    <h1>About :</h1>
                </div>
                
                <div class="aboutTextBoxDiv">
                    <textarea id="edit1" cols="20" name="edit1" rows="2"></textarea>  
                    
                     </div>  
            </div>
                
                
                <div class="nOfDwDiv">
                <div class="numberOfDwlText">
                    <h1>Number of dwellers :</h1>
                </div>
                
                <div class="numberOfDwlTextBox">
                    <asp:TextBox ID="numberOfDwellersTextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Display="Dynamic" ControlToValidate="numberOfDwellersTextBox" runat="server" ErrorMessage="Number of dwellers is required" ForeColor="red">
                        
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" Type="Integer" MinimumValue="0" MaximumValue="1000000000" Display="Dynamic" ControlToValidate="numberOfDwellersTextBox" ErrorMessage="Number of dwellers must be an integr number" ForeColor="red">
                        
                    </asp:RangeValidator>

                </div>
            </div>
                
                <div class="locationEntryDiv">
                <div class="locationText">
                    <h1>Location :</h1>
                </div>
                
                <div class="locationTextBoxDiv">
                    <asp:TextBox ID="locationTextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="locationTextBox" runat="server" ErrorMessage="Location is required" ForeColor="red"></asp:RequiredFieldValidator>
                </div>
            </div>
                
             
                 <div class="weatherEntryDiv">
              <div class="weatherText">
                    <h1>Weather :</h1>
                </div>
                
                <div class="weatherTextBoxDiv">
                    <asp:TextBox ID="weatherTextBox" runat="server" Height="70px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Weather is required" ControlToValidate="weatherTextBox" ForeColor="red"></asp:RequiredFieldValidator>
                </div>  
            </div>   

                
                <div class="countryEntryDiv">
                <div class="countryText">
                    <h1>Country :</h1>
                </div>
                
                <div class="countryDropdown">
                    <asp:DropDownList ID="countryDropDownList" runat="server" Width="205px" Height="25px"></asp:DropDownList>
                </div>
            </div>

                

         </div>
            <div class="saveButtonDiv">
                <div>
                    <asp:Button ID="saveButton" runat="server" Text="Save" Width="86px" Height="30px" Font-Bold="True" OnClick="saveButton_Click"/>
                    <asp:Label ID="statusLabel" runat="server" Text=""></asp:Label>
                </div>
                
            </div>

        </div>

        <div class="gridViewDiv">
           
             <asp:GridView ID="cityGridView" AllowPaging="True" PageSize="4" runat="server" AutoGenerateColumns="False" CssClass="cityEntryGridView" OnRowDataBound="cityGridView_RowDataBound" OnPageIndexChanging="cityGridView_PageIndexChanging">
                <Columns>
                    <asp:BoundField HtmlEncode="False" HeaderText="Serial" DataField="Serial"/>
                    <asp:BoundField HtmlEncode="False" HeaderText="Name" DataField="Name"/>
                    <asp:BoundField HtmlEncode="False" HeaderText="Dewellers" DataField="NumberOfDwellers"/>
                    <asp:BoundField HtmlEncode="False" HeaderText="Country" DataField="Country"/>
                </Columns>
            </asp:GridView>
        </div>
    </div>  
    
    <script src="../Scripts/jquery-2.1.4.js"></script>
    <script src="../Froala/js/froala_editor.min.js"></script>
    <script src="../Froala/js/plugins/tables.min.js"></script>
    <script src="../Froala/js/plugins/lists.min.js"></script>
    <script src="../Froala/js/plugins/colors.min.js"></script>
    <script src="../Froala/js/plugins/media_manager.min.js"></script>
    <script src="../Froala/js/plugins/font_family.min.js"></script>
    <script src="../Froala/js/plugins/font_size.min.js"></script>
    <script src="../Froala/js/plugins/block_styles.min.js"></script>
    <script src="../Froala/js/plugins/video.min.js"></script>

    <script>
        $(function () {
            $('#edit1').editable({ inlineMode: false, height: 155, width: 630 })

            //$('form').submit(function () {
            //    console.log($(this).find('textarea').val());
            //    return false;
            //})
        });
  </script>


</asp:Content>
