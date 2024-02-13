#tag Class
Protected Class Seq
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h1000
		Sub Constructor(s1 As Stmt, s2 As Stmt)
		  Stmt1= s1
		  Stmt2= s2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(out As Writeable, b As Integer, a As Integer)
		  If Stmt1= Stmt.Null Then
		    Stmt2.Gen out, b, a
		  ElseIf Stmt2= Stmt.Null Then
		    Stmt1.Gen out, b, a
		  Else
		    Dim label As Integer= Newlabel
		    Stmt1.Gen out, b, label
		    Emitlabel out, label
		    Stmt2.Gen out, label, a
		  End If
		End Sub
	#tag EndMethod


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
