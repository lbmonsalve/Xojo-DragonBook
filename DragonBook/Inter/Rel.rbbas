#tag Class
Protected Class Rel
Inherits DragonBook.Inter.Logical
	#tag Method, Flags = &h0
		Function Check(p1 As DragonBook.Symbols.Type, p2 As DragonBook.Symbols.Type) As DragonBook.Symbols.Type
		  If p1 IsA DragonBook.Symbols.Arr Or p2 IsA DragonBook.Symbols.Arr Then Return Nil
		  If p1= p2 Then Return DragonBook.Symbols.Type.Bool
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Jumping(out As Writeable, t As Integer, f As Integer)
		  Dim a As Expr= Expr1.Reduce(out)
		  Dim b As Expr= Expr2.Reduce(out)
		  Emitjumps out, a.ToString+ " "+ Op.ToString+ " "+ b.ToString, t, f
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
