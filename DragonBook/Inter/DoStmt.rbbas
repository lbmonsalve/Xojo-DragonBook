#tag Class
Protected Class DoStmt
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h1000
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(s As DragonBook.Inter.Stmt, x As DragonBook.Inter.Expr)
		  Init s, x
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(out As Writeable, b As Integer, a As Integer)
		  after= a // save label a
		  Dim label As Integer= Newlabel // label for stmt
		  Stmt.Gen out, b, label
		  Emitlabel out, label
		  Expr.Jumping out, b, 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init(s As DragonBook.Inter.Stmt, x As DragonBook.Inter.Expr)
		  Stmt= s
		  Expr= x
		  If Expr.type<> DragonBook.Symbols.Type.Bool Then Expr.Error("boolean required in if")
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
