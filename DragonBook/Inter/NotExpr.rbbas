#tag Class
Protected Class NotExpr
Inherits DragonBook.Inter.Logical
	#tag Method, Flags = &h1000
		Sub Constructor(tok As DragonBook.Lexical.Token, x2 As Expr)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(tok As DragonBook.Lexical.Token, x1 As DragonBook.Inter.Expr, x2 As DragonBook.Inter.Expr) -- From Logical
		  // Constructor(tok As DragonBook.Lexical.Token, p As DragonBook.Symbols.Type) -- From Expr
		  // Constructor() -- From Node
		  Super.Constructor tok, x2, x2
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Jumping(out As Writeable, t As Integer, f As Integer)
		  Expr2.Jumping out, f, t
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return Op.ToString+ " "+ expr2.ToString
		End Function
	#tag EndMethod


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
