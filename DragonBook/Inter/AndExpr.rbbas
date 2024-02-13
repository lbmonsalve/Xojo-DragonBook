#tag Class
Protected Class AndExpr
Inherits DragonBook.Inter.Logical
	#tag Method, Flags = &h0
		Sub Jumping(out As Writeable, t As Integer, f As Integer)
		  Dim label As Integer
		  If f<> 0 Then label= f Else label= Newlabel
		  Expr1.Jumping out, 0, label
		  Expr2.Jumping out, t, f
		  If f= 0 Then Emitlabel(out, label)
		End Sub
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
