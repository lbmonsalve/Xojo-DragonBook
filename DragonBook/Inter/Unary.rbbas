#tag Class
Protected Class Unary
Inherits DragonBook.Inter.Op
	#tag Method, Flags = &h1000
		Sub Constructor(tok As DragonBook.Lexical.Token, x As DragonBook.Inter.Expr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(tok As DragonBook.Lexical.Token, p As DragonBook.Symbols.Type) -- From Expr
		  // Constructor() -- From Node
		  Super.Constructor tok, Nil
		  Expr= x
		  type= DragonBook.Symbols.Type.Max(DragonBook.Symbols.Type.Int, x.type)
		  If type Is Nil Then Error("type error")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Gen() As DragonBook.Inter.Expr
		  Return New DragonBook.Inter.Unary(Op, Expr.Reduce)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return Op.ToString+ " "+ Expr.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Expr As DragonBook.Inter.Expr
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
