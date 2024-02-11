#tag Class
Protected Class ElseStmt
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h1000
		Sub Constructor(x As DragonBook.Inter.Expr, s1 As DragonBook.Inter.Stmt, s2 As DragonBook.Inter.Stmt)
		  Expr= x
		  Stmt1= s1
		  Stmt2= s2
		  
		  If Expr.type<> DragonBook.Symbols.Type.Bool Then Expr.Error("boolean required in if")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(b As Integer, a As Integer)
		  Dim label1 As Integer= Newlabel // label2 for stmt1
		  Dim label2 As Integer= Newlabel // label2 for stmt2
		  
		  Expr.Jumping 0, label2 // fall through to stmt1 on true
		  Emitlabel label1
		  Stmt1.Gen label1, a
		  Emit "goto L"+ Str(a)
		  Emitlabel label2
		  Stmt2.Gen label2, a
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Expr As DragonBook.Inter.Expr
	#tag EndProperty

	#tag Property, Flags = &h0
		Stmt1 As DragonBook.Inter.Stmt
	#tag EndProperty

	#tag Property, Flags = &h0
		Stmt2 As DragonBook.Inter.Stmt
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
