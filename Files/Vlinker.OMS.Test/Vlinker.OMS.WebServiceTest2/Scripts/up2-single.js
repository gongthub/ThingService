/*
	版权所有 2009-2015 荆门泽优软件有限公司
	保留所有权利
	官方网站：http://www.ncmem.com/
	产品首页：http://www.ncmem.com/webplug/http-uploader2/index.asp
	产品介绍：http://www.cnblogs.com/xproer/archive/2012/05/29/2523757.html
	开发文档-ASP：http://www.cnblogs.com/xproer/archive/2012/02/17/2355458.html
	开发文档-PHP：http://www.cnblogs.com/xproer/archive/2012/02/17/2355467.html
	开发文档-JSP：http://www.cnblogs.com/xproer/archive/2012/02/17/2355462.html
	开发文档-ASP.NET：http://www.cnblogs.com/xproer/archive/2012/02/17/2355469.html
	升级日志：http://www.cnblogs.com/xproer/archive/2012/02/17/2355449.html
	文档下载：http://yunpan.cn/lk/sVRrBEVQ7w5cw
	问题反馈：http://www.ncmem.com/bbs/showforum-19.aspx
	VC运行库：http://www.microsoft.com/download/en/details.aspx?displaylang=en&id=29
	联系信箱：1085617561@qq.com
	联系QQ：1085617561
    更新记录：
        2015-08-01 优化
*/

//删除元素值
Array.prototype.remove = function (val)
{
    for (var i = 0, n = 0; i < this.length; i++)
    {
        if (this[i] != val)
        {
            this[n++] = this[i]
        }
    }
    this.length -= 1
}

