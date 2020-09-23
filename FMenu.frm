VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Floating Menu Example"
   ClientHeight    =   9525
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12195
   LinkTopic       =   "Form1"
   ScaleHeight     =   9525
   ScaleWidth      =   12195
   StartUpPosition =   2  'CenterScreen
   Begin VB.Menu mnuFile 
      Caption         =   "&File"
      Visible         =   0   'False
      Begin VB.Menu mnuOpen 
         Caption         =   "&Open"
      End
      Begin VB.Menu mnuSave 
         Caption         =   "&Save"
      End
      Begin VB.Menu mnuDash1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "E&xit"
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
     If Button = vbRightButton Then
          PopupMenu mnuFile, vbPopupMenuLeftAlign
     End If
End Sub
