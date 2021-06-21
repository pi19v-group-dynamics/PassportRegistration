using System;
using System.Windows.Forms;

namespace PassportRegistration
{
    public partial class AuthorizationForm : Form
    {
        MainForm mainForm;

        public AuthorizationForm()
        {
            InitializeComponent();

            mainForm = new MainForm();
        }

        private void bLogIn_Click(object sender, EventArgs e)
        {
            if (tbUsername.Text == "admin" && tbPassword.Text == "admin")
            {
                mainForm.Show();
            }
            else if (tbUsername.Text == "root" && tbPassword.Text == "root")
            {
                mainForm.Show();
            }
        }
    }
}
