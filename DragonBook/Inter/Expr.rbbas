#tag Class
Protected Class Expr
Inherits DragonBook.Inter.Node
	#tag Method, Flags = &h1000
		Sub Constructor(tok As DragonBook.Lexical.Token, p As DragonBook.Symbols.Type)
		  op= tok
		  type= p
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Emitjumps(out As Writeable, test As String, t As Integer, f As Integer)
		  If t<> 0 And f<> 0 Then
		    Emit out, "if "+ test+ " goto L"+ Str(t)
		    Emit out, "goto L"+ Str(f)
		  ElseIf t<> 0 Then
		    Emit out, "if "+ test+ " goto L"+ Str(t)
		  ElseIf f<> 0 Then
		    Emit out, "iffalse "+ test+ " goto L"+ Str(f)
		  End If // nothing since both t and f fall through
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Gen(out As Writeable) As DragonBook.Inter.Expr
		  #pragma Unused out
		  Return Self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Jumping(out As Writeable, t As Integer, f As Integer)
		  Emitjumps out, ToString, t, f
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Reduce(out As Writeable) As DragonBook.Inter.Expr
		  #pragma Unused out
		  Return Self
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return op.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		op As DragonBook.Lexical.Token
	#tag EndProperty

	#tag Property, Flags = &h0
		type As DragonBook.Symbols.Type
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
