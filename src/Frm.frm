VERSION 5.00
Object = "{EAB22AC0-30C1-11CF-A7EB-0000C05BAE0B}#1.1#0"; "ieframe.dll"
Begin VB.Form Frm 
   Caption         =   "Form1"
   ClientHeight    =   6150
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   12645
   LinkTopic       =   "Form1"
   ScaleHeight     =   6150
   ScaleWidth      =   12645
   StartUpPosition =   3  '´°¿ÚÈ±Ê¡
   Begin VB.Timer Timer 
      Interval        =   1
      Left            =   12120
      Top             =   5640
   End
   Begin SHDocVwCtl.WebBrowser WebBrowser 
      Height          =   6015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   12495
      ExtentX         =   22040
      ExtentY         =   10610
      ViewMode        =   0
      Offline         =   0
      Silent          =   0
      RegisterAsBrowser=   0
      RegisterAsDropTarget=   1
      AutoArrange     =   0   'False
      NoClientEdge    =   0   'False
      AlignLeft       =   0   'False
      NoWebView       =   0   'False
      HideFileNames   =   0   'False
      SingleClick     =   0   'False
      SingleSelection =   0   'False
      NoFolders       =   0   'False
      Transparent     =   0   'False
      ViewID          =   "{0057D0E0-3573-11CF-AE69-08002B2E1262}"
      Location        =   "http:///"
   End
End
Attribute VB_Name = "Frm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
On Error Resume Next
Me.Icon = LoadPicture("")
Form_Resize
If Command = "" Then End
WebBrowser.Navigate Command
End Sub

Private Sub Form_Resize()
On Error Resume Next
WebBrowser.Height = Height - 562
WebBrowser.Width = Width - 217
End Sub

Private Sub Timer_Timer()
Me.Caption = WebBrowser.LocationName
End Sub
