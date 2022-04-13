
namespace PastLink
{
    partial class frmMain
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
            this.components = new System.ComponentModel.Container();
            this.wchCommandFile = new System.IO.FileSystemWatcher();
            this.lstLog = new System.Windows.Forms.ListBox();
            this.cmenuUndoCommand = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.undoCommandToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.grpServerSettings = new System.Windows.Forms.GroupBox();
            this.txtAddress = new System.Windows.Forms.TextBox();
            this.lblAddress = new System.Windows.Forms.Label();
            this.lblKey = new System.Windows.Forms.Label();
            this.txtKey = new System.Windows.Forms.TextBox();
            this.chkConnect = new System.Windows.Forms.CheckBox();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.wchCommandFile)).BeginInit();
            this.cmenuUndoCommand.SuspendLayout();
            this.grpServerSettings.SuspendLayout();
            this.SuspendLayout();
            // 
            // wchCommandFile
            // 
            this.wchCommandFile.EnableRaisingEvents = true;
            this.wchCommandFile.Filter = "command";
            this.wchCommandFile.NotifyFilter = System.IO.NotifyFilters.Size;
            this.wchCommandFile.SynchronizingObject = this;
            this.wchCommandFile.Changed += new System.IO.FileSystemEventHandler(this.wchCommandFile_Changed);
            // 
            // lstLog
            // 
            this.lstLog.ContextMenuStrip = this.cmenuUndoCommand;
            this.lstLog.FormattingEnabled = true;
            this.lstLog.ItemHeight = 16;
            this.lstLog.Items.AddRange(new object[] {
            "HATCHLING summoned the bees!",
            "HATCHLING has angered the Chicken Gods!"});
            this.lstLog.Location = new System.Drawing.Point(12, 180);
            this.lstLog.Name = "lstLog";
            this.lstLog.Size = new System.Drawing.Size(302, 356);
            this.lstLog.TabIndex = 0;
            // 
            // cmenuUndoCommand
            // 
            this.cmenuUndoCommand.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.cmenuUndoCommand.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.undoCommandToolStripMenuItem});
            this.cmenuUndoCommand.Name = "cmenuUndoCommand";
            this.cmenuUndoCommand.Size = new System.Drawing.Size(188, 28);
            // 
            // undoCommandToolStripMenuItem
            // 
            this.undoCommandToolStripMenuItem.Name = "undoCommandToolStripMenuItem";
            this.undoCommandToolStripMenuItem.Size = new System.Drawing.Size(187, 24);
            this.undoCommandToolStripMenuItem.Text = "Undo Command";
            // 
            // grpServerSettings
            // 
            this.grpServerSettings.Controls.Add(this.button1);
            this.grpServerSettings.Controls.Add(this.chkConnect);
            this.grpServerSettings.Controls.Add(this.lblKey);
            this.grpServerSettings.Controls.Add(this.txtKey);
            this.grpServerSettings.Controls.Add(this.lblAddress);
            this.grpServerSettings.Controls.Add(this.txtAddress);
            this.grpServerSettings.Location = new System.Drawing.Point(12, 12);
            this.grpServerSettings.Name = "grpServerSettings";
            this.grpServerSettings.Size = new System.Drawing.Size(302, 162);
            this.grpServerSettings.TabIndex = 2;
            this.grpServerSettings.TabStop = false;
            this.grpServerSettings.Text = "Server Settings";
            // 
            // txtAddress
            // 
            this.txtAddress.Location = new System.Drawing.Point(73, 21);
            this.txtAddress.Name = "txtAddress";
            this.txtAddress.Size = new System.Drawing.Size(223, 22);
            this.txtAddress.TabIndex = 0;
            // 
            // lblAddress
            // 
            this.lblAddress.AutoSize = true;
            this.lblAddress.Location = new System.Drawing.Point(7, 23);
            this.lblAddress.Name = "lblAddress";
            this.lblAddress.Size = new System.Drawing.Size(60, 17);
            this.lblAddress.TabIndex = 1;
            this.lblAddress.Text = "Address";
            // 
            // lblKey
            // 
            this.lblKey.AutoSize = true;
            this.lblKey.Location = new System.Drawing.Point(7, 51);
            this.lblKey.Name = "lblKey";
            this.lblKey.Size = new System.Drawing.Size(32, 17);
            this.lblKey.TabIndex = 3;
            this.lblKey.Text = "Key";
            // 
            // txtKey
            // 
            this.txtKey.Location = new System.Drawing.Point(73, 49);
            this.txtKey.Name = "txtKey";
            this.txtKey.Size = new System.Drawing.Size(223, 22);
            this.txtKey.TabIndex = 2;
            // 
            // chkConnect
            // 
            this.chkConnect.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkConnect.Location = new System.Drawing.Point(10, 77);
            this.chkConnect.Name = "chkConnect";
            this.chkConnect.Size = new System.Drawing.Size(286, 35);
            this.chkConnect.TabIndex = 4;
            this.chkConnect.Text = "Connect";
            this.chkConnect.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.chkConnect.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(10, 118);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(286, 35);
            this.button1.TabIndex = 5;
            this.button1.Text = "Generate Server Config";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(904, 544);
            this.Controls.Add(this.grpServerSettings);
            this.Controls.Add(this.lstLog);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "frmMain";
            this.Text = "PastLink";
            ((System.ComponentModel.ISupportInitialize)(this.wchCommandFile)).EndInit();
            this.cmenuUndoCommand.ResumeLayout(false);
            this.grpServerSettings.ResumeLayout(false);
            this.grpServerSettings.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.IO.FileSystemWatcher wchCommandFile;
        private System.Windows.Forms.ListBox lstLog;
        private System.Windows.Forms.ContextMenuStrip cmenuUndoCommand;
        private System.Windows.Forms.ToolStripMenuItem undoCommandToolStripMenuItem;
        private System.Windows.Forms.GroupBox grpServerSettings;
        private System.Windows.Forms.Label lblKey;
        private System.Windows.Forms.TextBox txtKey;
        private System.Windows.Forms.Label lblAddress;
        private System.Windows.Forms.TextBox txtAddress;
        private System.Windows.Forms.CheckBox chkConnect;
        private System.Windows.Forms.Button button1;
    }
}

