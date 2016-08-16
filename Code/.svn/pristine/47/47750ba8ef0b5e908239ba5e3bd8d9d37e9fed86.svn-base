VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "K9-USB发卡器-感应锁接口函数演示程序"
   ClientHeight    =   4605
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11490
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4605
   ScaleWidth      =   11490
   StartUpPosition =   1  '所有者中心
   Begin VB.CommandButton cmdGetDllVer 
      Caption         =   "读DLL版本号[GetDllVersion]"
      Height          =   495
      Left            =   8280
      TabIndex        =   27
      Top             =   120
      Width           =   3135
   End
   Begin VB.Frame Frame4 
      Caption         =   "最常用函数"
      Height          =   2895
      Left            =   8280
      TabIndex        =   22
      Top             =   1080
      Width           =   3135
      Begin VB.CommandButton Command6 
         Caption         =   "读取客人卡信息[GetGuestCardinfo]"
         Height          =   615
         Left            =   240
         TabIndex        =   26
         Top             =   2040
         Width           =   2655
      End
      Begin VB.CommandButton Command2 
         Caption         =   "注销卡片[CardErase]"
         Height          =   495
         Left            =   240
         TabIndex        =   25
         Top             =   1440
         Width           =   2655
      End
      Begin VB.CommandButton cmdbuzzer 
         Caption         =   "蜂鸣[Buzzer]"
         Height          =   495
         Left            =   240
         TabIndex        =   24
         Top             =   240
         Width           =   2655
      End
      Begin VB.CommandButton cmdwritecard 
         Caption         =   "制宾客卡[WriteGuestCard]"
         Height          =   495
         Left            =   240
         TabIndex        =   23
         Top             =   840
         Width           =   2655
      End
   End
   Begin VB.TextBox txtStrHex 
      BackColor       =   &H8000000B&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1800
      TabIndex        =   18
      Text            =   "txtStrHex"
      Top             =   4080
      Width           =   9615
   End
   Begin VB.CommandButton cmdExit 
      Caption         =   "退出"
      Height          =   495
      Left            =   8280
      TabIndex        =   15
      Top             =   600
      Width           =   3135
   End
   Begin VB.Frame Frame2 
      Caption         =   "卡片操作"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   10.5
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   3855
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   8055
      Begin VB.OptionButton Option4 
         Caption         =   "可以开反锁"
         Height          =   255
         Left            =   1200
         TabIndex        =   21
         Top             =   3360
         Value           =   -1  'True
         Width           =   1935
      End
      Begin VB.OptionButton Option3 
         Caption         =   "不能开反锁"
         Height          =   300
         Left            =   3240
         TabIndex        =   20
         Top             =   3360
         Width           =   1935
      End
      Begin VB.CommandButton cmdreset 
         Caption         =   "恢复到默认值"
         Height          =   495
         Left            =   6360
         TabIndex        =   16
         Top             =   3240
         Width           =   1455
      End
      Begin VB.TextBox txtCoID 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2280
         TabIndex        =   13
         Text            =   "0"
         Top             =   360
         Width           =   1575
      End
      Begin VB.CommandButton Command3 
         Caption         =   "从现场正常使用的发卡器中获得酒店标识"
         Height          =   375
         Left            =   4080
         TabIndex        =   12
         Top             =   360
         Width           =   3735
      End
      Begin VB.TextBox txtDai 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2280
         TabIndex        =   9
         Text            =   "txtDai"
         Top             =   2880
         Width           =   855
      End
      Begin VB.TextBox txtETime 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   375
         Left            =   2280
         TabIndex        =   7
         Text            =   "txtETime"
         Top             =   2280
         Width           =   3375
      End
      Begin VB.TextBox txtLockNo 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2280
         TabIndex        =   5
         Text            =   "txtLockNo"
         Top             =   1440
         Width           =   1575
      End
      Begin VB.TextBox txtCardNo 
         BeginProperty Font 
            Name            =   "宋体"
            Size            =   10.5
            Charset         =   134
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   270
         Left            =   2280
         TabIndex        =   2
         Text            =   "txtCardNo"
         Top             =   960
         Width           =   1575
      End
      Begin VB.Label Label4 
         Caption         =   "( 001002003表示001栋002层003房 )"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   3960
         TabIndex        =   17
         Top             =   1440
         Width           =   3255
      End
      Begin VB.Label Label23 
         Alignment       =   1  'Right Justify
         Caption         =   "酒店标识[coID]："
         Height          =   255
         Left            =   360
         TabIndex        =   14
         Top             =   360
         Width           =   1695
      End
      Begin VB.Label Label28 
         Caption         =   "锁号组成：栋号3位,层号3位,房间编号3位"
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   840
         TabIndex        =   11
         Top             =   1800
         Width           =   6495
      End
      Begin VB.Label Label5 
         Caption         =   "（0-255循环）"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   3240
         TabIndex        =   10
         Top             =   2880
         Width           =   1575
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "屏蔽标志[Dai]："
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   2880
         Width           =   1935
      End
      Begin VB.Label Label29 
         Alignment       =   1  'Right Justify
         Caption         =   "预计退房时间[eTime]："
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   2400
         Width           =   1935
      End
      Begin VB.Label Label27 
         Alignment       =   1  'Right Justify
         Caption         =   "锁号[LockNo]："
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   1440
         Width           =   1815
      End
      Begin VB.Label Label2 
         Caption         =   "（0-15,一分钟之内最多发16张卡）"
         ForeColor       =   &H000000FF&
         Height          =   255
         Left            =   3960
         TabIndex        =   3
         Top             =   960
         Width           =   3855
      End
      Begin VB.Label Label22 
         Alignment       =   1  'Right Justify
         Caption         =   "卡号[CardNo]："
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   960
         Width           =   1815
      End
   End
   Begin VB.Label Label3 
      Caption         =   "卡数据[CardHexStr]："
      Height          =   255
      Left            =   0
      TabIndex        =   19
      Top             =   4080
      Width           =   2055
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


