<%@ Page Title="" Language="C#" MasterPageFile="~/UI/MasterPage.Master" AutoEventWireup="true" CodeBehind="CountryEntry.aspx.cs" Inherits="CountryCityWebAppDemo.UI.CountryEntry" ValidateRequest="false"%>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <link href="../Styles/CountryEntryStylesheet.css" rel="stylesheet" />
    <link href="../Froala/css/froala_editor.css" rel="stylesheet" />
    <link href="../Froala/css/froala_style.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
   
   

    <div class="wrapper1">
        <div class="container1">
            <div class="contentHead">
                <h1>Country Entry</h1>
            </div>
            <div class="nameAboutContent">
            <div class="nameWrapper">
                <div class="nameContent">
                    <h1>Name :</h1>
                </div>
                
                <div class="countryTextBoxContent">
                    <asp:TextBox ID="countryNameTextBox" runat="server" Height="20px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="countryNameTextBox" runat="server" ErrorMessage="Country name is required" ForeColor="red"></asp:RequiredFieldValidator>
                     </div>
            </div>
            
            <div class="aboutWrapper">
              <div class="aboutContent">
                    <h1>About :</h1>
                </div>
                
                <div class="aboutTextBoxContent">
                    <textarea id="edit" name="edit" cols="20" rows="2"></textarea>
                    
                </div>  
            </div>
         </div>
            <div class="buttonWrapper">
                <div>
                    <asp:Button ID="saveButton" runat="server" Text="Save" Width="86px" Height="30px" Font-Bold="True" OnClick="saveButton_Click"/>
                </div>
                <div class="labelStatus"> <asp:Label ID="statusLabel" runat="server" Text=""></asp:Label></div>
            </div>

        </div>

        <div class="gridViewWrapper">
            <asp:GridView Width="100%" CssClass="countryGridView" AllowPaging="True" ID="countryEntryGridView" runat="server" OnRowDataBound="countryEntryGridView_RowDataBound" AutoGenerateColumns="False" OnPageIndexChanging="countryEntryGridView_PageIndexChanging">
                <Columns>
                    
                    <asp:BoundField HeaderText="Serial" DataField="ID" HtmlEncode="false" />
                    <asp:BoundField HeaderText="Country Name" DataField="Name" HtmlEncode="false" />
                    <asp:BoundField HeaderText="About" DataField="About" HtmlEncode="false" />
                </Columns>
                <EmptyDataTemplate>
                   
                    <br />
                 
                </EmptyDataTemplate>
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
            $('#edit').editable({ inlineMode: false, height: 180, width: 730 })

            //$('form').submit(function () {
            //    console.log($(this).find('textarea').val());
            //    return false;
            //})
        });
  </script>
</asp:Content>
