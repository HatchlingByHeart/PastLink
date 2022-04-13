
namespace PastLink
{
    partial class frmServerConfigGen
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lblDatabaseUsername = new System.Windows.Forms.Label();
            this.txtDatabaseUsername = new System.Windows.Forms.TextBox();
            this.txtDatabasePassword = new System.Windows.Forms.TextBox();
            this.lblDatabasePassword = new System.Windows.Forms.Label();
            this.txtDatabaseName = new System.Windows.Forms.TextBox();
            this.lblDatabaseName = new System.Windows.Forms.Label();
            this.txtDatabasePrefix = new System.Windows.Forms.TextBox();
            this.lblDatabasePrefix = new System.Windows.Forms.Label();
            this.grpDatabaseConfig = new System.Windows.Forms.GroupBox();
            this.lnkServerGenInfo = new System.Windows.Forms.LinkLabel();
            this.lblServerGenInfo = new System.Windows.Forms.Label();
            this.grpServerConfig = new System.Windows.Forms.GroupBox();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lblServerKey = new System.Windows.Forms.Label();
            this.txtServerKey = new System.Windows.Forms.TextBox();
            this.numericUpDown1 = new System.Windows.Forms.NumericUpDown();
            this.label1 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.grpDatabaseConfig.SuspendLayout();
            this.grpServerConfig.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).BeginInit();
            this.SuspendLayout();
            // 
            // lblDatabaseUsername
            // 
            this.lblDatabaseUsername.AutoSize = true;
            this.lblDatabaseUsername.Location = new System.Drawing.Point(9, 23);
            this.lblDatabaseUsername.Name = "lblDatabaseUsername";
            this.lblDatabaseUsername.Size = new System.Drawing.Size(73, 17);
            this.lblDatabaseUsername.TabIndex = 0;
            this.lblDatabaseUsername.Text = "Username";
            // 
            // txtDatabaseUsername
            // 
            this.txtDatabaseUsername.Location = new System.Drawing.Point(88, 21);
            this.txtDatabaseUsername.Name = "txtDatabaseUsername";
            this.txtDatabaseUsername.Size = new System.Drawing.Size(263, 22);
            this.txtDatabaseUsername.TabIndex = 1;
            this.txtDatabaseUsername.Text = "pastlink";
            // 
            // txtDatabasePassword
            // 
            this.txtDatabasePassword.Location = new System.Drawing.Point(88, 49);
            this.txtDatabasePassword.Name = "txtDatabasePassword";
            this.txtDatabasePassword.Size = new System.Drawing.Size(263, 22);
            this.txtDatabasePassword.TabIndex = 3;
            // 
            // lblDatabasePassword
            // 
            this.lblDatabasePassword.AutoSize = true;
            this.lblDatabasePassword.Location = new System.Drawing.Point(9, 51);
            this.lblDatabasePassword.Name = "lblDatabasePassword";
            this.lblDatabasePassword.Size = new System.Drawing.Size(69, 17);
            this.lblDatabasePassword.TabIndex = 2;
            this.lblDatabasePassword.Text = "Password";
            // 
            // txtDatabaseName
            // 
            this.txtDatabaseName.Location = new System.Drawing.Point(88, 77);
            this.txtDatabaseName.Name = "txtDatabaseName";
            this.txtDatabaseName.Size = new System.Drawing.Size(263, 22);
            this.txtDatabaseName.TabIndex = 5;
            this.txtDatabaseName.Text = "pastlink";
            // 
            // lblDatabaseName
            // 
            this.lblDatabaseName.AutoSize = true;
            this.lblDatabaseName.Location = new System.Drawing.Point(9, 79);
            this.lblDatabaseName.Name = "lblDatabaseName";
            this.lblDatabaseName.Size = new System.Drawing.Size(68, 17);
            this.lblDatabaseName.TabIndex = 4;
            this.lblDatabaseName.Text = "DB Name";
            // 
            // txtDatabasePrefix
            // 
            this.txtDatabasePrefix.Location = new System.Drawing.Point(88, 105);
            this.txtDatabasePrefix.Name = "txtDatabasePrefix";
            this.txtDatabasePrefix.Size = new System.Drawing.Size(263, 22);
            this.txtDatabasePrefix.TabIndex = 7;
            this.txtDatabasePrefix.Text = "pastlink_";
            // 
            // lblDatabasePrefix
            // 
            this.lblDatabasePrefix.AutoSize = true;
            this.lblDatabasePrefix.Location = new System.Drawing.Point(9, 107);
            this.lblDatabasePrefix.Name = "lblDatabasePrefix";
            this.lblDatabasePrefix.Size = new System.Drawing.Size(43, 17);
            this.lblDatabasePrefix.TabIndex = 6;
            this.lblDatabasePrefix.Text = "Prefix";
            // 
            // grpDatabaseConfig
            // 
            this.grpDatabaseConfig.Controls.Add(this.lnkServerGenInfo);
            this.grpDatabaseConfig.Controls.Add(this.lblServerGenInfo);
            this.grpDatabaseConfig.Controls.Add(this.txtDatabaseUsername);
            this.grpDatabaseConfig.Controls.Add(this.txtDatabasePrefix);
            this.grpDatabaseConfig.Controls.Add(this.lblDatabaseUsername);
            this.grpDatabaseConfig.Controls.Add(this.lblDatabasePrefix);
            this.grpDatabaseConfig.Controls.Add(this.lblDatabasePassword);
            this.grpDatabaseConfig.Controls.Add(this.txtDatabaseName);
            this.grpDatabaseConfig.Controls.Add(this.txtDatabasePassword);
            this.grpDatabaseConfig.Controls.Add(this.lblDatabaseName);
            this.grpDatabaseConfig.Location = new System.Drawing.Point(13, 13);
            this.grpDatabaseConfig.Name = "grpDatabaseConfig";
            this.grpDatabaseConfig.Size = new System.Drawing.Size(363, 241);
            this.grpDatabaseConfig.TabIndex = 8;
            this.grpDatabaseConfig.TabStop = false;
            this.grpDatabaseConfig.Text = "Database Settings";
            // 
            // lnkServerGenInfo
            // 
            this.lnkServerGenInfo.AutoSize = true;
            this.lnkServerGenInfo.Location = new System.Drawing.Point(9, 210);
            this.lnkServerGenInfo.Name = "lnkServerGenInfo";
            this.lnkServerGenInfo.Size = new System.Drawing.Size(292, 17);
            this.lnkServerGenInfo.TabIndex = 9;
            this.lnkServerGenInfo.TabStop = true;
            this.lnkServerGenInfo.Text = "https://github.com/HatchlingByHeart/PastLink";
            // 
            // lblServerGenInfo
            // 
            this.lblServerGenInfo.AutoSize = true;
            this.lblServerGenInfo.Location = new System.Drawing.Point(9, 140);
            this.lblServerGenInfo.Name = "lblServerGenInfo";
            this.lblServerGenInfo.Size = new System.Drawing.Size(348, 68);
            this.lblServerGenInfo.TabIndex = 8;
            this.lblServerGenInfo.Text = "Only MySQL/MariaDB databases are supported at the\r\nmoment. If you are interested " +
    "in adding support for\r\nmore database types, please check out the GitHub\r\npage at" +
    " the following link:";
            // 
            // grpServerConfig
            // 
            this.grpServerConfig.Controls.Add(this.checkBox1);
            this.grpServerConfig.Controls.Add(this.label2);
            this.grpServerConfig.Controls.Add(this.lblServerKey);
            this.grpServerConfig.Controls.Add(this.txtServerKey);
            this.grpServerConfig.Controls.Add(this.numericUpDown1);
            this.grpServerConfig.Controls.Add(this.label1);
            this.grpServerConfig.Location = new System.Drawing.Point(13, 260);
            this.grpServerConfig.Name = "grpServerConfig";
            this.grpServerConfig.Size = new System.Drawing.Size(363, 113);
            this.grpServerConfig.TabIndex = 9;
            this.grpServerConfig.TabStop = false;
            this.grpServerConfig.Text = "Server && Connection Settings";
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.checkBox1.Location = new System.Drawing.Point(10, 78);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(148, 21);
            this.checkBox1.TabIndex = 5;
            this.checkBox1.Text = "Use Points System";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(278, 51);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(73, 17);
            this.label2.TabIndex = 4;
            this.label2.Text = "Second(s)";
            // 
            // lblServerKey
            // 
            this.lblServerKey.AutoSize = true;
            this.lblServerKey.Location = new System.Drawing.Point(9, 24);
            this.lblServerKey.Name = "lblServerKey";
            this.lblServerKey.Size = new System.Drawing.Size(78, 17);
            this.lblServerKey.TabIndex = 3;
            this.lblServerKey.Text = "Server Key";
            // 
            // txtServerKey
            // 
            this.txtServerKey.Location = new System.Drawing.Point(143, 21);
            this.txtServerKey.Name = "txtServerKey";
            this.txtServerKey.Size = new System.Drawing.Size(208, 22);
            this.txtServerKey.TabIndex = 2;
            // 
            // numericUpDown1
            // 
            this.numericUpDown1.Location = new System.Drawing.Point(143, 49);
            this.numericUpDown1.Name = "numericUpDown1";
            this.numericUpDown1.Size = new System.Drawing.Size(129, 22);
            this.numericUpDown1.TabIndex = 1;
            this.numericUpDown1.Value = new decimal(new int[] {
            10,
            0,
            0,
            0});
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(9, 51);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(115, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "Viewer Cooldown";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(12, 380);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(176, 29);
            this.button1.TabIndex = 10;
            this.button1.Text = "Generate";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(201, 380);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(175, 29);
            this.button2.TabIndex = 11;
            this.button2.Text = "Close";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // frmServerConfigGen
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(388, 421);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.grpServerConfig);
            this.Controls.Add(this.grpDatabaseConfig);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmServerConfigGen";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Generate Server Configuration";
            this.grpDatabaseConfig.ResumeLayout(false);
            this.grpDatabaseConfig.PerformLayout();
            this.grpServerConfig.ResumeLayout(false);
            this.grpServerConfig.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numericUpDown1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label lblDatabaseUsername;
        private System.Windows.Forms.TextBox txtDatabaseUsername;
        private System.Windows.Forms.TextBox txtDatabasePassword;
        private System.Windows.Forms.Label lblDatabasePassword;
        private System.Windows.Forms.TextBox txtDatabaseName;
        private System.Windows.Forms.Label lblDatabaseName;
        private System.Windows.Forms.TextBox txtDatabasePrefix;
        private System.Windows.Forms.Label lblDatabasePrefix;
        private System.Windows.Forms.GroupBox grpDatabaseConfig;
        private System.Windows.Forms.LinkLabel lnkServerGenInfo;
        private System.Windows.Forms.Label lblServerGenInfo;
        private System.Windows.Forms.GroupBox grpServerConfig;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblServerKey;
        private System.Windows.Forms.TextBox txtServerKey;
        private System.Windows.Forms.NumericUpDown numericUpDown1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button2;
    }
}