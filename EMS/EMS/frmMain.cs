using System;
using System.Diagnostics;
using System.Windows.Forms;
using EMS.BaseInfo;
using EMS.BuyStock;
using EMS.SaleStock;
using EMS.SelectDataDialog;
using EMS.SetSystem;
using EMS.Stock;
using frmUnits = EMS.BaseInfo.frmUnits;

namespace EMS
{
    public partial class frmMain : Form
    {
        public frmMain()
        {
            InitializeComponent();
        }

        private void fileUnits_Click(object sender, EventArgs e)
        {
            frmUnits frm_units = new frmUnits();
            frm_units.Show();
        }

        private void fileStore_Click(object sender, EventArgs e)
        {
            new frmStock().Show();
        }

        private void fileEmployee_Click(object sender, EventArgs e)
        {
            new frmEmployee().Show();
        }

        private void fileBuyStock_Click(object sender, EventArgs e)
        {
            new frmBuyStock().Show();
        }

        private void fileResellStock_Click(object sender, EventArgs e)
        {
            new frmResellStock().Show();
        }

        private void fileRebuyStock_Click(object sender, EventArgs e)
        {
            new frmRebuyStock().Show();
        }

        private void fileSellStock_Click(object sender, EventArgs e)
        {
            new frmSellStock().Show();
        }

        private void fileStockStatus_Click(object sender, EventArgs e)
        {
            new frmStockStatus().Show();
        }

        private void fileCheckStock_Click(object sender, EventArgs e)
        {
            new frmCheckStock().Show();
        }

        private void 本单位ToolStripMenuItem_Click(object sender, EventArgs e)
        {
            new SetSystem.frmUnits().Show();
        }

        private void fileUnitsList_Click(object sender, EventArgs e)
        {
            new frmUnitsList().Show();
        }

        private void fileCurrentBook_Click(object sender, EventArgs e)
        {
            new frmUnitsList().Show();
        }

        private void frmSysPopedom_Click(object sender, EventArgs e)
        {
            new frmSetOP().Show();
        }

        private void fileEnd_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void frmMain_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();
        }

        private void frmMain_Load(object sender, EventArgs e)
        {

        }   
    }
}