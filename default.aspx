<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Assignment1._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1>Student Profile Page</h1>
    <!-- Form Container Starts -->
    <div class="form-horizontal">
      <div class="form-group">
        <label for="txtName" class="col-sm-2 control-label">Name:</label>
        <div class="col-sm-4">
            <asp:textbox class="form-control" id="txtName" placeholder="Name" runat="server"></asp:textbox>
        </div>
      </div>

      <div class="form-group">
        <label for="txtPassword" class="col-sm-2 control-label">Password:</label>
        <div class="col-sm-4">
           <asp:textbox class="form-control" id="txtPassword" type="password" placeholder="Password" runat="server"></asp:textbox>
        </div>
      </div>

       <div class="form-group">
        <label for="txtAddress" class="col-sm-2 control-label">Address:</label>
         <asp:TextBox class="form-control" TextMode="multiline" id="txtAddress" Columns="6" Rows="4" runat="server" />
       </div>
          
        <div class="form-group">
			<label for="RadioButtonList1" class="col-sm-4 control-label">Education:</label>
			<asp:RadioButtonList id="RadioButtonList1" runat="server">
				<asp:ListItem>High School </asp:ListItem>
				<asp:ListItem>College</asp:ListItem>
				<asp:ListItem>Graduate</asp:ListItem>
				<asp:ListItem>Other</asp:ListItem>
			 </asp:RadioButtonList>
        </div>

        <!-- Single Check Box -->
        <div class="checkbox">
             <label for="chkLaptop" class="control-label col-sm-4">Do you have a laptop? (check if yes):</label> 
                <asp:CheckBox ID="chkLaptop" runat="server" />                        
        </div>

        <!-- Check Box List -->
        <div class="checkbox">
            <label for="CheckBoxListSkills" class="control-label col-sm-4">Skills List - Select all that apply:</label>
            <asp:CheckBoxList ID="CheckBoxListSkills" runat="server">
                <asp:ListItem Text="HTML" Value="HTML"></asp:ListItem>
                <asp:ListItem Text="PHP" Value="PHP"></asp:ListItem>
                <asp:ListItem Text="CSS" Value="CSS"></asp:ListItem>
                <asp:ListItem Text="c#" Value="C#"></asp:ListItem>
                <asp:ListItem Text="Java" Value="Java"></asp:ListItem>
            </asp:CheckBoxList>   
        </div>

        <!-- DropDown List -->
         <div class="form-group">
            <label for="ddlProvince" class="control-label col-sm-4">Province:</label>
            <asp:DropDownList ID="ddlProvince" runat="server">
                <asp:ListItem Text="AB" Value="AB"></asp:ListItem>
                <asp:ListItem Text="BC" Value="BC"></asp:ListItem>
                <asp:ListItem Text="ON" Value="ON"></asp:ListItem>
                <asp:ListItem Text="QC" Value="QC"></asp:ListItem>
            </asp:DropDownList>
          </div>
     
        <!-- Submit Button -->
        <asp:button ID="btnSubmit" runat="server" Text="Submit"
              CssClass="btn btn-success col-sm-offset-2" OnClick="btnSubmit_Click" />

    <!-- ************************** 
        Display the form values 
        ************************** -->
    <div class="jumbotron">
        <div>
            <asp:Label ID="lblName" runat="server" />
        </div>
        <div>
            <asp:Label ID="lblPassword" runat="server" />
        </div>
        <div>
            <asp:Label ID="lblAddress" runat="server" />
        </div>
        <div>
            <asp:Label ID="lblEducation" runat="server" />
        </div>
        <div>
            <asp:Label ID="lblchkLaptop" runat="server" />
        </div>
        <div>
            <asp:Label ID="lblSkills" runat="server" />
        </div>
        <div>
            <asp:Label ID="lblProvince" runat="server" />
        </div>

    </div> <!-- Display the form values ENDS -->    

 </div> <!-- Form Container Ends -->    

</asp:Content>
