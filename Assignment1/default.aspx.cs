using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // get the value from the textBox and assign it to variable
            string sName = txtName.Text;
            string sPassword = txtPassword.Text;

            // display the values collected from the form fields
            lblName.Text = "Name: " + sName;
            lblPassword.Text = "Password: " + sPassword;
            lblAddress.Text = "Address: " + txtAddress.Text;

            //Radio Button
            if (RadioButtonList1.SelectedIndex > -1)
            {
                lblEducation.Text = "Education: " + RadioButtonList1.SelectedItem.Text;
            }

            //Check Box - single
            if (chkLaptop.Checked == true)
            {
                lblchkLaptop.Text = "Has Laptop: True";
            }
            else
            {
                lblchkLaptop.Text = "Has Laptop: False";
            }

            // Check Box List
            lblSkills.Text = "Skills: ";
            foreach (ListItem item in CheckBoxListSkills.Items)
            {
                if (item.Selected)
                    lblSkills.Text += item.Text + ", ";
            }

            // DropDown List
            lblProvince.Text = "Province: ";
            lblProvince.Text += ddlProvince.SelectedValue;

        }
    }
}