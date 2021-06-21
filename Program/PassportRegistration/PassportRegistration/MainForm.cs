using System;
using System.Collections.Generic;
using System.Data;
using System.Windows.Forms;

namespace PassportRegistration
{
    public partial class MainForm : Form
    {
        Database db;

        public MainForm()
        {
            InitializeComponent();

            try
            {
                db = new Database("localhost", "postgres", "sudoer", "PassportOffice");
            }
            catch (Exception)
            {
                MessageBox.Show("Не удалось подключиться к базе данных", "Ошибка", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }

            dgvPersons.DataSource = null;
            dgvPersons.DataSource = db.SelectTable("select * from \"Persons\"");
            dgvPassports.DataSource = null;
            dgvPassports.DataSource = db.SelectTable("select * from \"Passports\"");
            dgvTaxNumbers.DataSource = null;
            dgvTaxNumbers.DataSource = db.SelectTable("select * from \"TaxNumbers\"");
            dgvTaxOffices.DataSource = null;
            dgvTaxOffices.DataSource = db.SelectTable("select * from \"TaxOffices\"");
            dgvMarital.DataSource = null;
            dgvMarital.DataSource = db.SelectTable("select * from \"Marital\"");
            dgvMilitaryDuty.DataSource = null;
            dgvMilitaryDuty.DataSource = db.SelectTable("select * from \"MilitaryDuty\"");
            dgvDepartments.DataSource = null;
            dgvDepartments.DataSource = db.SelectTable("select * from \"Departments\"");
            dgvCommisariats.DataSource = null;
            dgvCommisariats.DataSource = db.SelectTable("select * from \"Commisariats\"");
            dgvMaritalOffices.DataSource = null;
            dgvMaritalOffices.DataSource = db.SelectTable("select * from \"MaritalOffices\"");
            dgvMaritalTypes.DataSource = null;
            dgvMaritalTypes.DataSource = db.SelectTable("select * from \"MaritalTypes\"");
            dgvMilitaryCategories.DataSource = null;
            dgvMilitaryCategories.DataSource = db.SelectTable("select * from \"MilitaryCategories\"");
            dgvSexes.DataSource = null;
            dgvSexes.DataSource = db.SelectTable("select * from \"Sexes\"");
        }

        private void MainForm_Load(object sender, EventArgs e)
        {
            Console.WriteLine("passport test");
        }

        private void MainForm_FormClosing(object sender, FormClosingEventArgs e)
        {
            Application.Exit();
        }

        private void buttonAdd_Click(object sender, EventArgs e)
        {
            var button = (Button)sender;
            string buttonName = button.Name;

            switch (buttonName)
            {
                default:
                    break;
            }
        }

        private void buttonAlter_Click(object sender, EventArgs e)
        {

        }

        private void buttonDelete_Click(object sender, EventArgs e)
        {

        }
    }
}
