#tag Class
Protected Class Logical
Inherits DragonBook.Inter.Expr
	#tag Method, Flags = &h0
		Function Check(p1 As DragonBook.Symbols.Type, p2 As DragonBook.Symbols.Type) As DragonBook.Symbols.Type
		  If p1= DragonBook.Symbols.Type.Bool And p2= DragonBook.Symbols.Type.Bool Then _
		  Return DragonBook.Symbols.Type.Bool
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(tok As DragonBook.Lexical.Token, x1 As DragonBook.Inter.Expr, x2 As DragonBook.Inter.Expr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(tok As DragonBook.Lexical.Token, p As DragonBook.Symbols.Type) -- From Expr
		  // Constructor() -- From Node
		  Super.Constructor tok, Nil
		  Expr1= x1
		  Expr2= x2
		  type= Check(Expr1.type, Expr2.type)
		  If type Is Nil Then Error("type error")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Gen() As DragonBook.Inter.Expr
		  Dim f As Integer= Newlabel
		  Dim a As Integer= Newlabel
		  Dim temp As New DragonBook.Inter.Temp(type)
		  Jumping 0, f
		  Emit temp.ToString+ " = true"
		  Emit "goto L"+ Str(a)
		  Emitlabel f
		  Emit temp.ToString+ " = false"
		  Emitlabel a
		  
		  Return temp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return Expr1.ToString+" "+Op.ToString+" "+Expr2.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Expr1 As DragonBook.Inter.Expr
	#tag EndProperty

	#tag Property, Flags = &h0
		Expr2 As DragonBook.Inter.Expr
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
