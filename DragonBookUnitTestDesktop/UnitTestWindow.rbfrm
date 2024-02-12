#tag Window
Begin Window UnitTestWindow
   BackColor       =   &hFFFFFF
   Backdrop        =   ""
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   HasBackColor    =   False
   Height          =   600
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   32000
   MaximizeButton  =   True
   MaxWidth        =   32000
   MenuBar         =   97988607
   MenuBarVisible  =   True
   MinHeight       =   64
   MinimizeButton  =   True
   MinWidth        =   64
   Placement       =   0
   Resizeable      =   True
   Title           =   "DragonBook UnitTest"
   Visible         =   True
   Width           =   800
   Begin TabPanel TabPanel1
      AutoDeactivate  =   True
      Bold            =   ""
      Enabled         =   True
      Height          =   600
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   0
      SmallTabs       =   ""
      TabDefinition   =   "UnitTest\rTest"
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   16
      TextUnit        =   0
      Top             =   0
      Underline       =   ""
      Value           =   1
      Visible         =   True
      Width           =   800
      Begin UnitTestPanel UnitTestPanel1
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
         InitialParent   =   "TabPanel1"
         Left            =   15
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Top             =   38
         UseFocusRing    =   ""
         Visible         =   True
         Width           =   770
      End
      Begin PushButton PushButton1
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Load"
         Default         =   ""
         Enabled         =   True
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   20
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   ""
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16
         TextUnit        =   0
         Top             =   50
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
      Begin TextArea TextArea2
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   471
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   420
         LimitText       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   16
         TextUnit        =   0
         Top             =   109
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   360
      End
      Begin PushButton PushButton2
         AutoDeactivate  =   True
         Bold            =   ""
         ButtonStyle     =   0
         Cancel          =   ""
         Caption         =   "Generate"
         Default         =   ""
         Enabled         =   True
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   420
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Scope           =   0
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   16
         TextUnit        =   0
         Top             =   50
         Underline       =   ""
         Visible         =   True
         Width           =   80
      End
      Begin TextArea TextArea1
         AcceptTabs      =   True
         Alignment       =   0
         AutoDeactivate  =   True
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   True
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   471
         HelpTag         =   ""
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   20
         LimitText       =   0
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Multiline       =   True
         ReadOnly        =   ""
         Scope           =   0
         ScrollbarHorizontal=   ""
         ScrollbarVertical=   True
         Styled          =   False
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "{\r\n	int a; int b; int c; int d;\r\n	a = 9; b = 5; c = 2;\r\n	d = a + b * c + a * b;\r\n}"
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   16
         TextUnit        =   0
         Top             =   109
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   360
      End
      Begin TextField TextField1
         AcceptTabs      =   ""
         Alignment       =   0
         AutoDeactivate  =   False
         AutomaticallyCheckSpelling=   False
         BackColor       =   &hFFFFFF
         Bold            =   ""
         Border          =   False
         CueText         =   ""
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Format          =   ""
         Height          =   30
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "TabPanel1"
         Italic          =   ""
         Left            =   112
         LimitText       =   0
         LockBottom      =   ""
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Mask            =   ""
         Password        =   ""
         ReadOnly        =   False
         Scope           =   0
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextColor       =   &h000000
         TextFont        =   "System"
         TextSize        =   16
         TextUnit        =   0
         Top             =   51
         Underline       =   ""
         UseFocusRing    =   True
         Visible         =   True
         Width           =   268
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Resized()
		  #if RBVersion< 2014
		    UnitTestPanel1.Refresh
		  #endif
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function EditClearAll() As Boolean Handles EditClearAll.Action
			UnitTestPanel1.SelectAllGroups(False, False)
			
			Return True
			
		End Function
	#tag EndMenuHandler

	#tag MenuHandler
		Function EditSelectAll() As Boolean Handles EditSelectAll.Action
			UnitTestPanel1.SelectAllGroups(True, False)
			
			Return True
			
		End Function
	#tag EndMenuHandler


#tag EndWindowCode

#tag Events TabPanel1
	#tag Event
		Sub Open()
		  'TabPanel1.Value= 1
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton1
	#tag Event
		Sub Action()
		  Dim txtType As New FileType
		  txtType.Name = "text/plain"
		  txtType.MacType = "TXT "
		  txtType.Extensions = "txt;t"
		  
		  Dim f As FolderItem= GetOpenFolderItem(txtType)
		  If f Is Nil Then Return
		  Dim t As TextInputStream= TextInputStream.Open(f)
		  TextArea1.Text= t.ReadAll
		  TextField1.Text= f.DisplayName
		  
		  
		  'Dim line As Integer
		  '
		  'While Not bs.EOF
		  'Dim peek As String= bs.Read(1)
		  'TextArea1.AppendText peek+ "("+ Str(Asc(peek))+ ")"+ EndOfLine
		  '
		  'If peek= " " Or peek= Chr(9) Then
		  ''TextArea1.AppendText "ws: ("+ Str(Asc(peek))+ ")"+ EndOfLine
		  'ElseIf peek= Chr(13) Then
		  'line= line+ 1
		  'ElseIf peek= Chr(10) Then
		  'line= line+ 1
		  'Break
		  'Else
		  ''TextArea1.AppendText peek+ "("+ Str(Asc(peek))+ ")"+ EndOfLine
		  'End If
		  'Wend
		  '
		  'TextArea1.AppendText EndOfLine+ "lines: "+ Str(line)+ EndOfLine
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PushButton2
	#tag Event
		Sub Action()
		  Dim mb As New MemoryBlock(1)
		  Dim bsOut As New BinaryStream(mb)
		  
		  Dim parser As New DragonBook.Parser(New DragonBook.Lexer(TextArea1.Text), bsOut)
		  
		  Try
		    #pragma BreakOnExceptions Off
		    parser.Program
		    #pragma BreakOnExceptions Default
		  Catch exc As RuntimeException
		    TextArea2.AppendText "error "+ exc.Message+ EndOfLine
		    Return
		  End Try
		  
		  TextArea2.AppendText mb.StringValue(0, mb.Size)+ EndOfLine
		  TextArea2.AppendText EndOfLine+ EndOfLine
		End Sub
	#tag EndEvent
#tag EndEvents