/*
	2009-11-5 文件管理类
	属性：
		UpFileList
*/
function HttpUploaderMgr()
{
    var _this = this;
    this.Config = {
        "EncodeType": "GB2312"
		, "Company": "荆门泽优软件有限公司"
		, "Version": "2,5,53,31251"
		, "License": ""
		, "FileFilter": "*"//文件类型。所有类型：*。自定义类型：jpg,bmp,png,gif,rar,zip,7z,doc
		, "FileSizeLimit": "0"//自定义允许上传的文件大小，以字节为单位。0表示不限制。字节计算工具：http://www.beesky.com/newsite/bit_byte.htm
		, "FilesLimit": 0//文件选择数限制。0表示不限制
		, "AllowMultiSelect": 0//多选开关。1:开启多选。0:关闭多选
		, "Debug": false//是否打开调式模式。true,false
		, "LogFile": "F:\\log.txt"//日志文件路径。需要先打开调试模式。
		, "InitDir": ""//初始化路径。示例：D:\\Soft
		, "AppPath": ""//网站虚拟目录名称。子文件夹 web
        //
		, "UrlPost": "http://localhost:4854/asp.net/upload.aspx"
        //x86
		, "ClsidDroper": "4D2454F8-EB25-465f-B867-C2A3E9F3D4B4"
		, "ClsidUploader": "7AAE6FD3-C2F2-49d5-A790-1103848B3531"
		, "ClsidPartition": "6F3EB4AF-FC9C-4570-A686-88B4B427C6FE"
		, "CabPath": "http://www.ncmem.com/download/HttpUploader/HttpUploader.cab"
        //x64
        //x64
		, "ClsidDroper64": "C9388115-887C-4d64-B175-F8F1AA5437BF"
		, "ClsidUploader64": "E95E03B2-8718-4871-B965-A9D21108DCD2"
		, "ClsidPartition64": "3AFFCB6D-55ED-4ada-A1EC-D7D87BA29E51"
		, "CabPath64": "http://www.ncmem.com/download/HttpUploader/HttpUploader64.cab"
        //Firefox
		, "MimeType": "application/npHttpUp2"
		, "XpiPath": "http://www.ncmem.com/download/HttpUploader/HttpUploader2.xpi"
        //Chrome
		, "CrxName": "npHttpUp2"
		, "CrxType": "application/npHttpUp2"
		, "CrxPath": "http://www.ncmem.com/download/HttpUploader/HttpUploader2.crx"
		, "ExePath": "http://www.ncmem.com/download/HttpUploader/HttpUploader2.exe"
    };

    this.ActiveX = {
        "Droper": "Xproer.HttpDroper2"
		, "Uploader": "Xproer.HttpUploader2"
		, "Partition": "Xproer.HttpPartition2"
        //64bit
		, "Droper64": "Xproer.HttpDroper2x64"
		, "Uploader64": "Xproer.HttpUploader2x64"
		, "Partition64": "Xproer.HttpPartition2x64"
    };

    //附加参数
    this.Fields = {
        "uname": "test"
		, "upass": "test"
		, "uid": 0
		, "fid": 0
    };

    this.bizEnt = {
        "postProcess": function (obj, speed, postedLength, percent, times) { }
	    , "postComplete": function (obj) { }
        , "postError": function (obj) { }
        , "md5Process": function (obj) { }
        , "md5Complete": function (obj, md5) { }
    };

    //检查版本 Win32/Win64/Firefox/Chrome
    var browserName = navigator.userAgent.toLowerCase();
    _this.ie = browserName.indexOf("msie") > 0;
    //IE11检查
    _this.ie = _this.ie ? _this.ie : browserName.search(/(msie\s|trident.*rv:)([\w.]+)/) != -1;
    this.firefox = browserName.indexOf("firefox") > 0;
    this.chrome = browserName.indexOf("chrome") > 0;

    this.CheckVersion = function ()
    {
        //Win64
        if (window.navigator.platform == "Win64")
        {
            this.Config["CabPath"] = this.Config["CabPath64"];

            this.Config["ClsidDroper"] = this.Config["ClsidDroper64"];
            this.Config["ClsidUploader"] = this.Config["ClsidUploader64"];
            this.Config["ClsidPartition"] = this.Config["ClsidPartition64"];

            this.ActiveX["Uploader"] = this.ActiveX["Uploader64"];
            this.ActiveX["Partition"] = this.ActiveX["Partition64"];
        } //Firefox
        else if (this.firefox)
        {
            this.Config["CabPath"] = this.Config["XpiPath"];
            this.ActiveX["Uploader"] = this.ActiveX["UploaderFF"];
        }
        else if (this.chrome)
        {
            this.Config["CabPath"] = this.Config["CrxPath"];
            this.Config["XpiType"] = this.Config["CrxType"];
        }
    };
    this.CheckVersion();

    //http://www.ncmem.com/
    this.Domain = "http://" + document.location.host;
    this.iePart = null;
    this.ieUploader = null;
    this.ffPart = null;
    this.fileItem = null;//jquery object
    this.fileCur = null;//当前文件上传项

    //文件上传面板。
    this.GetHtml = function ()
    {
        //加载拖拽控件
        var acx = "";
        //自动安装CAB
        //acx += '<div style="display:none">';
        //文件上传控件
        acx += '<embed name="ffPart" type="' + this.Config["XpiType"] + '" pluginspage="' + this.Config["CabPath"] + '" width="1" height="1"/>';
        acx += '<object name="uploader" id="objHttpUpLoader" classid="clsid:' + _this.Config["ClsidUploader"] + '"';
        acx += ' codebase="' + _this.Config["CabPath"] + '" width="1" height="1" ></object>';
        //文件夹选择控件
        acx += '<object name="partition" id="objHttpUploaderPartition" classid="clsid:' + _this.Config["ClsidPartition"] + '"';
        acx += ' codebase="' + _this.Config["CabPath"] + '" width="1" height="1" ></object>';
        //acx += '</div>';
        //
        //		acx += '<div id="UploaderTemplate" class="sitem">';
        //		acx += '<div name="fileName" class="fileName">HttpUploader5-doc.rar</div>';
        //		acx += '<div name="fileSize" class="fileSize">(1.41MB)</div>';
        //		acx += '<div class="processbk"><div name="process" class="process"> </div></div>';
        //		acx += '<div name="btn" class="btn">删除</div>';
        //		acx += '<div name="btnCancel" class="btn hide">取消</div>';
        //		acx += '</div>';
        //上传列表项模板
        acx += '<div class="UploaderItem" name="fileItem" id="UploaderTemplate" style="display:none">\
		            <div class="UploaderItemLeft" style="display:none">\
		                <div class="FileInfo">\
		                    <div name="fileName" class="FileName top-space">HttpUploader程序开发.pdf</div>\
		                    <div name="fileSize" class="FileSize" child="1">100.23MB</div>\
		                </div>\
		                <div class="ProcessBorder top-space"><div name="process" class="Process"></div></div>\
		                <div name="msg" class="PostInf top-space">已上传:15.3MB 速度:20KB/S 剩余时间:10:02:00</div>\
		            </div>\
		            <div class="UploaderItemRight" style="display:none">\
		                <div class="BtnInfo"><span name="btnCancel" class="Btn">取消</span>&nbsp;<span name="btnDel" class="Btn">删除</span></div>\
		                <div name="percent" class="ProcessNum">35%</div>\
		            </div>\
		        </div>';
        return acx;
        
        //return "";
    };

    //IE浏览器信息管理对象
    this.BrowserIE = {
        "Check": function ()//检查插件是否已安装
        {
            try
            {
                var com = new ActiveXObject(_this.ActiveX["Uploader"]);
                return true;
            }
            catch (e) { return false; }
        }
        , "NeedUpdate": function () { return this.GetVersion() != _this.Config["Version"]; }
		, "GetVersion": function () { return _this.iePart.Version; }
        , "GetFileSize": function (path) { return _this.iePart.FileSize(path); }
        , "GetFileLength": function (path) { return _this.iePart.FileLength(path); }
		, "OpenFileDialog": function ()//打开文件选择窗口
		{
		    var obj = _this.iePart;
		    obj.FileFilter = _this.Config["FileFilter"];
		    obj.AllowMultiSelect = _this.Config["AllowMultiSelect"];
		    obj.InitDir = _this.Config["InitDir"];
		    if (!obj.ShowDialog()) return;

		    var list = obj.GetSelectedFiles();
		    if (list == null) return;
		    if (list.lbound(1) == null) return;

		    for (var index = list.lbound(1) ; index <= list.ubound(1) ; index++)
		    {
		        if (!_this.Exist(list.getItem(index)))
		        {
		            _this.AddFile(list.getItem(index));
		        }
		    }
		    _this.PostFirst();
		}
		, "GetSingleFile": function ()//获取单个文件
		{
		    var obj = _this.iePart;
		    obj.FileFilter = _this.Config["FileFilter"];
		    obj.AllowMultiSelect = _this.Config["AllowMultiSelect"];
		    obj.InitDir = _this.Config["InitDir"];
		    if (!obj.ShowDialog()) return null;

		    var list = obj.GetSelectedFiles();
		    if (list == null) return null;
		    if (list.lbound(1) == null) return null;
		    return list.getItem(list.lbound(1));
		}
		, "OpenFolderDialog": function ()//打开文件夹选择窗口
		{
		    var obj = _this.iePart;
		    if (!obj.ShowFolder()) return;

		    var list = obj.GetSelectedFiles();
		    if (list == null) return;
		    if (list.lbound(1) == null) return;

		    for (var index = list.lbound(1) ; index <= list.ubound(1) ; index++)
		    {
		        if (!_this.Exist(list.getItem(index)))
		        {
		            _this.AddFile(list.getItem(index));
		        }
		    }
		    _this.PostFirst();
		}
		, "PasteFiles": function ()//从剪帖板中获取文件
		{
		    var obj = _this.iePart;
		    var list = obj.GetClipboardFiles();
		    if (list == null) return;
		    if (list.lbound(1) == null) return;

		    for (var index = list.lbound(1) ; index <= list.ubound(1) ; index++)
		    {
		        if (!_this.Exist(list.getItem(index)))
		        {
		            _this.AddFile(list.getItem(index));
		        }
		    }
		    _this.PostFirst();
		}
		, "GetMacs": function ()
		{
		    var obj = _this.iePart;
		    var list = obj.GetMacs();
		    if (list == null) return null;
		    if (list.lbound(1) == null) return null;
		    var arr = new Array();

		    for (var index = list.lbound(1) ; index <= list.ubound(1) ; index++)
		    {
		        arr.push(list.getItem(index));
		    }
		    return arr;
		}
        , "GetIP": function () { return _this.iePart.IP; }
		, "Init": function () { }
    };
    //FireFox浏览器信息管理对象
    this.BrowserFF = {
        "Check": function ()//检查插件是否已安装
        {
            var mimetype = navigator.mimeTypes[_this.Config["MimeType"]];
            if (mimetype)
            {
                return mimetype.enabledPlugin;
            }
            return mimetype;
        }
        , "NeedUpdate": function () { return this.GetVersion() != _this.Config["Version"]; }
		, "GetVersion": function () { return _this.ffPart.Version; }
        , "GetFileSize": function (path) { return _this.ffPart.FileSize(path); }
        , "GetFileLength": function (path) { return _this.ffPart.FileLength(path); }
		, "Setup": function ()//安装插件
		{
		    var xpi = new Object();
		    xpi["Calendar"] = _this.Config["CabPathFirefox"];
		    InstallTrigger.install(xpi, function (name, result) { });
		}
		, "OpenFileDialog": function ()//打开文件选择窗口
		{
		    var obj = _this.ffPart;
		    obj.FileFilter = _this.Config["FileFilter"];
		    obj.FilesLimit = _this.Config["FilesLimit"];
		    obj.AllowMultiSelect = _this.Config["AllowMultiSelect"];
		    obj.InitDir = _this.Config["InitDir"];

		    var files = obj.ShowDialog();
		    if (files)
		    {
		        for (var i = 0, l = files.length; i < l; ++i)
		        {
		            if (!_this.Exist(files[i]))
		            {
		                _this.AddFile(files[i]);
		            }
		        }
		        _this.PostFirst();
		    }
		}
		, "GetSingleFile": function ()//获取单个文件
		{
		    var obj = _this.ffPart;
		    obj.FileFilter = _this.Config["FileFilter"];
		    obj.FilesLimit = _this.Config["FilesLimit"];
		    obj.AllowMultiSelect = _this.Config["AllowMultiSelect"];
		    obj.InitDir = _this.Config["InitDir"];

		    var files = obj.ShowDialog();
		    if (files)
		    {
		        return files[0];
		    }
		    return null;
		}
		, "OpenFolderDialog": function ()//打开文件夹选择窗口
		{
		    var obj = _this.ffPart;
		    var list = obj.ShowFolder();
		    if (list)
		    {
		        for (var i = 0, l = list.length; i < l; ++i)
		        {
		            if (!_this.Exist(list[i]))
		            {
		                _this.AddFile(list[i]);
		            }
		        }
		        _this.PostFirst();
		    }
		}
		, "PasteFiles": function ()//从剪帖板中获取文件
		{
		    var obj = _this.ffPart;
		    var list = obj.GetClipboardFiles();
		    if (list)
		    {
		        for (var i = 0, l = list.length; i < l; ++i)
		        {
		            if (!_this.Exist(list[i]))
		            {
		                _this.AddFile(list[i]);
		            }
		        }
		        _this.PostFirst();
		    }
		}
		, "GetMacs": function ()
		{
		    var obj = _this.ffPart;
		    var list = obj.GetMacs();
		    if (list == null) return null;
		    if (list.lbound(1) == null) return null;
		    var arr = new Array();

		    for (var index = list.lbound(1) ; index <= list.ubound(1) ; index++)
		    {
		        arr.push(list.getItem(index));
		    }
		    return arr;
		}
        , "GetIP": function () { return _this.ffPart.IP; }
		, "Init": function ()//初始化控件
		{
		    var atl = _this.ffPart;
		    atl.EncodeType = _this.Config["EncodeType"];
		    atl.License = _this.Config["License"];
		    atl.PostUrl = _this.Config["UrlPost"];
		    atl.Company = _this.Config["Company"];
		    atl.Debug = _this.Config["Debug"];
		    atl.LogFile = _this.Config["LogFile"];
		    atl.OnPost = HttpUploader_Process;
		    atl.OnStateChanged = HttpUploader_StateChanged;
		}
    };
    //Chrome浏览器
    this.BrowserChr = {
        "Check": function ()//检查插件是否已安装
        {
            for (var i = 0, l = navigator.plugins.length; i < l; i++)
            {
                if (navigator.plugins[i].name == _this.Config["CrxName"])
                {
                    return true;
                }
            }
            return false;
        }
        , "NeedUpdate": function () { return this.GetVersion() != _this.Config["Version"]; }
		, "GetVersion": function () { return _this.ffPart.Version; }
        , "GetFileSize": function (path) { return _this.ffPart.FileSize(path); }
        , "GetFileLength": function (path) { return _this.ffPart.FileLength(path); }
		, "Setup": function ()//安装插件
		{
		    document.write('<iframe style="display:none;" src="' + _this.Config["CabPathChrome"] + '"></iframe>');
		}
		, "OpenFileDialog": function ()//打开文件选择窗口
		{
		    var obj = _this.ffPart;
		    obj.FileFilter = _this.Config["FileFilter"];
		    obj.FilesLimit = _this.Config["FilesLimit"];
		    obj.AllowMultiSelect = _this.Config["AllowMultiSelect"];
		    obj.InitDir = _this.Config["InitDir"];

		    var files = obj.ShowDialog();
		    if (files)
		    {
		        for (var i = 0, l = files.length; i < l; ++i)
		        {
		            if (!_this.Exist(files[i]))
		            {
		                _this.AddFile(files[i]);
		            }
		        }
		        _this.PostFirst();
		    }
		}
		, "GetSingleFile": function ()//获取单个文件
		{
		    var obj = _this.ffPart;
		    obj.FileFilter = _this.Config["FileFilter"];
		    obj.FilesLimit = _this.Config["FilesLimit"];
		    obj.AllowMultiSelect = _this.Config["AllowMultiSelect"];
		    obj.InitDir = _this.Config["InitDir"];

		    var files = obj.ShowDialog();
		    if (files)
		    {
		        return files[0];
		    }
		    return null;
		}
		, "OpenFolderDialog": function ()//打开文件夹选择窗口
		{
		    var obj = _this.ffPart;
		    var list = obj.ShowFolder();
		    if (list)
		    {
		        for (var i = 0, l = list.length; i < l; ++i)
		        {
		            if (!_this.Exist(list[i]))
		            {
		                _this.AddFile(list[i]);
		            }
		        }
		        _this.PostFirst();
		    }
		}
		, "PasteFiles": function ()//从剪帖板中获取文件
		{
		    var obj = _this.ffPart;
		    var list = obj.GetClipboardFiles();
		    if (list)
		    {
		        for (var i = 0, l = list.length; i < l; ++i)
		        {
		            if (!_this.Exist(list[i]))
		            {
		                _this.AddFile(list[i]);
		            }
		        }
		        _this.PostFirst();
		    }
		}
		, "GetMacs": function ()
		{
		    var obj = _this.ffPart;
		    var list = obj.GetMacs();
		    if (list == null) return null;
		    if (list.lbound(1) == null) return null;
		    var arr = new Array();

		    for (var index = list.lbound(1) ; index <= list.ubound(1) ; index++)
		    {
		        arr.push(list.getItem(index));
		    }
		    return arr;
		}
        , "GetIP": function () { return _this.ffPart.IP; }
		, "Init": function ()//初始化控件
		{
		    var atl = _this.ffPart;
		    atl.EncodeType = _this.Config["EncodeType"];
		    atl.License = _this.Config["License"];
		    atl.Company = _this.Config["Company"];
		    atl.PostUrl = _this.Config["UrlPost"];
		    atl.Debug = _this.Config["Debug"];
		    atl.LogFile = _this.Config["LogFile"];
		    atl.OnPost = HttpUploader_Process;
		    atl.OnStateChanged = HttpUploader_StateChanged;
		}
    };

    //浏览器环境检查
    this.Browser = this.BrowserIE;
    //Firefox
    if (this.firefox)
    {
        this.Browser = this.BrowserFF;
        //if (!this.Browser.Check()) { this.Browser.Setup(); }
    } //Chrome
    else if (this.chrome)
    {
        this.Browser = this.BrowserChr;
        //if (!this.Browser.Check()) { this.Browser.Setup(); }
    }

    //安全检查，在用户关闭网页时自动停止所有上传任务。
    this.SafeCheck = function ()
    {
        $(window).bind("beforeunload", function ()
        {
            if (null != _this.fileCur)
            {
                if (_this.fileCur.State == HttpUploaderState.Posting)
                {
                    event.returnValue = "您还有程序正在运行，确定关闭？";
                }
            }
        });

        $(window).bind("unload", function ()
        {
            if (null != _this.fileCur)
            {
                if (_this.fileCur.State == HttpUploaderState.Posting)
                {
                    _this.fileCur.Stop();
                }
            }
        });
    };

    this.Load = function ()
    {
        var html = this.GetHtml();
        var dom = $(document.body).append(html);
        this.fileItem = dom.find('div[name="fileItem"]');
        this.ffPart = dom.find('embed[name="ffPart"]').get(0);
        this.iePart = dom.find('object[name="partition"]').get(0);
        this.ieUploader = dom.find('object[name="uploader"]').get(0);
        this.SafeCheck();
        this.Browser.Init(); //
    };

    //加截容器，上传面板，文件列表面板
    this.LoadTo = function (oid)
    {
        var html = this.GetHtml();
        var dom = $("#"+oid).html(html);
        this.fileItem = dom.find('div[name="fileItem"]');
        this.ffPart = dom.find('embed[name="ffPart"]').get(0);
        this.iePart = dom.find('object[name="partition"]').get(0);
        this.ieUploader = dom.find('object[name="uploader"]').get(0);
        this.SafeCheck();
        this.Browser.Init(); //
    };

    //打开文件选择对话框
    this.OpenFileDialog = function ()
    {
        _this.Browser.OpenFileDialog();
    };

    //打开文件夹选择对话框
    this.OpenFolderDialog = function ()
    {
        _this.Browser.OpenFolderDialog();
    };

    //粘贴文件
    this.PasteFiles = function ()
    {
        _this.Browser.PasteFiles();
    };

    //oid,显示上传项的层ID
    this.postAuto = function (oid)
    {
        var path = this.Browser.GetSingleFile();
        if (null == path) return;

        if (this.fileCur != null) return;
        this.postLoc(path, oid);
    };

    //上传文件
    this.postLoc = function (filePath, oid)
    {
        var fileName = filePath.substr(filePath.lastIndexOf("\\") + 1);
        var upFile = new FileUploader(filePath, this);
        var ui = _this.fileItem.clone();
        ui.css("display", "block");
        $("#" + oid).append(ui);
        this.fileCur = upFile;

        var objFileName = ui.find("div[name='fileName']");
        var fileSize = ui.find("div[name='fileSize']");
        var process = ui.find("div[name='process']");
        var msg = ui.find("div[name='msg']");
        var btnDel = ui.find("span[name='btnDel']");
        var btnCancel = ui.find("span[name='btnCancel']");
        var divPercent = ui.find("div[name='percent']");

        objFileName.text(fileName);
        objFileName.attr("title", fileName);
        fileSize.text(upFile.FileSize);
        upFile.div = ui;
        upFile.pProcess = process;
        upFile.pMsg = msg;
        upFile.pMsg.text("");
        upFile.pPercent = divPercent;
        upFile.pPercent.text("0%");
        upFile.pButton = btnDel;
        btnDel.click(function ()
        {
            switch (btnDel.text())
            {
                case "暂停":
                case "停止":
                    upFile.Stop();
                    break;
                case "取消":
                    {
                        upFile.Cancel();
                    }
                    break;
                case "续传":
                    upFile.Upload();
                    break;
                case "重试":
                    upFile.Post();
                    break;
            }
        }); //模板控制按钮事件
        upFile.pBtnCancel = btnCancel;
        btnCancel.click(function () { upFile.Cancel(); });
        upFile.Post(); //开始上传
    };
}

