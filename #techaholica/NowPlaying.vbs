    On Error Resume Next
	Set xmlDoc = CreateObject("Msxml2.XMLHTTP.6.0")
	Dim cur_playing
	Dim base64pw
	base64pw = "OnBhc3N3b3Jk" '":password" in base64
	
	Do
		xmlDoc.Open "GET","http://localhost:8080/requests/status.xml", false, "", "password"
		xmlDoc.setRequestHeader "Authorization", "Basic "& base64pw
		xmlDoc.send()
		
		cur_playing = Null
		cur_playing = xmlDoc.responseXML.selectSingleNode("root/information/category/info[@name = 'now_playing']").text
		
		If IsEmpty(cur_playing) Or IsNull(cur_playing) Then
			cur_playing = xmlDoc.responseXML.selectSingleNode("root/information/category/info[@name = 'artist']").text _
			& " - " & _
			xmlDoc.responseXML.selectSingleNode("root/information/category/info[@name = 'title']").text
		End If
		
		Set objFSO=CreateObject("Scripting.FileSystemObject")
		Set objFile = objFSO.CreateTextFile("C:\Users\techaholica\AppData\Roaming\mIRC\TechaMud\#techaholica\nowplaying.txt",2)  'txt file must be ANSI
		objFile.Write cur_playing & vbCrLf
		objFile.Close
		
		WScript.Sleep 5000
           
    Loop