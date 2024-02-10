#tag Class
Protected Class Seq
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h1000
		Sub Constructor(s1 As DragonBook.Inter.Stmt, s2 As DragonBook.Inter.Stmt)
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  Stmt1= s1
		  Stmt2= s2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(b As Integer, a As Integer)
		  If Stmt1= DragonBook.Inter.Stmt.Null Then
		    Stmt2.Gen(b, a)
		  ElseIf Stmt2= DragonBook.Inter.Stmt.Null Then
		    Stmt1.Gen(b, a)
		  Else
		    Dim label As Integer= Newlabel
		    Stmt1.Gen(b, label)
		    Emitlabel label
		    Stmt1.Gen(label, a)
		  End If
		End Sub
	#tag EndMethod


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