var HttpUploaderErrorCode = {
    "0": "连接服务器错误"
	, "1": "发送数据错误"
	, "2": "接收数据错误"
	, "3": "未设置本地文件"
	, "4": "本地文件不存在"
	, "5": "打开本地文件错误"
	, "6": "不能读取本地文件"
	, "7": "公司未授权"
	, "8": "未设置IP"
	, "9": "域名未授权"
	, "10": "文件大小超过限制"//默认为2G
    //md5
	, "200": "无打打开文件"
	, "201": "文件大小为0"
};

var HttpUploaderState = {
    Ready: 0,
    Posting: 1,
    Stop: 2,
    Error: 3,
    GetNewID: 4,
    Complete: 5,
    WaitContinueUpload: 6,
    None: 7,
    Waiting: 8
	, MD5Working: 9
};

//文件上传对象
function FileUploader(filePath, mgr)
{
    var _this = this;
    //this.pMsg;
    //this.pProcess;
    //this.pPercent;
    //this.pButton
    //this.div
    //this.split
    this.ie = mgr.ie;
    this.firefox = mgr.firefox;
    this.chrome = mgr.chrome;
    this.ffPart = mgr.ffPart;
    this.browser = mgr.Browser;
    this.ieUploader = mgr.ieUploader;
    this.Manager = mgr; //上传管理器指针
    this.Config = mgr.Config;
    this.Fields = mgr.Fields;
    this.ActiveX = mgr.ActiveX;
    this.State = HttpUploaderState.None;
    this.MD5 = "";
    this.pathLoc = filePath;
    this.pathSvr = "";
    this.lenSvr = 0;//
    this.FileName = filePath.substr(filePath.lastIndexOf("\\") + 1);
    this.LocalFile = filePath;
    this.idSvr = 0;
    this.FileSize = this.browser.GetFileSize(filePath); //格式化后的文件大小 50MB
    this.FileLength = this.browser.GetFileLength(filePath);//以字节为单位的字符串
    this.PathLocal = encodeURIComponent(filePath); //URL编码后的本地路径
    this.PathRelat = ""; //文件在服务器中的相对地址。示例：http://www.ncmem.con/upload/201204/03/QQ2012.exe
    this.fid = 0; //与服务器数据库对应的fid
    this.uid = this.Fields["uid"];
    this.percentSvr = "0%";
    var ref = this;

    //初始化控件
    this.ATL = {
        "Create": function ()
        {
            this.Atl = _this.ieUploader;
            this.Atl.Debug = _this.Config["Debug"];
            this.Atl.LogFile = _this.Config["LogFile"];
            this.Atl.LocalFile = _this.pathLoc;
            this.Atl.Object = _this;
            this.Atl.EncodeType = _this.Config["EncodeType"];
            this.Atl.License = _this.Config["License"];
            this.Atl.Company = _this.Config["Company"];
            this.Atl.PostUrl = _this.Config["UrlPost"];
            this.Atl.Cookie = document.cookie;
            this.Atl.OnPost = HttpUploader_Process;
            this.Atl.OnStateChanged = HttpUploader_StateChanged;
        }
		, "SetMD5": function (md5) { this.Atl.MD5 = md5; }
        //get
		, "GetResponse": function () { return this.Atl.Response; }
		, "GetMD5": function () { return this.Atl.MD5; }
		, "GetMd5Percent": function () { return this.Atl.Md5Percent; }
		, "GetFileLenSvr": function () { return this.Atl.PostedLength; }
		, "GetErrorCode": function () { return this.Atl.ErrorCode; }
        //methods
		, "CheckFile": function () { this.Atl.CheckFile(); }
		, "Post": function (){this.Atl.Post();}
		, "Stop": function () { this.Atl.Stop(); }
		, "ClearFields": function () { this.Atl.ClearFields(); }
		, "AddField": function (fn, fv) { this.Atl.AddField(fn, fv); }
		, "Dispose": function () { delete this.Atl; }
        //property
		, "Atl": _this.ieUploader
    };
    //Firefox 插件
    this.ATLFF = {
        "Create": function ()
        {
            if ("-1" == this.id)
            {
                this.id = this.Atl.AddFile(_this.pathLoc);
            }
            this.Atl.SetObject(this.id, _this);
            this.Atl.SetPostedLength(this.id, _this.lenSvr);
            this.SetMD5(_this.MD5);
        }
		, "SetLocalFile": function (filePath) { this.id = this.Atl.AddFile(filePath); }
		, "SetObject": function (obj) { this.Atl.SetObject(this.id, obj); }
		, "SetPostedLength": function (len) { this.Atl.SetPostedLength(this.id, len); }
		, "SetMD5": function (md5) { this.Atl.SetMD5(this.id, md5); }
        //get
		, "GetResponse": function () { return this.Atl.GetResponse(this.id); }
		, "GetMD5": function () { return this.Atl.GetMD5(this.id); }
		, "GetMd5Percent": function () { return this.Atl.GetMd5Percent(this.id); }
		, "GetFileLenSvr": function () { return this.Atl.GetPostedLength(this.id); }
		, "GetErrorCode": function () { return this.Atl.GetErrorCode(this.id); }
        //methods
		, "CheckFile": function () { this.Atl.CheckFile(this.id); }
		, "Post": function (){this.Atl.Post(this.id);}
		, "Stop": function () { this.Atl.Stop(this.id); }
		, "ClearFields": function () { this.Atl.ClearFields(this.id); }
		, "AddField": function (fn, fv) { this.Atl.AddField(this.id, fn, fv); }
		, "Dispose": function () { this.Atl.Remove(this.id); }
        //property
		, "Atl": _this.ffPart
		, "id": "-1"//由控件分配的标识符，全局唯一。
    };
    //是Firefox或Chrome浏览器
    if (this.firefox || this.chrome) { this.ATL = this.ATLFF; }
    this.ATL.Create();

    //重置附加信息
    this.ResetFields = function ()
    {
        //添加附加信息
        this.ATL.ClearFields(); //清空附加字段
        //		$.each(upRef.Fields, function(name, val)
        //		{
        //			upRef.ATL.AddField(name, val);
        //		});
        for (var field in this.Fields)
        {
            this.ATL.AddField(field, this.Fields[field]);
        }
        this.ATL.AddField("fid", this.fid);
        this.ATL.AddField("uid", this.uid);
        this.ATL.AddField("pathSvr", this.pathSvr);//add(2015-03-19):
    };

    //准备
    this.Ready = function ()
    {
        //this.pButton.style.display = "none";
        //this.pMsg.text("正在上传队列中等待...");
        this.State = HttpUploaderState.Ready;
    };

    this.Post = function ()
    {
        this.Upload();
    };

    //上传
    this.Upload = function ()
    {
        this.pButton.show();
        this.pButton.text("停止");
        this.pMsg.innerText = "正在连接服务器....";
        this.State = HttpUploaderState.Posting;

        this.ATL.Post();
    };

    //检查文件
    this.CheckFile = function ()
    {
        this.State = HttpUploaderState.MD5Working;
        this.ATL.CheckFile();
    };

    //手动停止，一般在StopAll中调用
    this.StopManual = function ()
    {
        if (HttpUploaderState.Posting == this.State)
        {
            this.pButton.text("续传");
            this.pMsg.text("传输已停止....");
            this.ATL.Stop();
            this.State = HttpUploaderState.Stop;
        }
    };

    //停止传输，一般在用户点击停止按钮时调用
    this.Stop = function ()
    {
        if (HttpUploaderState.Ready == this.State)
        {
            this.pButton.text("续传");
            this.pMsg.text("传输已停止....");
            this.State = HttpUploaderState.Stop;
            return;
        }

        this.pButton.text("续传");
        this.pBtnCancel.show();
        this.pMsg.text("传输已停止....");
        this.ATL.Stop();
        this.State = HttpUploaderState.Stop;
    };

    //取消，一般在上传过程中执行
    this.Cancel = function ()
    {
        this.Stop();
        this.div.remove();
        this.Manager.fileCur = null;//
    };

    //释放内存
    this.Dispose = function ()
    {
        this.ATL.Dispose();
    };

    //快速上传完成，
    this.QuickComplete = function ()
    {
        this.pButton.hide();
        this.pBtnCancel.hide();
        this.pProcess.css("width", "100%");
        this.pPercent.text("100%");
        this.pMsg.text("服务器存在相同文件，快速上传成功。");
        this.State = HttpUploaderState.Complete;
        this.Dispose();
    };
}

