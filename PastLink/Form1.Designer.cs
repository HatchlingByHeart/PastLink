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
            this.cmenuQueue = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.itmVetoCommand = new System.Windows.Forms.ToolStripMenuItem();
            this.grpServerSettings = new System.Windows.Forms.GroupBox();
            this.lblKey = new System.Windows.Forms.Label();
            this.txtKey = new System.Windows.Forms.TextBox();
            this.btnGenServerConfig = new System.Windows.Forms.Button();
            this.lblAddress = new System.Windows.Forms.Label();
            this.txtAddress = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.chkProcessQueue = new System.Windows.Forms.CheckBox();
            this.lstLog = new System.Windows.Forms.ListBox();
            this.grpManual = new System.Windows.Forms.GroupBox();
            this.button33 = new System.Windows.Forms.Button();
            this.button34 = new System.Windows.Forms.Button();
            this.button35 = new System.Windows.Forms.Button();
            this.button36 = new System.Windows.Forms.Button();
            this.button37 = new System.Windows.Forms.Button();
            this.button38 = new System.Windows.Forms.Button();
            this.button27 = new System.Windows.Forms.Button();
            this.button28 = new System.Windows.Forms.Button();
            this.button29 = new System.Windows.Forms.Button();
            this.button30 = new System.Windows.Forms.Button();
            this.button31 = new System.Windows.Forms.Button();
            this.button32 = new System.Windows.Forms.Button();
            this.button21 = new System.Windows.Forms.Button();
            this.button22 = new System.Windows.Forms.Button();
            this.button23 = new System.Windows.Forms.Button();
            this.button24 = new System.Windows.Forms.Button();
            this.button25 = new System.Windows.Forms.Button();
            this.button26 = new System.Windows.Forms.Button();
            this.button15 = new System.Windows.Forms.Button();
            this.button16 = new System.Windows.Forms.Button();
            this.button17 = new System.Windows.Forms.Button();
            this.button18 = new System.Windows.Forms.Button();
            this.button19 = new System.Windows.Forms.Button();
            this.button20 = new System.Windows.Forms.Button();
            this.button9 = new System.Windows.Forms.Button();
            this.button10 = new System.Windows.Forms.Button();
            this.button11 = new System.Windows.Forms.Button();
            this.button12 = new System.Windows.Forms.Button();
            this.button13 = new System.Windows.Forms.Button();
            this.button14 = new System.Windows.Forms.Button();
            this.button8 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.button6 = new System.Windows.Forms.Button();
            this.button7 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.btnEditRupees = new System.Windows.Forms.Button();
            this.btnEditItems = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.wchCommandFile)).BeginInit();
            this.cmenuQueue.SuspendLayout();
            this.grpServerSettings.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.grpManual.SuspendLayout();
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
            // cmenuQueue
            // 
            this.cmenuQueue.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.cmenuQueue.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.itmVetoCommand});
            this.cmenuQueue.Name = "cmenuUndoCommand";
            this.cmenuQueue.Size = new System.Drawing.Size(182, 28);
            // 
            // itmVetoCommand
            // 
            this.itmVetoCommand.Name = "itmVetoCommand";
            this.itmVetoCommand.Size = new System.Drawing.Size(181, 24);
            this.itmVetoCommand.Text = "Veto Command";
            // 
            // grpServerSettings
            // 
            this.grpServerSettings.Controls.Add(this.lblKey);
            this.grpServerSettings.Controls.Add(this.txtKey);
            this.grpServerSettings.Controls.Add(this.btnGenServerConfig);
            this.grpServerSettings.Controls.Add(this.lblAddress);
            this.grpServerSettings.Controls.Add(this.txtAddress);
            this.grpServerSettings.Location = new System.Drawing.Point(12, 12);
            this.grpServerSettings.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.grpServerSettings.Name = "grpServerSettings";
            this.grpServerSettings.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.grpServerSettings.Size = new System.Drawing.Size(381, 113);
            this.grpServerSettings.TabIndex = 2;
            this.grpServerSettings.TabStop = false;
            this.grpServerSettings.Text = "Server Settings";
            // 
            // lblKey
            // 
            this.lblKey.AutoSize = true;
            this.lblKey.Location = new System.Drawing.Point(7, 50);
            this.lblKey.Name = "lblKey";
            this.lblKey.Size = new System.Drawing.Size(32, 17);
            this.lblKey.TabIndex = 3;
            this.lblKey.Text = "Key";
            // 
            // txtKey
            // 
            this.txtKey.Location = new System.Drawing.Point(73, 49);
            this.txtKey.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtKey.Name = "txtKey";
            this.txtKey.Size = new System.Drawing.Size(301, 22);
            this.txtKey.TabIndex = 2;
            // 
            // btnGenServerConfig
            // 
            this.btnGenServerConfig.Location = new System.Drawing.Point(11, 78);
            this.btnGenServerConfig.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnGenServerConfig.Name = "btnGenServerConfig";
            this.btnGenServerConfig.Size = new System.Drawing.Size(364, 27);
            this.btnGenServerConfig.TabIndex = 7;
            this.btnGenServerConfig.Text = "Generate Server Config";
            this.btnGenServerConfig.UseVisualStyleBackColor = true;
            this.btnGenServerConfig.Click += new System.EventHandler(this.btnGenServerConfig_Click);
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
            // txtAddress
            // 
            this.txtAddress.Location = new System.Drawing.Point(73, 21);
            this.txtAddress.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.txtAddress.Name = "txtAddress";
            this.txtAddress.Size = new System.Drawing.Size(301, 22);
            this.txtAddress.TabIndex = 0;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.chkProcessQueue);
            this.groupBox1.Controls.Add(this.lstLog);
            this.groupBox1.Location = new System.Drawing.Point(12, 130);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.groupBox1.Size = new System.Drawing.Size(381, 443);
            this.groupBox1.TabIndex = 8;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Command Queue";
            // 
            // chkProcessQueue
            // 
            this.chkProcessQueue.Appearance = System.Windows.Forms.Appearance.Button;
            this.chkProcessQueue.Location = new System.Drawing.Point(8, 21);
            this.chkProcessQueue.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.chkProcessQueue.Name = "chkProcessQueue";
            this.chkProcessQueue.Size = new System.Drawing.Size(365, 34);
            this.chkProcessQueue.TabIndex = 7;
            this.chkProcessQueue.Text = "Process Queue";
            this.chkProcessQueue.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.chkProcessQueue.UseVisualStyleBackColor = true;
            // 
            // lstLog
            // 
            this.lstLog.ContextMenuStrip = this.cmenuQueue;
            this.lstLog.FormattingEnabled = true;
            this.lstLog.ItemHeight = 16;
            this.lstLog.Items.AddRange(new object[] {
            "HatchlingByHeart -> Give Boomerang",
            "HatchlingByHeart -> Activate Cucco Storm",
            "HatchlingByHeart -> Sword Downgrade"});
            this.lstLog.Location = new System.Drawing.Point(8, 62);
            this.lstLog.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.lstLog.Name = "lstLog";
            this.lstLog.Size = new System.Drawing.Size(367, 372);
            this.lstLog.TabIndex = 1;
            // 
            // grpManual
            // 
            this.grpManual.Controls.Add(this.button33);
            this.grpManual.Controls.Add(this.button34);
            this.grpManual.Controls.Add(this.button35);
            this.grpManual.Controls.Add(this.button36);
            this.grpManual.Controls.Add(this.button37);
            this.grpManual.Controls.Add(this.button38);
            this.grpManual.Controls.Add(this.button27);
            this.grpManual.Controls.Add(this.button28);
            this.grpManual.Controls.Add(this.button29);
            this.grpManual.Controls.Add(this.button30);
            this.grpManual.Controls.Add(this.button31);
            this.grpManual.Controls.Add(this.button32);
            this.grpManual.Controls.Add(this.button21);
            this.grpManual.Controls.Add(this.button22);
            this.grpManual.Controls.Add(this.button23);
            this.grpManual.Controls.Add(this.button24);
            this.grpManual.Controls.Add(this.button25);
            this.grpManual.Controls.Add(this.button26);
            this.grpManual.Controls.Add(this.button15);
            this.grpManual.Controls.Add(this.button16);
            this.grpManual.Controls.Add(this.button17);
            this.grpManual.Controls.Add(this.button18);
            this.grpManual.Controls.Add(this.button19);
            this.grpManual.Controls.Add(this.button20);
            this.grpManual.Controls.Add(this.button9);
            this.grpManual.Controls.Add(this.button10);
            this.grpManual.Controls.Add(this.button11);
            this.grpManual.Controls.Add(this.button12);
            this.grpManual.Controls.Add(this.button13);
            this.grpManual.Controls.Add(this.button14);
            this.grpManual.Controls.Add(this.button8);
            this.grpManual.Controls.Add(this.button4);
            this.grpManual.Controls.Add(this.button5);
            this.grpManual.Controls.Add(this.button6);
            this.grpManual.Controls.Add(this.button7);
            this.grpManual.Controls.Add(this.button3);
            this.grpManual.Controls.Add(this.button2);
            this.grpManual.Controls.Add(this.btnEditRupees);
            this.grpManual.Controls.Add(this.btnEditItems);
            this.grpManual.Location = new System.Drawing.Point(400, 12);
            this.grpManual.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.grpManual.Name = "grpManual";
            this.grpManual.Padding = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.grpManual.Size = new System.Drawing.Size(445, 562);
            this.grpManual.TabIndex = 9;
            this.grpManual.TabStop = false;
            this.grpManual.Text = "Manual Command Input";
            // 
            // button33
            // 
            this.button33.Location = new System.Drawing.Point(299, 514);
            this.button33.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button33.Name = "button33";
            this.button33.Size = new System.Drawing.Size(137, 34);
            this.button33.TabIndex = 38;
            this.button33.UseVisualStyleBackColor = true;
            // 
            // button34
            // 
            this.button34.Location = new System.Drawing.Point(155, 474);
            this.button34.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button34.Name = "button34";
            this.button34.Size = new System.Drawing.Size(137, 34);
            this.button34.TabIndex = 37;
            this.button34.UseVisualStyleBackColor = true;
            // 
            // button35
            // 
            this.button35.Location = new System.Drawing.Point(299, 474);
            this.button35.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button35.Name = "button35";
            this.button35.Size = new System.Drawing.Size(137, 34);
            this.button35.TabIndex = 36;
            this.button35.UseVisualStyleBackColor = true;
            // 
            // button36
            // 
            this.button36.Location = new System.Drawing.Point(12, 514);
            this.button36.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button36.Name = "button36";
            this.button36.Size = new System.Drawing.Size(137, 34);
            this.button36.TabIndex = 35;
            this.button36.UseVisualStyleBackColor = true;
            // 
            // button37
            // 
            this.button37.Location = new System.Drawing.Point(155, 514);
            this.button37.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button37.Name = "button37";
            this.button37.Size = new System.Drawing.Size(137, 34);
            this.button37.TabIndex = 34;
            this.button37.UseVisualStyleBackColor = true;
            // 
            // button38
            // 
            this.button38.Location = new System.Drawing.Point(12, 474);
            this.button38.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button38.Name = "button38";
            this.button38.Size = new System.Drawing.Size(137, 34);
            this.button38.TabIndex = 33;
            this.button38.UseVisualStyleBackColor = true;
            // 
            // button27
            // 
            this.button27.Location = new System.Drawing.Point(299, 433);
            this.button27.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button27.Name = "button27";
            this.button27.Size = new System.Drawing.Size(137, 34);
            this.button27.TabIndex = 32;
            this.button27.UseVisualStyleBackColor = true;
            // 
            // button28
            // 
            this.button28.Location = new System.Drawing.Point(155, 391);
            this.button28.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button28.Name = "button28";
            this.button28.Size = new System.Drawing.Size(137, 34);
            this.button28.TabIndex = 31;
            this.button28.UseVisualStyleBackColor = true;
            // 
            // button29
            // 
            this.button29.Location = new System.Drawing.Point(299, 391);
            this.button29.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button29.Name = "button29";
            this.button29.Size = new System.Drawing.Size(137, 34);
            this.button29.TabIndex = 30;
            this.button29.UseVisualStyleBackColor = true;
            // 
            // button30
            // 
            this.button30.Location = new System.Drawing.Point(12, 433);
            this.button30.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button30.Name = "button30";
            this.button30.Size = new System.Drawing.Size(137, 34);
            this.button30.TabIndex = 29;
            this.button30.UseVisualStyleBackColor = true;
            // 
            // button31
            // 
            this.button31.Location = new System.Drawing.Point(155, 433);
            this.button31.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button31.Name = "button31";
            this.button31.Size = new System.Drawing.Size(137, 34);
            this.button31.TabIndex = 28;
            this.button31.UseVisualStyleBackColor = true;
            // 
            // button32
            // 
            this.button32.Location = new System.Drawing.Point(12, 391);
            this.button32.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button32.Name = "button32";
            this.button32.Size = new System.Drawing.Size(137, 34);
            this.button32.TabIndex = 27;
            this.button32.UseVisualStyleBackColor = true;
            // 
            // button21
            // 
            this.button21.Location = new System.Drawing.Point(299, 351);
            this.button21.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button21.Name = "button21";
            this.button21.Size = new System.Drawing.Size(137, 34);
            this.button21.TabIndex = 26;
            this.button21.UseVisualStyleBackColor = true;
            // 
            // button22
            // 
            this.button22.Location = new System.Drawing.Point(155, 310);
            this.button22.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button22.Name = "button22";
            this.button22.Size = new System.Drawing.Size(137, 34);
            this.button22.TabIndex = 25;
            this.button22.UseVisualStyleBackColor = true;
            // 
            // button23
            // 
            this.button23.Location = new System.Drawing.Point(299, 310);
            this.button23.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button23.Name = "button23";
            this.button23.Size = new System.Drawing.Size(137, 34);
            this.button23.TabIndex = 24;
            this.button23.UseVisualStyleBackColor = true;
            // 
            // button24
            // 
            this.button24.Location = new System.Drawing.Point(12, 351);
            this.button24.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button24.Name = "button24";
            this.button24.Size = new System.Drawing.Size(137, 34);
            this.button24.TabIndex = 23;
            this.button24.UseVisualStyleBackColor = true;
            // 
            // button25
            // 
            this.button25.Location = new System.Drawing.Point(155, 351);
            this.button25.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button25.Name = "button25";
            this.button25.Size = new System.Drawing.Size(137, 34);
            this.button25.TabIndex = 22;
            this.button25.UseVisualStyleBackColor = true;
            // 
            // button26
            // 
            this.button26.Location = new System.Drawing.Point(12, 310);
            this.button26.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button26.Name = "button26";
            this.button26.Size = new System.Drawing.Size(137, 34);
            this.button26.TabIndex = 21;
            this.button26.UseVisualStyleBackColor = true;
            // 
            // button15
            // 
            this.button15.Location = new System.Drawing.Point(299, 270);
            this.button15.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button15.Name = "button15";
            this.button15.Size = new System.Drawing.Size(137, 34);
            this.button15.TabIndex = 20;
            this.button15.UseVisualStyleBackColor = true;
            // 
            // button16
            // 
            this.button16.Location = new System.Drawing.Point(155, 228);
            this.button16.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button16.Name = "button16";
            this.button16.Size = new System.Drawing.Size(137, 34);
            this.button16.TabIndex = 19;
            this.button16.UseVisualStyleBackColor = true;
            // 
            // button17
            // 
            this.button17.Location = new System.Drawing.Point(299, 228);
            this.button17.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button17.Name = "button17";
            this.button17.Size = new System.Drawing.Size(137, 34);
            this.button17.TabIndex = 18;
            this.button17.UseVisualStyleBackColor = true;
            // 
            // button18
            // 
            this.button18.Location = new System.Drawing.Point(12, 270);
            this.button18.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button18.Name = "button18";
            this.button18.Size = new System.Drawing.Size(137, 34);
            this.button18.TabIndex = 17;
            this.button18.UseVisualStyleBackColor = true;
            // 
            // button19
            // 
            this.button19.Location = new System.Drawing.Point(155, 270);
            this.button19.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button19.Name = "button19";
            this.button19.Size = new System.Drawing.Size(137, 34);
            this.button19.TabIndex = 16;
            this.button19.UseVisualStyleBackColor = true;
            // 
            // button20
            // 
            this.button20.Location = new System.Drawing.Point(12, 228);
            this.button20.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button20.Name = "button20";
            this.button20.Size = new System.Drawing.Size(137, 34);
            this.button20.TabIndex = 15;
            this.button20.UseVisualStyleBackColor = true;
            // 
            // button9
            // 
            this.button9.Location = new System.Drawing.Point(299, 187);
            this.button9.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button9.Name = "button9";
            this.button9.Size = new System.Drawing.Size(137, 34);
            this.button9.TabIndex = 14;
            this.button9.UseVisualStyleBackColor = true;
            // 
            // button10
            // 
            this.button10.Location = new System.Drawing.Point(155, 146);
            this.button10.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button10.Name = "button10";
            this.button10.Size = new System.Drawing.Size(137, 34);
            this.button10.TabIndex = 13;
            this.button10.UseVisualStyleBackColor = true;
            // 
            // button11
            // 
            this.button11.Location = new System.Drawing.Point(299, 146);
            this.button11.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button11.Name = "button11";
            this.button11.Size = new System.Drawing.Size(137, 34);
            this.button11.TabIndex = 12;
            this.button11.UseVisualStyleBackColor = true;
            // 
            // button12
            // 
            this.button12.Location = new System.Drawing.Point(12, 187);
            this.button12.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button12.Name = "button12";
            this.button12.Size = new System.Drawing.Size(137, 34);
            this.button12.TabIndex = 11;
            this.button12.UseVisualStyleBackColor = true;
            // 
            // button13
            // 
            this.button13.Location = new System.Drawing.Point(155, 187);
            this.button13.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button13.Name = "button13";
            this.button13.Size = new System.Drawing.Size(137, 34);
            this.button13.TabIndex = 10;
            this.button13.UseVisualStyleBackColor = true;
            // 
            // button14
            // 
            this.button14.Location = new System.Drawing.Point(12, 146);
            this.button14.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button14.Name = "button14";
            this.button14.Size = new System.Drawing.Size(137, 34);
            this.button14.TabIndex = 9;
            this.button14.UseVisualStyleBackColor = true;
            // 
            // button8
            // 
            this.button8.Location = new System.Drawing.Point(299, 105);
            this.button8.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button8.Name = "button8";
            this.button8.Size = new System.Drawing.Size(137, 34);
            this.button8.TabIndex = 8;
            this.button8.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(155, 64);
            this.button4.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(137, 34);
            this.button4.TabIndex = 7;
            this.button4.UseVisualStyleBackColor = true;
            // 
            // button5
            // 
            this.button5.Location = new System.Drawing.Point(299, 64);
            this.button5.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(137, 34);
            this.button5.TabIndex = 6;
            this.button5.UseVisualStyleBackColor = true;
            // 
            // button6
            // 
            this.button6.Location = new System.Drawing.Point(12, 105);
            this.button6.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button6.Name = "button6";
            this.button6.Size = new System.Drawing.Size(137, 34);
            this.button6.TabIndex = 5;
            this.button6.UseVisualStyleBackColor = true;
            // 
            // button7
            // 
            this.button7.Location = new System.Drawing.Point(155, 105);
            this.button7.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button7.Name = "button7";
            this.button7.Size = new System.Drawing.Size(137, 34);
            this.button7.TabIndex = 4;
            this.button7.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(12, 64);
            this.button3.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(137, 34);
            this.button3.TabIndex = 3;
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(299, 23);
            this.button2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(137, 34);
            this.button2.TabIndex = 2;
            this.button2.Text = "Edit Equipment";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // btnEditRupees
            // 
            this.btnEditRupees.Location = new System.Drawing.Point(155, 23);
            this.btnEditRupees.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnEditRupees.Name = "btnEditRupees";
            this.btnEditRupees.Size = new System.Drawing.Size(137, 34);
            this.btnEditRupees.TabIndex = 1;
            this.btnEditRupees.Text = "Edit Consumables";
            this.btnEditRupees.UseVisualStyleBackColor = true;
            // 
            // btnEditItems
            // 
            this.btnEditItems.Location = new System.Drawing.Point(12, 23);
            this.btnEditItems.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.btnEditItems.Name = "btnEditItems";
            this.btnEditItems.Size = new System.Drawing.Size(137, 34);
            this.btnEditItems.TabIndex = 0;
            this.btnEditItems.Text = "Edit Items";
            this.btnEditItems.UseVisualStyleBackColor = true;
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(856, 582);
            this.Controls.Add(this.grpManual);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.grpServerSettings);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.MaximizeBox = false;
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "PastLink";
            ((System.ComponentModel.ISupportInitialize)(this.wchCommandFile)).EndInit();
            this.cmenuQueue.ResumeLayout(false);
            this.grpServerSettings.ResumeLayout(false);
            this.grpServerSettings.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.grpManual.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.IO.FileSystemWatcher wchCommandFile;
        private System.Windows.Forms.ContextMenuStrip cmenuQueue;
        private System.Windows.Forms.ToolStripMenuItem itmVetoCommand;
        private System.Windows.Forms.GroupBox grpServerSettings;
        private System.Windows.Forms.Label lblKey;
        private System.Windows.Forms.TextBox txtKey;
        private System.Windows.Forms.Label lblAddress;
        private System.Windows.Forms.TextBox txtAddress;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnGenServerConfig;
        private System.Windows.Forms.CheckBox chkProcessQueue;
        private System.Windows.Forms.ListBox lstLog;
        private System.Windows.Forms.GroupBox grpManual;
        private System.Windows.Forms.Button button33;
        private System.Windows.Forms.Button button34;
        private System.Windows.Forms.Button button35;
        private System.Windows.Forms.Button button36;
        private System.Windows.Forms.Button button37;
        private System.Windows.Forms.Button button38;
        private System.Windows.Forms.Button button27;
        private System.Windows.Forms.Button button28;
        private System.Windows.Forms.Button button29;
        private System.Windows.Forms.Button button30;
        private System.Windows.Forms.Button button31;
        private System.Windows.Forms.Button button32;
        private System.Windows.Forms.Button button21;
        private System.Windows.Forms.Button button22;
        private System.Windows.Forms.Button button23;
        private System.Windows.Forms.Button button24;
        private System.Windows.Forms.Button button25;
        private System.Windows.Forms.Button button26;
        private System.Windows.Forms.Button button15;
        private System.Windows.Forms.Button button16;
        private System.Windows.Forms.Button button17;
        private System.Windows.Forms.Button button18;
        private System.Windows.Forms.Button button19;
        private System.Windows.Forms.Button button20;
        private System.Windows.Forms.Button button9;
        private System.Windows.Forms.Button button10;
        private System.Windows.Forms.Button button11;
        private System.Windows.Forms.Button button12;
        private System.Windows.Forms.Button button13;
        private System.Windows.Forms.Button button14;
        private System.Windows.Forms.Button button8;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Button button6;
        private System.Windows.Forms.Button button7;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button btnEditRupees;
        private System.Windows.Forms.Button btnEditItems;
    }
}

