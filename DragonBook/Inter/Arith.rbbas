#tag Class
Protected Class Arith
Inherits DragonBook.Inter.Op
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
		  type= DragonBook.Symbols.Type.Max(Expr1.type, Expr2.type)
		  If type Is Nil Then Error("type error")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Gen(out As Writeable) As DragonBook.Inter.Expr
		  Return New Arith(Op, Expr1.Reduce(out), Expr2.Reduce(out))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return Expr1.ToString+" "+Op.ToString+" "+Expr2.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Expr1 As Expr
	#tag EndProperty

	#tag Property, Flags = &h0
		Expr2 As Expr
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