'制宾客卡
Private Sub cmdwritecard_Click()
  Dim llock As Byte         '反锁标志
  Dim dlsCoID As Long       '酒店标识
  Dim CardNo As Integer     '卡号(0-15)
  Dim dai As Integer        '客人代
  Dim ETime As String       '预计退房时间
  Dim LockNo As String      '锁号

  
  If Option4.Value = True Then               '反锁标志
    llock = 1
  Else
    llock = 0
  End If

  dlsCoID = CLng(txtCoID.Text)                 '酒店标识
  CardNo = CInt(txtCardNo.Text) Mod 16         '卡号(0-15)
  dai = CInt(txtDai.Text) Mod 256              '客人卡屏蔽前卡标志
  BTime = Format(Now, "YYMMDDHHMM")            '发卡时间
  ETime = Format(txtETime.Text, "YYMMDDHHMM")  '预计退房时间
  LockNo = txtLockNo.Text
  st = WriteGuestCard(dlsCoID, CardNo, dai, llock, ETime, LockNo, bufHexStr)
  txtStrHex.Text = bufHexStr
  If st = 0 Then
    Buzzer (20)
    MsgBox "调用发卡函数成功", 64
  Else
    MsgBox "调用发卡函数失败, 错误代号为: " & CStr(st), 16
  End If

End Sub

'注销卡片
Private Sub Command2_Click()
  Dim dlsCoID As Long       '酒店标识
  dlsCoID = CLng(txtCoID.Text)               '酒店标识
  st = CardErase(dlsCoID, bufHexStr)
  txtStrHex.Text = bufHexStr
  If st <> 0 Then
    MsgBox "注销失败, 错误代号为: " & CStr(st), 16
  Else
    Buzzer (20)
    MsgBox "注销成功", 64
  End If
End Sub



'读取客人卡信息
Private Sub Command6_Click()
  Dim dlsCoID As Long         '酒店标识
  Dim lockinfo As String * 50
  Dim CardNo As String * 8
  Dim LockNo As String * 9
  Dim BTime As String * 12
  Dim ETime As String * 12
  Dim Ulock As String * 2
  Dim Allinfo As String * 200

  dlsCoID = CLng(txtCoID.Text)               '酒店标识
  st = GetGuestCardinfo(dlsCoID, bufCard, lockinfo)
  txtStrHex.Text = bufCard
  If st = 0 Then
    CardNo = Mid(lockinfo, 35, 8)
    LockNo = Mid(lockinfo, 1, 9)
    BTime = Mid(lockinfo, 10, 12)
    ETime = Mid(lockinfo, 22, 12)
    Ulock = Mid(lockinfo, 34, 1)

    Allinfo = "卡    号: " + CardNo + Chr(10) + "锁    号: " + LockNo + Chr(10) + "发卡时间: " + BTime & Chr(10) + "到期时间: " + ETime + Chr(10) + "是否可以开反锁: " + Ulock + Chr(10) + "所有数据:" + lockinfo
    MsgBox Allinfo, 64
  ElseIf st = 1 Then
    MsgBox "发卡器连接失败效" & Chr(10) & bufCard, 48
  ElseIf st = -2 Then
    MsgBox "没有读到有效卡片" & Chr(10) & bufCard, 48
  ElseIf st = -3 Then
    MsgBox "不是本酒店卡，也就是酒店标识不匹配" & Chr(10) & bufCard, 48
  ElseIf st = -4 Then
    MsgBox "空白卡或者已经注销的卡片" & Chr(10) & bufCard, 48
  Else
    MsgBox "未知返回值: " & CStr(st) & Chr(10) & bufCard, 48
  End If
End Sub


'关闭程序
Private Sub cmdExit_Click()
    End
End Sub

'读取DLL版本信息
Private Sub cmdGetDllVer_Click()
    Dim s As String * 128
    st = GetDLLVersion(s)
    If st = 0 Then
        MsgBox "DLL版本号为：" & s, 64
    Else
        MsgBox "读DLL版本号错误, 错误代码为：" & CStr(st), 48
    End If
End Sub



'将输入框恢复到默认值
Private Sub Cmdreset_Click()
    txtCardNo = "1"
    txtLockNo = "001002003"
    txtETime = Format(Now + 1, "YYYY/MM/DD 14:00")
    txtDai = "0"
    txtStrHex = ""
    Option4.Value = True
End Sub

'蜂鸣器
Private Sub Cmdbuzzer_Click()

    Buzzer (20)  '发卡器鸣叫50x10ms

End Sub

'从现有卡片读取酒店标识
Private Sub Command3_Click()
  Dim i As Long
  Dim scoid As String * 6
  Dim s As String
  st = GetCoid(scoid)
  
  If st = 0 Then
    s = Mid(scoid, 3, 4)
    i = CLng("&H" + s) Mod 16384
    s = Mid(scoid, 1, 2)
    i = i + (CLng("&H" + s) * 65536)
    txtCoID.Text = CStr(i)
  Else
    txtCoID.Text = ""
    MsgBox "获得酒店标识失败", 48
  End If

End Sub

Private Sub Form_Load()
    txtCardNo = "1"
    txtLockNo = "001002003"
    txtETime = Format(Now + 1, "YYYY/MM/DD 14:00")
    txtDai = "0"
    txtStrHex = ""
End Sub
