#tag Class
Protected Class ElseStmt
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h1000
		Sub Constructor(x As Expr, s1 As Stmt, s2 As Stmt)
		  Expr= x
		  Stmt1= s1
		  Stmt2= s2
		  
		  If Expr.type<> DragonBook.Symbols.Type.Bool Then Expr.Error("boolean required in if")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(out As Writeable, b As Integer, a As Integer)
		  Dim label1 As Integer= Newlabel // label2 for stmt1
		  Dim label2 As Integer= Newlabel // label2 for stmt2
		  
		  Expr.Jumping out, 0, label2 // fall through to stmt1 on true
		  Emitlabel out, label1
		  Stmt1.Gen out, label1, a
		  Emit out, "goto L"+ Str(a)
		  Emitlabel out, label2
		  Stmt2.Gen out, label2, a
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Expr As Expr
	#tag EndProperty

	#tag Property, Flags = &h0
		Stmt1 As Stmt
	#tag EndProperty

	#tag Property, Flags = &h0
		Stmt2 As Stmt
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