//上传错误
function HttpUploader_Error(obj)
{
    obj.pMsg.text(HttpUploaderErrorCode[obj.ATL.GetErrorCode()]);
    //文件大小超过限制,文件大小为0
    if (10 == obj.ATL.GetErrorCode()
		|| 201 == obj.ATL.GetErrorCode())
    {
        obj.pButton.text("取消");
    }
    else
    {
        obj.pButton.text("续传");
    }
    obj.State = HttpUploaderState.Error;
}

//上传完成，向服务器传送信息
function HttpUploader_Complete(obj)
{
    obj.pButton.hide();
    obj.pBtnCancel.hide();
    obj.pProcess.css("width", "100%");
    obj.pPercent.text("100%");
    obj.pMsg.text("上传完成");
    obj.pProcess.attr("title", "上传完成");
    obj.State = HttpUploaderState.Complete;
}

//传输进度。频率为每秒调用一次
function HttpUploader_Process(obj, speed, postedLength, percent, times)
{
    obj.pPercent.text(percent);
    obj.pProcess.css("width", percent);
    var str = "已上传:" + postedLength + " 速度:" + speed + "/S 剩余时间:" + times;
    obj.pMsg.text(str);
    obj.pProcess.attr("title", str);
}

//服务器连接成功
function HttpUploader_Connected(obj)
{
    obj.pMsg.text("服务器连接成功");
    obj.pProcess.attr("title", "服务器连接成功");
}

