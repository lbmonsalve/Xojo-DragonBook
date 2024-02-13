#tag Class
Protected Class BreakStmt
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h1000
		Sub Constructor()
		  If Stmt.Enclosing= Stmt.Null Then Error "unenclosed break"
		  Stmt= Stmt.Enclosing
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(out As Writeable, b As Integer, a As Integer)
		  Emit out, "goto L"+ Str(Stmt.after)
		End Sub
	#tag EndMethod


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
