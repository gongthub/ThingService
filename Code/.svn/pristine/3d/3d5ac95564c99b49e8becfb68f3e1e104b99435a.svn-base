Attribute VB_Name = "Module1"

'函数申明

'读DLL版本号
'获得接口版本号
Declare Function GetDLLVersion Lib "K9RF.Dll" (ByVal sDllVer As String) As Integer
'从发卡器中获得酒店标识
Declare Function GetCoid Lib "K9RF.Dll" (ByVal dcoid As String) As Integer
'发卡器叫一声
Declare Function Buzzer Lib "K9RF.Dll" (ByVal t As Integer) As Integer
'读卡
Declare Function ReadCard Lib "K9RF.Dll" (ByVal Buffer As String) As Integer
'客人卡
Declare Function WriteGuestCard Lib "K9RF.Dll" (ByVal dlsCoID As Long, ByVal CardNo As Integer, ByVal dai As Integer, ByVal llock As Integer, ByVal ETime As String, ByVal LockNo As String, ByVal CardHexStr As String) As Integer
'注销卡片
Declare Function CardErase Lib "K9RF.Dll" (ByVal dlsCoID As Long, ByVal CardHexStr As String) As Integer

'HEX-ASC
Declare Function hex_a Lib "K9RF.Dll" (ByVal hex As String, ByVal a As String, ByVal length As Integer) As Integer
'ASC-HEX
Declare Function a_hex Lib "K9RF.Dll" (ByVal a As String, ByVal hex As String, ByVal length As Integer) As Integer
'读取客人卡信息
Declare Function GetGuestCardinfo Lib "K9RF.Dll" (ByVal dlsCoID As Long, ByVal CardDataStr As String, ByVal lockinfo As String) As Integer

'全局变量
Global st As Integer                     '函数返回状态值
Global bufCard As String * 128           '卡片数据
Global bufHexStr As String * 128         '十六进制字符串


