require 'win32ole'
#COMオブジェクトを作成
xl = WIN32OLE.new('Excel.Application')
#可視状態にする
xl.Visible = true
password = ''   #passwordの設定を行う。
begin
  #ここに処理を書きます
  #ファイルを開く
  #book = xl.Workbooks.Open("C:/Users/User05/secret.xlsx")
  book = xl.Workbooks.Open({ 'filename' => 'C:/Users/User05/secret.xlsx',
            'password' => password, 'WriteResPassword' => password })
rescue
  password = 'cs'
  retry
ensure
  xl.Quit
end