//MD5计算中
function HttpUploader_MD5_Working(obj)
{
    var msg = "正在扫描本地文件，已完成：" + obj.ATL.GetMd5Percent() + "%";
    obj.pMsg.text(msg);
    obj.pProcess.attr("title", msg);
}

//MD5计算完毕
function HttpUploader_MD5_Complete(obj)
{
}

/*
	HUS_Leisure			=0	//空闲
	,HUS_Uploading		=1	//上传中 
	,HUS_Stop  			=2	//停止 
	,HUS_UploadComplete	=3	//传输完毕 
	,HUS_Error 			=4	//错误 
	,HUS_Connected 		=5	//服务器已连接
	,HUS_Md5Working		=6	//MD5计算中
	,HUS_Md5Complete	=7	//MD5计算完毕
*/
function HttpUploader_StateChanged(obj, state)
{
    switch (state)
    {
        case 0:
            break;
        case 1:
            break;
        case 2:
            break;
        case 3:
            HttpUploader_Complete(obj);
            break;
        case 4:
            HttpUploader_Error(obj);
            break;
        case 5:
            HttpUploader_Connected(obj);
            break;
        case 6:
            HttpUploader_MD5_Working(obj);
            break;
        case 7:
            HttpUploader_MD5_Complete(obj);
            break;
    }
}