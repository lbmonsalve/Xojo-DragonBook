#tag Class
Protected Class Lexer
	#tag Method, Flags = &h0
		Sub Constructor(source As Readable)
		  Self.source= source
		  Init
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(source As String)
		  'Dim mb As MemoryBlock= source
		  'Constructor New BinaryStream(mb)
		  buffer= source
		  Init
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLine() As Integer
		  Return line
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetTokens() As Token()
		  Dim tokens() As Token
		  
		  While True
		    Dim token As Token= Scan
		    If token.GetTag= -1 Then Exit
		    
		    tokens.Append token
		  Wend
		  
		  Return tokens
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Init()
		  peek= " "
		  
		  words= New Dictionary
		  
		  Reserve(New Word("if", Tag.IF_.ToInteger))
		  Reserve(New Word("else", Tag.ELSE_.ToInteger))
		  Reserve(New Word("while", Tag.WHILE_.ToInteger))
		  Reserve(New Word("do", Tag.DO_.ToInteger))
		  Reserve(New Word("break", Tag.BREAK_.ToInteger))
		  Reserve(Word.True_)
		  Reserve(Word.False_)
		  Reserve(DragonBook.Symbols.Type.Int)
		  Reserve(DragonBook.Symbols.Type.Float)
		  Reserve(DragonBook.Symbols.Type.Char)
		  Reserve(DragonBook.Symbols.Type.Bool)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadCh()
		  'peek= source.Read(1)
		  If buffer.Len= 0 And Not (source Is Nil) Then
		    buffer= DefineEncoding(source.Read(1024), Encodings.UTF8)
		    bufferPos= 0
		  End If
		  
		  bufferPos= bufferPos+ 1
		  peek= buffer.Mid(bufferPos, 1)
		  If bufferPos= buffer.Len Then buffer= ""
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ReadCh(c As String) As Boolean
		  ReadCh
		  If peek<> c Then Return False
		  peek= " "
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Reserve(w As Word)
		  words.Value(w.GetLexeme)= w
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Scan() As Token
		  Const TAB= 9
		  #if TargetConsole
		    Const EOL= 10 // LF
		  #else
		    Const EOL= 13 // CR
		  #endif
		  
		  Do
		    If peek= " " Or peek.Codepoint= TAB Then
		    ElseIf peek.Codepoint= EOL Then
		      line= line+ 1
		    Else
		      Exit
		    End If
		    ReadCh
		  Loop
		  
		  Select Case peek
		  Case "&"
		    If ReadCh("&") Then Return Word.And_
		    Return New Token(Asc("&"))
		  Case "|"
		    If ReadCh("|") Then Return Word.Or_
		    Return New Token(Asc("|"))
		  Case "="
		    If ReadCh("=") Then Return Word.Eq
		    Return New Token(Asc("="))
		  Case "!"
		    If ReadCh("=") Then Return Word.Ne
		    Return New Token(Asc("!"))
		  Case "<"
		    If ReadCh("=") Then Return Word.Le
		    Return New Token(Asc("<"))
		  Case ">"
		    If ReadCh("=") Then Return Word.Ge
		    Return New Token(Asc(">"))
		  Case """"
		    ReadCh
		    Dim b() As String
		    Do
		      b.Append peek
		      ReadCh
		    Loop Until peek= """"
		    peek= " "
		    Return New Char(Join(b, ""), Tag.CHAR.ToInteger)
		  End Select
		  
		  If IsNumeric(peek) Then
		    Dim v As Integer
		    Do
		      v= 10* v+ Val(peek)
		      ReadCh
		    Loop Until Not IsNumeric(peek)
		    
		    If peek<> "." Then Return New Num(v)
		    
		    Dim x As Double= v
		    Dim d As Double= 10
		    While True
		      ReadCh
		      If Not IsNumeric(peek) Then Exit
		      x= x+ (Val(peek)/ d)
		      d= d* 10
		    Wend
		    
		    Return New Real(x)
		  End If
		  
		  If peek.IsLetter Then
		    Dim b() As String
		    Do
		      b.Append peek
		      ReadCh
		    Loop Until Not peek.IsLetterOrDigit
		    
		    Dim s As String= Join(b, "")
		    If words.HasKey(s) Then
		      Dim ret As Word= Word(words.Value(s))
		      Return ret
		    End If
		    
		    Dim w As New Word(s, Tag.ID.ToInteger)
		    words.Value(s)= w
		    Return w
		  End If
		  
		  Dim tok As New Token(peek.Codepoint)
		  peek= " "
		  Return tok
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private buffer As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private bufferPos As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private line As Integer = 1
	#tag EndProperty

	#tag Property, Flags = &h21
		Private peek As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private source As Readable
	#tag EndProperty

	#tag Property, Flags = &h21
		Private words As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
