#tag Class
Protected Class WhileStmt
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h1000
		Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(x As Expr, s As Stmt)
		  Init x, s
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(out As Writeable, b As Integer, a As Integer)
		  after= a // save label a
		  Expr.Jumping out, 0, a
		  Dim label As Integer= Newlabel // label for stmt
		  Emitlabel out, label
		  Stmt.Gen out, label, b
		  Emit out, "goto L"+ Str(b)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Init(x As Expr, s As Stmt)
		  Expr= x
		  Stmt= s
		  If Expr.type<> DragonBook.Symbols.Type.Bool Then Expr.Error("boolean required in if")
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Expr As Expr
	#tag EndProperty

	#tag Property, Flags = &h0
		Stmt As Stmt
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
