#tag Class
Protected Class IfStmt
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h1000
		Sub Constructor(x As DragonBook.Inter.Expr, s As DragonBook.Inter.Stmt)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  Expr= x
		  Stmt= s
		  If Expr.type<> DragonBook.Symbols.Type.Bool Then Expr.Error("boolean required in if")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(b As Integer, a As Integer)
		  Dim label As Integer= Newlabel // label for the code for stmt
		  Expr.Jumping 0, a     // fall through on true, goto a on false
		  Emitlabel label
		  Stmt.Gen label, a
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Expr As DragonBook.Inter.Expr
	#tag EndProperty

	#tag Property, Flags = &h0
		Stmt As DragonBook.Inter.Stmt
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="after"
			Group="Behavior"
			Type="Integer"
			InheritedFrom="DragonBook.Inter.Stmt"
		#tag EndViewProperty
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
