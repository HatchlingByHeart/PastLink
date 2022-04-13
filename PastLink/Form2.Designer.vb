<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form2
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.button2 = New System.Windows.Forms.Button()
        Me.button1 = New System.Windows.Forms.Button()
        Me.grpServerConfig = New System.Windows.Forms.GroupBox()
        Me.checkBox1 = New System.Windows.Forms.CheckBox()
        Me.label2 = New System.Windows.Forms.Label()
        Me.lblServerKey = New System.Windows.Forms.Label()
        Me.txtServerKey = New System.Windows.Forms.TextBox()
        Me.numericUpDown1 = New System.Windows.Forms.NumericUpDown()
        Me.label1 = New System.Windows.Forms.Label()
        Me.grpDatabaseConfig = New System.Windows.Forms.GroupBox()
        Me.lnkServerGenInfo = New System.Windows.Forms.LinkLabel()
        Me.lblServerGenInfo = New System.Windows.Forms.Label()
        Me.txtDatabaseUsername = New System.Windows.Forms.TextBox()
        Me.txtDatabasePrefix = New System.Windows.Forms.TextBox()
        Me.lblDatabaseUsername = New System.Windows.Forms.Label()
        Me.lblDatabasePrefix = New System.Windows.Forms.Label()
        Me.lblDatabasePassword = New System.Windows.Forms.Label()
        Me.txtDatabaseName = New System.Windows.Forms.TextBox()
        Me.txtDatabasePassword = New System.Windows.Forms.TextBox()
        Me.lblDatabaseName = New System.Windows.Forms.Label()
        Me.grpServerConfig.SuspendLayout()
        CType(Me.numericUpDown1, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.grpDatabaseConfig.SuspendLayout()
        Me.SuspendLayout()
        '
        'button2
        '
        Me.button2.Location = New System.Drawing.Point(152, 309)
        Me.button2.Margin = New System.Windows.Forms.Padding(2)
        Me.button2.Name = "button2"
        Me.button2.Size = New System.Drawing.Size(131, 24)
        Me.button2.TabIndex = 15
        Me.button2.Text = "Close"
        Me.button2.UseVisualStyleBackColor = True
        '
        'button1
        '
        Me.button1.Location = New System.Drawing.Point(10, 309)
        Me.button1.Margin = New System.Windows.Forms.Padding(2)
        Me.button1.Name = "button1"
        Me.button1.Size = New System.Drawing.Size(132, 24)
        Me.button1.TabIndex = 14
        Me.button1.Text = "Generate"
        Me.button1.UseVisualStyleBackColor = True
        '
        'grpServerConfig
        '
        Me.grpServerConfig.Controls.Add(Me.checkBox1)
        Me.grpServerConfig.Controls.Add(Me.label2)
        Me.grpServerConfig.Controls.Add(Me.lblServerKey)
        Me.grpServerConfig.Controls.Add(Me.txtServerKey)
        Me.grpServerConfig.Controls.Add(Me.numericUpDown1)
        Me.grpServerConfig.Controls.Add(Me.label1)
        Me.grpServerConfig.Location = New System.Drawing.Point(11, 211)
        Me.grpServerConfig.Margin = New System.Windows.Forms.Padding(2)
        Me.grpServerConfig.Name = "grpServerConfig"
        Me.grpServerConfig.Padding = New System.Windows.Forms.Padding(2)
        Me.grpServerConfig.Size = New System.Drawing.Size(272, 92)
        Me.grpServerConfig.TabIndex = 13
        Me.grpServerConfig.TabStop = False
        Me.grpServerConfig.Text = "Server && Connection Settings"
        '
        'checkBox1
        '
        Me.checkBox1.AutoSize = True
        Me.checkBox1.CheckAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.checkBox1.Location = New System.Drawing.Point(8, 63)
        Me.checkBox1.Margin = New System.Windows.Forms.Padding(2)
        Me.checkBox1.Name = "checkBox1"
        Me.checkBox1.Size = New System.Drawing.Size(114, 17)
        Me.checkBox1.TabIndex = 5
        Me.checkBox1.Text = "Use Points System"
        Me.checkBox1.UseVisualStyleBackColor = True
        '
        'label2
        '
        Me.label2.AutoSize = True
        Me.label2.Location = New System.Drawing.Point(208, 41)
        Me.label2.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.label2.Name = "label2"
        Me.label2.Size = New System.Drawing.Size(55, 13)
        Me.label2.TabIndex = 4
        Me.label2.Text = "Second(s)"
        '
        'lblServerKey
        '
        Me.lblServerKey.AutoSize = True
        Me.lblServerKey.Location = New System.Drawing.Point(7, 20)
        Me.lblServerKey.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lblServerKey.Name = "lblServerKey"
        Me.lblServerKey.Size = New System.Drawing.Size(59, 13)
        Me.lblServerKey.TabIndex = 3
        Me.lblServerKey.Text = "Server Key"
        '
        'txtServerKey
        '
        Me.txtServerKey.Location = New System.Drawing.Point(107, 17)
        Me.txtServerKey.Margin = New System.Windows.Forms.Padding(2)
        Me.txtServerKey.Name = "txtServerKey"
        Me.txtServerKey.Size = New System.Drawing.Size(157, 20)
        Me.txtServerKey.TabIndex = 2
        '
        'numericUpDown1
        '
        Me.numericUpDown1.Location = New System.Drawing.Point(150, 40)
        Me.numericUpDown1.Margin = New System.Windows.Forms.Padding(2)
        Me.numericUpDown1.Name = "numericUpDown1"
        Me.numericUpDown1.Size = New System.Drawing.Size(54, 20)
        Me.numericUpDown1.TabIndex = 1
        Me.numericUpDown1.Value = New Decimal(New Integer() {10, 0, 0, 0})
        '
        'label1
        '
        Me.label1.AutoSize = True
        Me.label1.Location = New System.Drawing.Point(7, 41)
        Me.label1.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.label1.Name = "label1"
        Me.label1.Size = New System.Drawing.Size(139, 13)
        Me.label1.TabIndex = 0
        Me.label1.Text = "Viewer Command Cooldown"
        '
        'grpDatabaseConfig
        '
        Me.grpDatabaseConfig.Controls.Add(Me.lnkServerGenInfo)
        Me.grpDatabaseConfig.Controls.Add(Me.lblServerGenInfo)
        Me.grpDatabaseConfig.Controls.Add(Me.txtDatabaseUsername)
        Me.grpDatabaseConfig.Controls.Add(Me.txtDatabasePrefix)
        Me.grpDatabaseConfig.Controls.Add(Me.lblDatabaseUsername)
        Me.grpDatabaseConfig.Controls.Add(Me.lblDatabasePrefix)
        Me.grpDatabaseConfig.Controls.Add(Me.lblDatabasePassword)
        Me.grpDatabaseConfig.Controls.Add(Me.txtDatabaseName)
        Me.grpDatabaseConfig.Controls.Add(Me.txtDatabasePassword)
        Me.grpDatabaseConfig.Controls.Add(Me.lblDatabaseName)
        Me.grpDatabaseConfig.Location = New System.Drawing.Point(11, 11)
        Me.grpDatabaseConfig.Margin = New System.Windows.Forms.Padding(2)
        Me.grpDatabaseConfig.Name = "grpDatabaseConfig"
        Me.grpDatabaseConfig.Padding = New System.Windows.Forms.Padding(2)
        Me.grpDatabaseConfig.Size = New System.Drawing.Size(272, 196)
        Me.grpDatabaseConfig.TabIndex = 12
        Me.grpDatabaseConfig.TabStop = False
        Me.grpDatabaseConfig.Text = "Database Settings"
        '
        'lnkServerGenInfo
        '
        Me.lnkServerGenInfo.AutoSize = True
        Me.lnkServerGenInfo.Location = New System.Drawing.Point(7, 171)
        Me.lnkServerGenInfo.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lnkServerGenInfo.Name = "lnkServerGenInfo"
        Me.lnkServerGenInfo.Size = New System.Drawing.Size(229, 13)
        Me.lnkServerGenInfo.TabIndex = 9
        Me.lnkServerGenInfo.TabStop = True
        Me.lnkServerGenInfo.Text = "https://github.com/HatchlingByHeart/PastLink"
        '
        'lblServerGenInfo
        '
        Me.lblServerGenInfo.AutoSize = True
        Me.lblServerGenInfo.Location = New System.Drawing.Point(7, 114)
        Me.lblServerGenInfo.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lblServerGenInfo.Name = "lblServerGenInfo"
        Me.lblServerGenInfo.Size = New System.Drawing.Size(262, 52)
        Me.lblServerGenInfo.TabIndex = 8
        Me.lblServerGenInfo.Text = "Only MySQL/MariaDB databases are supported at the" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "moment. If you are interested " &
    "in adding support for" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "more database types, please check out the GitHub" & Global.Microsoft.VisualBasic.ChrW(13) & Global.Microsoft.VisualBasic.ChrW(10) & "page at" &
    " the following link:"
        '
        'txtDatabaseUsername
        '
        Me.txtDatabaseUsername.Location = New System.Drawing.Point(66, 17)
        Me.txtDatabaseUsername.Margin = New System.Windows.Forms.Padding(2)
        Me.txtDatabaseUsername.Name = "txtDatabaseUsername"
        Me.txtDatabaseUsername.Size = New System.Drawing.Size(198, 20)
        Me.txtDatabaseUsername.TabIndex = 1
        Me.txtDatabaseUsername.Text = "pastlink"
        '
        'txtDatabasePrefix
        '
        Me.txtDatabasePrefix.Location = New System.Drawing.Point(66, 85)
        Me.txtDatabasePrefix.Margin = New System.Windows.Forms.Padding(2)
        Me.txtDatabasePrefix.Name = "txtDatabasePrefix"
        Me.txtDatabasePrefix.Size = New System.Drawing.Size(198, 20)
        Me.txtDatabasePrefix.TabIndex = 7
        Me.txtDatabasePrefix.Text = "pastlink_"
        '
        'lblDatabaseUsername
        '
        Me.lblDatabaseUsername.AutoSize = True
        Me.lblDatabaseUsername.Location = New System.Drawing.Point(7, 19)
        Me.lblDatabaseUsername.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lblDatabaseUsername.Name = "lblDatabaseUsername"
        Me.lblDatabaseUsername.Size = New System.Drawing.Size(55, 13)
        Me.lblDatabaseUsername.TabIndex = 0
        Me.lblDatabaseUsername.Text = "Username"
        '
        'lblDatabasePrefix
        '
        Me.lblDatabasePrefix.AutoSize = True
        Me.lblDatabasePrefix.Location = New System.Drawing.Point(7, 87)
        Me.lblDatabasePrefix.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lblDatabasePrefix.Name = "lblDatabasePrefix"
        Me.lblDatabasePrefix.Size = New System.Drawing.Size(33, 13)
        Me.lblDatabasePrefix.TabIndex = 6
        Me.lblDatabasePrefix.Text = "Prefix"
        '
        'lblDatabasePassword
        '
        Me.lblDatabasePassword.AutoSize = True
        Me.lblDatabasePassword.Location = New System.Drawing.Point(7, 41)
        Me.lblDatabasePassword.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lblDatabasePassword.Name = "lblDatabasePassword"
        Me.lblDatabasePassword.Size = New System.Drawing.Size(53, 13)
        Me.lblDatabasePassword.TabIndex = 2
        Me.lblDatabasePassword.Text = "Password"
        '
        'txtDatabaseName
        '
        Me.txtDatabaseName.Location = New System.Drawing.Point(66, 63)
        Me.txtDatabaseName.Margin = New System.Windows.Forms.Padding(2)
        Me.txtDatabaseName.Name = "txtDatabaseName"
        Me.txtDatabaseName.Size = New System.Drawing.Size(198, 20)
        Me.txtDatabaseName.TabIndex = 5
        Me.txtDatabaseName.Text = "pastlink"
        '
        'txtDatabasePassword
        '
        Me.txtDatabasePassword.Location = New System.Drawing.Point(66, 40)
        Me.txtDatabasePassword.Margin = New System.Windows.Forms.Padding(2)
        Me.txtDatabasePassword.Name = "txtDatabasePassword"
        Me.txtDatabasePassword.Size = New System.Drawing.Size(198, 20)
        Me.txtDatabasePassword.TabIndex = 3
        '
        'lblDatabaseName
        '
        Me.lblDatabaseName.AutoSize = True
        Me.lblDatabaseName.Location = New System.Drawing.Point(7, 64)
        Me.lblDatabaseName.Margin = New System.Windows.Forms.Padding(2, 0, 2, 0)
        Me.lblDatabaseName.Name = "lblDatabaseName"
        Me.lblDatabaseName.Size = New System.Drawing.Size(53, 13)
        Me.lblDatabaseName.TabIndex = 4
        Me.lblDatabaseName.Text = "DB Name"
        '
        'Form2
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(294, 341)
        Me.Controls.Add(Me.button2)
        Me.Controls.Add(Me.button1)
        Me.Controls.Add(Me.grpServerConfig)
        Me.Controls.Add(Me.grpDatabaseConfig)
        Me.Name = "Form2"
        Me.Text = "Generate Server Configuration"
        Me.grpServerConfig.ResumeLayout(False)
        Me.grpServerConfig.PerformLayout()
        CType(Me.numericUpDown1, System.ComponentModel.ISupportInitialize).EndInit()
        Me.grpDatabaseConfig.ResumeLayout(False)
        Me.grpDatabaseConfig.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

    Private WithEvents button2 As Button
    Private WithEvents button1 As Button
    Private WithEvents grpServerConfig As GroupBox
    Private WithEvents checkBox1 As CheckBox
    Private WithEvents label2 As Label
    Private WithEvents lblServerKey As Label
    Private WithEvents txtServerKey As TextBox
    Private WithEvents numericUpDown1 As NumericUpDown
    Private WithEvents label1 As Label
    Private WithEvents grpDatabaseConfig As GroupBox
    Private WithEvents lnkServerGenInfo As LinkLabel
    Private WithEvents lblServerGenInfo As Label
    Private WithEvents txtDatabaseUsername As TextBox
    Private WithEvents txtDatabasePrefix As TextBox
    Private WithEvents lblDatabaseUsername As Label
    Private WithEvents lblDatabasePrefix As Label
    Private WithEvents lblDatabasePassword As Label
    Private WithEvents txtDatabaseName As TextBox
    Private WithEvents txtDatabasePassword As TextBox
    Private WithEvents lblDatabaseName As Label
End Class
