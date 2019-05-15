using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevComponents.DotNetBar;
using DevComponents;
using System.Diagnostics;
using System.IO;


namespace copias_segurity_msql
{
    public partial class Form1 : DevComponents.DotNetBar.RibbonForm
    {

        public Form1()
        {

            InitializeComponent();

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void sideNavItem3_Click(object sender, EventArgs e)
        {

        }

        private void sideNav1_Click(object sender, EventArgs e)
        {
            
        }

        private void buttonX1_Click(object sender, EventArgs e)
        {
            Process p = new Process();
            p.StartInfo.FileName = "C:\\Users\\kirito\\Desktop\\bakupsmysql\\xammp_bakup";
            p.Start();
        }

        private void buttonX2_Click(object sender, EventArgs e)
        {
            Process p = new Process();
            p.StartInfo.FileName = "C:\\Users\\kirito\\Desktop\\bakupsmysql\\restaurar";
            p.Start();
        }

        private void buttonX3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void sideNavItem2_Click(object sender, EventArgs e)
        {

        }
    }
}
