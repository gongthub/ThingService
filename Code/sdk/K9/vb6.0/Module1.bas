Attribute VB_Name = "Module1"

'��������

'��DLL�汾��
'��ýӿڰ汾��
Declare Function GetDLLVersion Lib "K9RF.Dll" (ByVal sDllVer As String) As Integer
'�ӷ������л�þƵ��ʶ
Declare Function GetCoid Lib "K9RF.Dll" (ByVal dcoid As String) As Integer
'��������һ��
Declare Function Buzzer Lib "K9RF.Dll" (ByVal t As Integer) As Integer
'����
Declare Function ReadCard Lib "K9RF.Dll" (ByVal Buffer As String) As Integer
'���˿�
Declare Function WriteGuestCard Lib "K9RF.Dll" (ByVal dlsCoID As Long, ByVal CardNo As Integer, ByVal dai As Integer, ByVal llock As Integer, ByVal ETime As String, ByVal LockNo As String, ByVal CardHexStr As String) As Integer
'ע����Ƭ
Declare Function CardErase Lib "K9RF.Dll" (ByVal dlsCoID As Long, ByVal CardHexStr As String) As Integer

'HEX-ASC
Declare Function hex_a Lib "K9RF.Dll" (ByVal hex As String, ByVal a As String, ByVal length As Integer) As Integer
'ASC-HEX
Declare Function a_hex Lib "K9RF.Dll" (ByVal a As String, ByVal hex As String, ByVal length As Integer) As Integer
'��ȡ���˿���Ϣ
Declare Function GetGuestCardinfo Lib "K9RF.Dll" (ByVal dlsCoID As Long, ByVal CardDataStr As String, ByVal lockinfo As String) As Integer

'ȫ�ֱ���
Global st As Integer                     '��������״ֵ̬
Global bufCard As String * 128           '��Ƭ����
Global bufHexStr As String * 128         'ʮ�������ַ���


