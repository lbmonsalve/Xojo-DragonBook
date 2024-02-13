#tag Class
Protected Class LexicalTests
Inherits TestGroup
	#tag Method, Flags = &h0
		Sub LexerTest()
		  Dim tokens() As DragonBook.Lexical.Token
		  tokens.Append New DragonBook.Lexical.Token(Asc("{"))
		  tokens.Append DragonBook.Symbols.Type.Int
		  tokens.Append New DragonBook.Lexical.Word("i", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append DragonBook.Symbols.Type.Int
		  tokens.Append New DragonBook.Lexical.Word("j", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append DragonBook.Symbols.Type.Float
		  tokens.Append New DragonBook.Lexical.Word("v", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append DragonBook.Symbols.Type.Float
		  tokens.Append New DragonBook.Lexical.Token(Asc("["))
		  tokens.Append New DragonBook.Lexical.Num(100)
		  tokens.Append New DragonBook.Lexical.Token(Asc("]"))
		  tokens.Append New DragonBook.Lexical.Word("a", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Word("char", DragonBook.Tag.WHILE_.ToInteger)
		  tokens.Append New DragonBook.Lexical.Word("s", DragonBook.Tag.WHILE_.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Word("while", DragonBook.Tag.WHILE_.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("("))
		  tokens.Append DragonBook.Lexical.Word.True_
		  tokens.Append New DragonBook.Lexical.Token(Asc(")"))
		  tokens.Append New DragonBook.Lexical.Token(Asc("{"))
		  tokens.Append New DragonBook.Lexical.Word("do", DragonBook.Tag.DO_.ToInteger)
		  tokens.Append New DragonBook.Lexical.Word("i", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("="))
		  tokens.Append New DragonBook.Lexical.Word("i", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("+"))
		  tokens.Append New DragonBook.Lexical.Num(1)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Word("while", DragonBook.Tag.WHILE_.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("("))
		  tokens.Append New DragonBook.Lexical.Word("a", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("["))
		  tokens.Append New DragonBook.Lexical.Word("i", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("]"))
		  tokens.Append New DragonBook.Lexical.Token(Asc("<"))
		  tokens.Append New DragonBook.Lexical.Word("v", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(")"))
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Word("do", DragonBook.Tag.DO_.ToInteger)
		  tokens.Append New DragonBook.Lexical.Word("j", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("="))
		  tokens.Append New DragonBook.Lexical.Word("j", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("-"))
		  tokens.Append New DragonBook.Lexical.Num(1)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Word("while", DragonBook.Tag.WHILE_.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("("))
		  tokens.Append New DragonBook.Lexical.Word("a", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("["))
		  tokens.Append New DragonBook.Lexical.Word("j", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("]"))
		  tokens.Append New DragonBook.Lexical.Token(Asc(">"))
		  tokens.Append New DragonBook.Lexical.Word("v", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(")"))
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Word("if", DragonBook.Tag.IF_.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("("))
		  tokens.Append New DragonBook.Lexical.Word("i", DragonBook.Tag.ID.ToInteger)
		  tokens.Append DragonBook.Lexical.Word.Ge
		  tokens.Append New DragonBook.Lexical.Word("j", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(")"))
		  tokens.Append New DragonBook.Lexical.Word("break", DragonBook.Tag.BREAK_.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append DragonBook.Symbols.Type.Int
		  tokens.Append New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("="))
		  tokens.Append New DragonBook.Lexical.Word("a", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("["))
		  tokens.Append New DragonBook.Lexical.Word("i", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("]"))
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Word("a", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("["))
		  tokens.Append New DragonBook.Lexical.Word("i", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("]"))
		  tokens.Append New DragonBook.Lexical.Token(Asc("="))
		  tokens.Append New DragonBook.Lexical.Word("a", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("["))
		  tokens.Append New DragonBook.Lexical.Word("j", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("]"))
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Word("a", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("["))
		  tokens.Append New DragonBook.Lexical.Word("j", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("]"))
		  tokens.Append New DragonBook.Lexical.Token(Asc("="))
		  tokens.Append New DragonBook.Lexical.Word("x", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Word("s", DragonBook.Tag.ID.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc("="))
		  tokens.Append New DragonBook.Lexical.Char("hello", DragonBook.Tag.CHAR.ToInteger)
		  tokens.Append New DragonBook.Lexical.Token(Asc(";"))
		  tokens.Append New DragonBook.Lexical.Token(Asc("}"))
		  tokens.Append New DragonBook.Lexical.Token(Asc("}"))
		  
		  Dim lexer As New DragonBook.Lexer(kSource)
		  
		  For Each token As DragonBook.Lexical.Token In tokens
		    Dim current As String= lexer.Scan.ToString
		    Assert.AreEqual token.ToString, current, "AreEqual """+ current+ """"
		  Next
		End Sub
	#tag EndMethod


	#tag Constant, Name = kSource, Type = String, Dynamic = False, Default = \"        {\r          int i; int j; float v; float[100] a;char s;\r          while (true) {\r            do i \x3D i + 1; while(a[i] < v);\r            do j \x3D j - 1; while(a[j] > v);\r            if (i >\x3D j) break;\r            int x \x3D a[i];\r            a[i] \x3D a[j];\r            a[j] \x3D x; s\x3D \"hello\";\r          }\r        }", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FailedTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludeGroup"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRunning"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="TestGroup"
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
			Name="NotImplementedCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PassedTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RunTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SkippedTestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StopTestOnFail"
			Group="Behavior"
			Type="Boolean"
			InheritedFrom="TestGroup"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InheritedFrom="Object"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TestCount"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="TestGroup"
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
