unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,StrUtils, Buttons, ExtCtrls,DateUtils;

type
  TForm1 = class(TForm)
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label16: TLabel;
    edt_Dai: TEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    BitBtn4: TBitBtn;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    edt_CardData: TEdit;
    Label17: TLabel;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Label11: TLabel;
    edt_CardNo: TEdit;
    Label12: TLabel;
    cmdExit: TBitBtn;
    BitBtn11: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    LOCKNO: TComboBox;
    Label10: TLabel;
    edt_coID: TEdit;
    BitBtn5: TBitBtn;
    Label3: TLabel;
    BitBtn6: TBitBtn;

    procedure BitBtn11Click(Sender: TObject);
    procedure cmdExitClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure LOCKNOKeyPress(Sender: TObject; var Key: Char);
    procedure edt_CardNoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_DaiKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }

  public

    { Public declarations }
  end;

var
  Form1:  TForm1;
  bufcard:array[0..127] of char;
implementation
   //获得接口版本号
   Function GetDLLVersion(ver:pchar):integer;stdcall ;
    external 'k9rf.DLL'
   // 发客人卡
    function WriteGuestCard(dlsCoID:integer;CardNo,dai,Llock:byte;EDate,roomno:pchar; carddata:pchar):integer;stdcall ;
    external 'k9rf.DLL'
   // 获得客人卡信息
    function GetGuestCardinfo(dlscoid:integer;carddata,lockinfo:pchar):Integer; stdcall ;
      external 'k9rf.DLL';
   //获得酒店标识
    function GetCoid(Coid:pchar):integer; stdcall ;
    external 'k9rf.dll';
    //注销卡片
    function CardErase(dlsCoID:Integer;cardbuf:pchar):Integer; stdcall;
    external 'k9rf.dll';
    //鸣叫
    function Buzzer(bt:Byte):integer; stdcall ;
    external 'k9rf.dll';
    //读卡数据
    Function ReadCard( bufr:pchar):integer;stdcall ;
    external 'k9rf.DLL'


{$R *.dfm}



procedure TForm1.BitBtn11Click(Sender: TObject);
var
  st:     Integer;
  llock:  Byte;
  SP: array[0..128]of char;
begin
  if length(lockno.Text)<>9 then begin
      Application.MessageBox('请输入9位数据锁号','Note',64);
      exit;
  end;
  llock:=0; //反锁标志
  if RadioButton1.Checked then llock:=1;  //反锁标志
  //退房时间
  DateTimePicker1.Time:=DateTimePicker2.Time;
  st:=WriteGuestCard(StrToIntDef(edt_coID.Text,0),    //酒店标识
                StrToIntDef(edt_CardNo.Text,0) mod 16,  //流水号
                StrToIntDef(edt_Dai.Text,0) mod 256,     //覆盖标志  数据加1，可以屏蔽之前本房间所有卡
                llock,                           //反锁标志，1标识可以开反锁
                PCHAR(FormatDateTime('YYMMDDHHMM',DateTimePicker1.DateTime)),  //退房时间
                PCHAR(LockNo.Text),      //锁号
                SP);                        //卡数据

  edt_CardData.Text:=STRING(SP);
  if st=0 then begin
      edt_cardno.Text:= inttostr((strtointdef(edt_cardno.Text,0)+1)mod 16);
      Buzzer(20);
      Application.MessageBox('发卡成功','Note',MB_OK+MB_ICONINFORMATION);
   end
  else  Application.MessageBox(Pchar('发卡失败'),pchar('返回值:'+IntToStr(st)),64);
end;

procedure TForm1.cmdExitClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  edt_CardNo.Text:='0';
  LockNo.Text:='001002003';
  edt_Dai.Text:='0';
  DateTimePicker1.Date:=dateof(now)+1;
  DateTimePicker2.time:=strtotime('13:00:00');
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  edt_CardNo.Text:='0';
  LockNo.Text:='001002003';
  edt_Dai.Text:='0';
  DateTimePicker1.Date:=dateof(now)+1;
  DateTimePicker2.time:=strtotime('13:00:00');
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  st:integer;
  carddata,lockinfo:array[0..127]of char;
begin
  st:=GetGuestCardInfo(StrToIntDef(edt_coID.Text,0),carddata,lockinfo);
  edt_CardData.Text:=STRING(carddata);
  if st=0 then begin
    edt_carddata.text:= carddata;
    Application.MessageBox(pchar('客人卡信息：'+string(lockinfo)+ #13+#13+
                           '卡    号：'+ copy(lockinfo,35,8)+#13+
                           '锁    号：'+copy(lockinfo,1,9)+ #13+
                           '发卡时间：'+copy(lockinfo,10,4)+' '+ copy(lockinfo,14,2)+' '+ copy(lockinfo,16,2)+' '+
                           copy(lockinfo,18,2)+':'+ copy(lockinfo,20,2)+#13+
                           '有效期限：'+copy(lockinfo,22,4)+' '+  copy(lockinfo,26,2)+' '+ copy(lockinfo,28,2)+' '+
                           copy(lockinfo,30,2)+':'+ copy(lockinfo,32,2)+#13 +
                           '反锁标志：1表示可以开反锁，0表示不可以开反锁->>'+ copy(lockinfo,34,1)+#13
                           ),'Note',64);
 end
else  Application.MessageBox(pchar('获得客人卡数据失败,返回值说明：'+#13+
                             '-2表示没有读到有效卡片；'+#13+
                             '-3表示此卡非本酒店卡，或许酒店标识没有匹配；'+#13+
                             '-4表示空白卡或者已经注销的卡片；'+#13+
                             '其他返回值表示不是客人卡，而是其他卡类型；'),pchar('返回值：'+INTTOSTR(ST)),64);

end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  Buzzer(20);
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var coid:array[0..6] of char;
  st,i:integer;
begin
  st:=GetCoid(coid) ;
  if st= 0 then begin
    Buzzer(20);
    i:=strtointdef('$'+string(coid),-1);
    edt_coID.Text:=inttostr(i);
    Application.MessageBox(pchar('酒店标识：'+inttostr(i)),'Note',64);
  end else
     Application.MessageBox('获取酒店标识失败',pchar('返回值：'+inttostr(st)),64);
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
var
  st:integer ;
  cardbuf:array[0..128]of char;
begin
  st:=CardErase(strtoint(edt_coid.Text),cardbuf);
  edt_CardData.Text:=STRING(cardbuf);
  if st=0 then begin
    Buzzer(20);
    Application.MessageBox('成功注销','提醒',64);
  end else Application.MessageBox('注销失败',pchar(inttostr(st)),64);
end;

procedure TForm1.LOCKNOKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in ['0'..'9',#8]) then key:=#0;
end;

procedure TForm1.edt_CardNoKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in ['0'..'9',#8]) then key:=#0;
end;

procedure TForm1.edt_DaiKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in ['0'..'9',#8]) then key:=#0;
end;

procedure TForm1.BitBtn6Click(Sender: TObject);
var ver :array[0..30]of char;
begin
  GetDLLVersion(ver);
  showmessage('接口版本号：'+ver) ;
end;

end.
