#tag Window
Begin ContainerControl UnitTestPanel
   AcceptFocus     =   ""
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   550
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   ""
   LockBottom      =   ""
   LockLeft        =   False
   LockRight       =   ""
   LockTop         =   ""
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   ""
   UseFocusRing    =   ""
   Visible         =   True
   Width           =   770
   Begin ProgressWheel ProgressWheel1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   285
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   511
      Visible         =   False
      Width           =   16
   End
   Begin PushButton RunButton
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   1
      Cancel          =   ""
      Caption         =   "Run"
      Default         =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   670
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   504
      Underline       =   ""
      Visible         =   True
      Width           =   100
   End
   Begin PushButton RunUntilFailButton
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   1
      Cancel          =   ""
      Caption         =   "Run'til fail"
      Default         =   ""
      Enabled         =   True
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   566
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   504
      Underline       =   ""
      Visible         =   True
      Width           =   100
   End
   Begin PushButton StopButton
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   1
      Cancel          =   ""
      Caption         =   "Stop"
      Default         =   ""
      Enabled         =   False
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   462
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   504
      Underline       =   ""
      Visible         =   True
      Width           =   100
   End
   Begin PushButton ExportButton
      AutoDeactivate  =   True
      Bold            =   ""
      ButtonStyle     =   1
      Cancel          =   ""
      Caption         =   "Export..."
      Default         =   ""
      Enabled         =   False
      Height          =   30
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   358
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   504
      Underline       =   ""
      Visible         =   True
      Width           =   100
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Selected Test Results"
      Enabled         =   True
      Height          =   288
      HelpTag         =   ""
      Index           =   1
      InitialParent   =   ""
      Italic          =   False
      Left            =   285
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   200
      Underline       =   False
      Visible         =   True
      Width           =   485
      Begin Label TestNameLabel
         AutoDeactivate  =   True
         Bold            =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1$1"
         Italic          =   False
         Left            =   303
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         Text            =   "Test Name"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   231
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   227
      End
      Begin Label Label1
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   0
         InitialParent   =   "GroupBox1$1"
         Italic          =   False
         Left            =   303
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         Text            =   "Duration:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   263
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label TestDurationLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1$1"
         Italic          =   False
         Left            =   419
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         Text            =   "0s"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   263
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin TextArea TestResultsArea
         AcceptTabs      =   False
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   True
         BackColor       =   "&cFFFFFF00"
         Bold            =   False
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   136
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "GroupBox1$1"
         Italic          =   False
         Left            =   305
         LimitText       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   True
         Scope           =   0
         ScrollbarHorizontal=   False
         ScrollbarVertical=   True
         Styled          =   True
         TabIndex        =   3
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   ""
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   16
         TextUnit        =   0
         Top             =   332
         Underline       =   False
         UseFocusRing    =   True
         Visible         =   True
         Width           =   448
      End
      Begin Label Label2
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   7
         InitialParent   =   "GroupBox1$1"
         Italic          =   False
         Left            =   303
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         Text            =   "Messages:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   303
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label TestResultLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1$1"
         Italic          =   False
         Left            =   651
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         Text            =   "Passed"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   231
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
   End
   Begin GroupBox GroupBox2
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   "Overview"
      Enabled         =   True
      Height          =   188
      HelpTag         =   ""
      Index           =   0
      InitialParent   =   ""
      Italic          =   False
      Left            =   285
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      Visible         =   True
      Width           =   485
      Begin Label Label3
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   1
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   294
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   0
         TabPanelIndex   =   0
         Text            =   "Start:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   30
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   68
      End
      Begin Label Label4
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   2
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   539
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   0
         Text            =   "Duration:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   30
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   68
      End
      Begin Label Label5
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   3
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   294
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   2
         TabPanelIndex   =   0
         Text            =   "Total:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   62
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   68
      End
      Begin Label Label6
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   4
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   294
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   3
         TabPanelIndex   =   0
         Text            =   "Passed:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   94
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   68
      End
      Begin Label Label7
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   5
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   294
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   0
         Text            =   "Failed:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   126
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   68
      End
      Begin Label Label8
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   6
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   294
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         Text            =   "Skipped:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   158
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   68
      End
      Begin Label StartLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   374
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   6
         TabPanelIndex   =   0
         Text            =   "1/1/2012 12:00PM"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   30
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   145
      End
      Begin Label DurationLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   619
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         Text            =   "0s"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   30
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   137
      End
      Begin Label TestCountLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   374
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   8
         TabPanelIndex   =   0
         Text            =   "(run tests first)"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   62
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   382
      End
      Begin Label PassedCountLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   374
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   9
         TabPanelIndex   =   0
         Text            =   "0 (0%)"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   94
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label FailedCountLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   374
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   10
         TabPanelIndex   =   0
         Text            =   "0 (0%)"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   126
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label SkippedCountLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   374
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   0
         Text            =   "0 (0%)"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   158
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Label Label9
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   8
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   527
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   12
         TabPanelIndex   =   0
         Text            =   "Not Implemented:"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   158
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   135
      End
      Begin Label NotImplementedCountLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox2$0"
         Italic          =   False
         Left            =   667
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   0
         Text            =   "0 (0%)"
         TextAlign       =   0
         TextColor       =   "&c00000000"
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   158
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   89
      End
   End
   Begin Listbox TestGroupList
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   3
      ColumnsResizable=   True
      ColumnWidths    =   "*,55,30"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   539
      HelpTag         =   ""
      Hierarchical    =   True
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   True
      SelectionType   =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   11
      Underline       =   False
      UseFocusRing    =   False
      Visible         =   True
      Width           =   274
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin DesktopTestController Controller
      AllTestCount    =   0
      Duration        =   0.0
      FailedCount     =   0
      GroupCount      =   0
      Height          =   32
      Index           =   -2147483648
      IsRunning       =   False
      Left            =   -30
      LockedInPosition=   False
      NotImplementedCount=   0
      PassedCount     =   0
      RunGroupCount   =   0
      RunTestCount    =   0
      Scope           =   2
      SkippedCount    =   0
      TabPanelIndex   =   0
      Top             =   -30
      Width           =   32
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Controller.LoadTestGroups
		  
		  PopulateTestGroups
		  
		  // Run unit tests now and exit?
		  //
		  // Note:
		  //   The '--rununittests path' argument must be last
		  
		  Dim argString As String = System.CommandLine
		  
		  Dim rx As New RegEx
		  rx.SearchPattern = "(?mi-Us)\s?--rununittests\b( (.+))?"
		  
		  Dim match As RegExMatch = rx.Search(argString)
		  
		  If match IsA Object Then
		    Try
		      #Pragma BreakOnExceptions False
		      ExportFilePath = match.SubExpressionString(2) // Let it raise an exception if needed
		      #Pragma BreakOnExceptions Default
		    Catch err As OutOfBoundsException
		      err.Message = "A valid export file path was not provided"
		      Raise err
		    End Try
		    
		    If ExportFilePath.Encoding Is Nil Then
		      ExportFilePath = ExportFilePath.DefineEncoding(Encodings.UTF8)
		    Else
		      ExportFilePath = ExportFilePath.ConvertEncoding(Encodings.UTF8)
		    End If
		    
		    RunTests
		  End
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub ExportTests(filePath As String)
		  Controller.ExportTestResults filePath
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PopulateTestGroups()
		  // Add the test groups into the listbox
		  TestGroupList.DeleteAllRows
		  
		  For Each g As TestGroup In Controller.TestGroups
		    TestGroupList.AddFolder(g.Name)
		    TestGroupList.CellType(TestGroupList.LastIndex, ColInclude) = Listbox.TypeCheckbox
		    TestGroupList.CellCheck(TestGroupList.LastIndex, ColInclude) = g.IncludeGroup
		    TestGroupList.RowTag(TestGroupList.LastIndex) = g
		  Next
		  
		  Dim testCount As Integer
		  testCount = Controller.AllTestCount
		  TestCountLabel.Text = Str(testCount) + " tests in " + Str(Controller.GroupCount) + " groups"
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ResetTestGroupList()
		  Dim lastRow As Integer
		  
		  Dim selectedRow As Integer = TestGroupList.ListIndex
		  Dim scroll As Integer = TestGroupList.ScrollPosition
		  
		  lastRow = TestGroupList.ListCount - 1
		  
		  For row As Integer = lastRow DownTo 0
		    'If TestGroupList.RowIsFolder(row) Then
		    'TestGroupList.Expanded(row) = False
		    'End If
		    If TestGroupList.Expanded(row) Then TestGroupList.Expanded(row) = False
		  Next
		  
		  lastRow = TestGroupList.ListCount - 1
		  For row As Integer = lastRow DownTo 0
		    Dim g As TestGroup = TestGroup(TestGroupList.RowTag(row))
		    If g.IncludeGroup Then
		      TestGroupList.Expanded(row) = True
		    End If
		  Next
		  
		  TestGroupList.ListIndex = selectedRow
		  TestGroupList.ScrollPosition = scroll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowOfTestGroup(tg As TestGroup) As Integer
		  For row As Integer = 0 To TestGroupList.ListCount - 1
		    If TestGroupList.RowTag(row) Is tg Then
		      Return row
		    End If
		  Next
		  
		  Return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowOfTestResult(tr As TestResult) As Integer
		  For row As Integer = TestGroupList.ListCount - 1 DownTo 0
		    If TestGroupList.RowTag(row) Is tr Then
		      Return row
		    End If
		  Next
		  
		  Return -1
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunTests()
		  Dim now As New Date
		  
		  StartLabel.Text = now.ShortDate + " " + now.ShortTime
		  
		  ProgressWheel1.Visible = True
		  RunButton.Enabled = False
		  RunUntilFailButton.Enabled = False
		  StopButton.Enabled = True
		  ExportButton.Enabled = False
		  
		  Controller.Start
		  ResetTestGroupList
		  UpdateSummary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectAllGroups(value As Boolean, andTests As Boolean)
		  For i As Integer = 0 To TestGroupList.ListCount - 1
		    If TestGroupList.RowTag(i) IsA TestGroup Then
		      Dim tg As TestGroup
		      tg = TestGroupList.RowTag(i)
		      tg.IncludeGroup = value
		      
		      TestGroupList.CellCheck(i, ColInclude) = value
		      
		      If andTests Then
		        SelectAllTests(tg, value)
		      End If
		    End If
		  Next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectAllTests(tg As TestGroup, value As Boolean)
		  For Each tr As TestResult In tg.Results
		    tr.IncludeMethod = value
		  Next
		  
		  Dim tgRow As Integer = RowOfTestGroup(tg)
		  
		  If tgRow <> -1 Then
		    If TestGroupList.Expanded(tgRow) Then
		      
		      For row As Integer = tgRow + 1 To TestGroupList.ListCount - 1
		        If Not (TestGroupList.RowTag(row) IsA TestResult) Then
		          Exit For
		        End If
		        TestGroupList.CellCheck(row, ColInclude) = value
		      Next
		      
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectInverseGroups(andTests As Boolean)
		  For i As Integer = 0 To TestGroupList.ListCount - 1
		    If TestGroupList.RowTag(i) IsA TestGroup Then
		      Dim tg As TestGroup = TestGroupList.RowTag(i)
		      tg.IncludeGroup = Not tg.IncludeGroup
		      
		      TestGroupList.CellCheck(i, ColInclude) = tg.IncludeGroup
		      
		      If andTests Then
		        SelectInverseTests(tg)
		      End If
		    End If
		  Next
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectInverseTests(tg As TestGroup)
		  For Each tr As TestResult In tg.Results
		    tr.IncludeMethod = Not tr.IncludeMethod
		  Next
		  
		  Dim tgRow As Integer = RowOfTestGroup(tg)
		  
		  If tgRow <> -1 And TestGroupList.Expanded(tgRow) Then
		    
		    For row As Integer = tgRow + 1 To TestGroupList.ListCount - 1
		      Dim tag As Variant = TestGroupList.RowTag(row)
		      If Not (tag IsA TestResult) Then
		        Exit For
		      End If
		      Dim tr As TestResult = tag
		      TestGroupList.CellCheck(row, ColInclude) = tr.IncludeMethod
		    Next
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectOneGroup(tg As TestGroup, value As Boolean)
		  tg.IncludeGroup = value
		  TestGroupList.CellCheck(RowOfTestGroup(tg), ColInclude) = tg.IncludeGroup
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SelectOneTest(tg As TestGroup, tr As TestResult)
		  SelectOneGroup(tg, True)
		  
		  tr.IncludeMethod = True
		  Dim row As Integer = RowOfTestResult(tr)
		  If row <> -1 Then
		    TestGroupList.CellCheck(row, ColInclude) = True
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub StopTests()
		  If RunUntilFail Then
		    RunUntilFail = False
		  Else
		    Controller.Stop
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TestsFinished()
		  UpdateSummary
		  
		  // We were launched from the command-line, write out the results and quit
		  If ExportFilePath <> "" Then
		    ExportTests(ExportFilePath)
		    Quit
		  End If
		  
		  If RunUntilFail And Controller.FailedCount = 0 Then
		    RunTests
		  Else
		    ProgressWheel1.Visible = False
		    RunButton.Enabled = True
		    RunUntilFailButton.Enabled = True
		    StopButton.Enabled = False
		    ExportButton.Enabled = True
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateSummary()
		  DurationLabel.Text = Format(Controller.Duration, "#,###.0000000") + "s"
		  
		  Dim allTestCount As Integer = Controller.AllTestCount
		  Dim runTestCount As Integer = Controller.RunTestCount
		  
		  Dim groupsMessage As String = Str(Controller.RunGroupCount) + TestGroup.IIf(Controller.RunGroupCount = 1, " group was run", " groups were run")
		  Dim testsMessage As String = TestGroup.IIf(allTestCount = 1, " test", " tests")
		  
		  If runTestCount = allTestCount Then
		    TestCountLabel.Text = Str(runTestCount) + testsMessage + " in " + groupsMessage
		  Else
		    TestCountLabel.Text = Str(runTestCount) + " of " + Str(allTestCount) + testsMessage + " in " + groupsMessage
		  End If
		  
		  Dim passedCount As Integer = Controller.PassedCount
		  Dim passedPercent As Double = passedCount / runTestCount
		  Dim passedPercentMessage As String = TestGroup.IIf(runTestCount = 0, "", " (" + Format(passedPercent, "#.00%") + ")")
		  
		  Dim failedCount As Integer = Controller.FailedCount
		  Dim failedPercent As Double = failedCount / runTestCount
		  Dim failedPercentMessage As String = TestGroup.IIf(runTestCount = 0, "", " (" + Format(failedPercent, "#.00%") + ")")
		  
		  PassedCountLabel.Text = Str(passedCount) + passedPercentMessage
		  FailedCountLabel.Text = Str(Controller.FailedCount) + failedPercentMessage
		  SkippedCountLabel.Text = Str(Controller.SkippedCount)
		  NotImplementedCountLabel.Text = Str(Controller.NotImplementedCount)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateTestResult(tr As TestResult, row As Integer = - 1)
		  If row < 0 Then
		    row = RowOfTestResult(tr)
		  End If
		  
		  If row <> -1 Then
		    TestGroupList.Cell(row, ColTestName) = tr.TestName
		    TestGroupList.Cell(row, ColResult) = tr.Result
		    TestGroupList.CellCheck(row, ColInclude) = tr.IncludeMethod
		    
		    If TestGroupList.ListIndex = row Then
		      UpdateTestSummary
		    End If
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateTestResults(tg As TestGroup)
		  TestGroupList.Invalidate
		  
		  Dim tgRow As Integer = RowOfTestGroup(tg)
		  If tgRow = -1 Then
		    Return
		  End If
		  
		  If TestGroupList.ListIndex = tgRow Then
		    UpdateTestSummary
		  End If
		  
		  If TestGroupList.Expanded(tgRow) Then
		    For row As Integer = tgRow + 1 To TestGroupList.ListCount - 1
		      Dim tag As Variant = TestGroupList.RowTag(row)
		      If Not (tag IsA TestResult) Then
		        //
		        // We have exhausted the group
		        //
		        Return
		      End If
		      
		      UpdateTestResult(TestResult(tag), row)
		    Next
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateTestSummary()
		  Dim name As String
		  Dim result As String
		  Dim message As String
		  Dim duration As String
		  
		  Dim item As Variant
		  If TestGroupList.ListIndex <> -1 Then
		    item = TestGroupList.RowTag(TestGroupList.ListIndex)
		  End If
		  
		  If item IsA TestResult Then
		    Dim tr As TestResult = item
		    name = tr.TestName
		    result = tr.Result
		    message = tr.Message
		    duration = Format(tr.Duration, "#,0.0000000") + "s"
		  ElseIf item IsA TestGroup Then
		    Dim tg As TestGroup = item
		    name = tg.Name + " Group"
		    duration = Format(tg.Duration, "#,0.0000000") + "s"
		  End If
		  
		  TestNameLabel.Text = name
		  TestResultLabel.Text = result
		  TestResultsArea.Text = message
		  TestDurationLabel.Text = duration
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return Integer(Columns.Include)
			End Get
		#tag EndGetter
		Private ColInclude As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return Integer(Columns.Result)
			End Get
		#tag EndGetter
		Private ColResult As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return Integer(Columns.TestName)
			End Get
		#tag EndGetter
		Private ColTestName As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private ExportFilePath As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mController As TestController
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RunUntilFail As Boolean
	#tag EndProperty


	#tag Constant, Name = kCMSelectAllGroups, Type = String, Dynamic = False, Default = \"Select All Groups", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMSelectAllGroupsAndTests, Type = String, Dynamic = False, Default = \"Select All Groups && Tests", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMSelectAllTests, Type = String, Dynamic = False, Default = \"Select All Tests In This Group", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMSelectFailedTests, Type = String, Dynamic = False, Default = \"Select Failed Test(s)", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMSelectInverseGroups, Type = String, Dynamic = False, Default = \"Select Inverse Goups", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMSelectInverseGroupsAndTests, Type = String, Dynamic = False, Default = \"Select Inverse Groups && Tests", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMSelectInverseTests, Type = String, Dynamic = False, Default = \"Select Inverse Tests In This Group", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMSelectOneTest, Type = String, Dynamic = False, Default = \"Select This Test Only", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMSelectThisGroup, Type = String, Dynamic = False, Default = \"Select This Group", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMUnselectAllGroups, Type = String, Dynamic = False, Default = \"Unselect All Groups", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMUnselectAllGroupsAndTests, Type = String, Dynamic = False, Default = \"Unselect All Groups && Tests", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMUnselectAllTests, Type = String, Dynamic = False, Default = \"Unselect All Tests In This Group", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kCMUnselectThisGroup, Type = String, Dynamic = False, Default = \"Unselect This Group", Scope = Private
	#tag EndConstant


	#tag Enum, Name = Columns, Type = Integer, Flags = &h21
		TestName
		  Result
		Include
	#tag EndEnum


#tag EndWindowCode

#tag Events RunButton
	#tag Event
		Sub Action()
		  RunUntilFail = False
		  RunTests
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events RunUntilFailButton
	#tag Event
		Sub Action()
		  RunUntilFail = True
		  RunTests
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events StopButton
	#tag Event
		Sub Action()
		  StopTests
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExportButton
	#tag Event
		Sub Action()
		  Dim dlg As New SaveAsDialog
		  Dim f As FolderItem
		  dlg.InitialDirectory = SpecialFolder.Documents
		  dlg.promptText = "Save results as"
		  dlg.SuggestedFileName = "results.xml"
		  dlg.Title = "Save Results"
		  dlg.Filter = "xml"
		  f = dlg.ShowModal()
		  If f <> Nil Then
		    #If RBVersion< 2013
		      ExportTests f.AbsolutePath
		    #else
		      ExportTests f.NativePath
		    #endif
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TestGroupList
	#tag Event
		Sub ExpandRow(row As Integer)
		  Dim g As TestGroup
		  g = Me.RowTag(row)
		  
		  If g <> Nil Then
		    For Each result As TestResult In g.Results
		      Me.AddRow("")
		      Me.ColumnType(ColInclude) = ListBox.TypeCheckbox
		      Me.RowTag(Me.LastIndex) = result
		      
		      UpdateTestResult(result, Me.LastIndex)
		    Next
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  UpdateTestSummary
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  Me.Expanded(Me.ListIndex) = Not Me.Expanded(Me.ListIndex)
		End Sub
	#tag EndEvent
	#tag Event
		Sub CellAction(row As Integer, column As Integer)
		  If column = ColInclude Then
		    
		    Select Case Me.RowTag(row)
		    Case IsA TestGroup
		      Dim tg As TestGroup = Me.RowTag(row)
		      tg.IncludeGroup = Me.CellCheck(row, column)
		      
		    Case IsA TestResult
		      Dim tr As TestResult = Me.RowTag(row)
		      tr.IncludeMethod = Me.CellCheck(row, column)
		      
		    End Select
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  #Pragma Unused column
		  
		  If row Mod 2 = 0 And Not Me.Selected(row) Then
		    g.ForeColor = &cF9FFFB00 //RGB(237, 243, 254) '&cD0D4FF
		    g.FillRect(0, 0, g.Width, g.Height)
		  End If
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Select Case hitItem.Text
		  Case kCMSelectAllGroups
		    SelectAllGroups(True, False)
		    
		  Case kCMUnselectAllGroups
		    SelectAllGroups(False, False)
		    
		  Case kCMSelectInverseGroups
		    SelectInverseGroups(False)
		    
		  Case kCMSelectFailedTests
		    SelectAllGroups(False, True)
		    
		    For Each tg As TestGroup In Controller.TestGroups
		      For Each tr As TestResult In tg.Results
		        If tr.Result = TestResult.Failed Then
		          SelectOneTest(tg, tr)
		        End If
		      Next
		    Next
		    
		  Case kCMSelectAllTests
		    SelectAllTests(hitItem.Tag, True)
		    
		  Case kCMSelectInverseTests
		    SelectInverseTests(hitItem.Tag)
		    
		  Case kCMUnselectAllTests
		    SelectAllTests(hitItem.Tag, False)
		    
		  Case kCMSelectOneTest
		    Dim tag As Pair = hitItem.Tag
		    Dim tg As TestGroup = tag.Left
		    Dim tr As TestResult = tag.Right
		    SelectAllGroups(False, True)
		    SelectOneTest(tg, tr)
		    
		  Case kCMSelectThisGroup
		    Dim tg As TestGroup = hitItem.Tag
		    SelectOneGroup(tg, True)
		    
		  Case kCMUnselectThisGroup
		    Dim tg As TestGroup = hitItem.Tag
		    SelectOneGroup(tg, False)
		    
		  Case kCMSelectAllGroupsAndTests
		    SelectAllGroups(True, True)
		    
		  Case kCMUnselectAllGroupsAndTests
		    SelectAllGroups(False, True)
		    
		  Case kCMSelectInverseGroupsAndTests
		    SelectInverseGroups(True)
		    
		  Case "Select Errors"
		    
		    
		  End Select
		End Function
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  base.Append(New MenuItem(kCMSelectAllGroups))
		  base.Append(New MenuItem(kCMSelectInverseGroups))
		  base.Append(New MenuItem(kCMUnselectAllGroups))
		  
		  If Controller.FailedCount <> 0 Then
		    base.Append(New MenuItem(MenuItem.TextSeparator))
		    
		    base.Append(New MenuItem(kCMSelectFailedTests))
		  End If
		  
		  If Me.ListIndex <> -1 Then
		    Dim tg As TestGroup
		    For row As Integer = Me.ListIndex DownTo 0
		      If Me.RowTag(row) IsA TestGroup Then
		        tg = Me.RowTag(row)
		        Exit For row
		      End If
		    Next
		    
		    Dim tr As TestResult // = If(Me.RowTag(Me.ListIndex) IsA TestResult, TestResult(Me.RowTag(Me.ListIndex)), Nil)
		    If Me.RowTag(Me.ListIndex) IsA TestResult Then
		      tr= TestResult(Me.RowTag(Me.ListIndex))
		    End If
		    
		    base.Append(New MenuItem(MenuItem.TextSeparator))
		    
		    base.Append(New MenuItem(kCMSelectAllTests, tg))
		    base.Append(New MenuItem(kCMSelectInverseTests, tg))
		    base.Append(New MenuItem(kCMUnselectAllTests, tg))
		    
		    base.Append(New MenuItem(MenuItem.TextSeparator))
		    
		    If tr IsA TestResult Then
		      base.Append(New MenuItem(kCMSelectOneTest, tg : tr))
		      
		      base.Append(New MenuItem(MenuItem.TextSeparator))
		    End If
		    
		    base.Append(New MenuItem(kCMSelectThisGroup, tg))
		    base.Append(New MenuItem(kCMUnselectThisGroup, tg))
		  End If
		  
		  base.Append(New MenuItem(MenuItem.TextSeparator))
		  
		  base.Append(New MenuItem(kCMSelectAllGroupsAndTests))
		  base.Append(New MenuItem(kCMSelectInverseGroupsAndTests))
		  base.Append(New MenuItem(kCMUnselectAllGroupsAndTests))
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  #Pragma Unused column
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  #if TargetMacOS
		    If Me.Selected(row) Then Return False
		  #endif
		  
		  If Me.Cell(row, ColResult) = TestResult.Failed Then
		    g.ForeColor = &cFF151500
		    'g.Bold = True
		  Else
		    g.ForeColor = &c4F4F4F00
		    'g.Bold = False
		  End If
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events Controller
	#tag Event
		Sub AllTestsFinished()
		  TestsFinished()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub TestFinished(result As TestResult, group As TestGroup)
		  #Pragma Unused group
		  
		  UpdateTestResult(result)
		End Sub
	#tag EndEvent
	#tag Event
		Sub GroupFinished(group As TestGroup)
		  //
		  // A final update in case something changed after the test ran
		  //
		  
		  UpdateTestResults(group)
		  UpdateSummary
		End Sub
	#tag EndEvent
#tag EndEvents
