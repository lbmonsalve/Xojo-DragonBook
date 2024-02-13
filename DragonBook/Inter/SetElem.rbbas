#tag Class
Protected Class SetElem
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h0
		Function Check(p1 As DragonBook.Symbols.Type, p2 As DragonBook.Symbols.Type) As DragonBook.Symbols.Type
		  If p1 IsA DragonBook.Symbols.Arr Or p2 IsA DragonBook.Symbols.Arr Then Return Nil
		  If p1= p2 Then Return p2
		  If DragonBook.Symbols.Type.IsNumeric(p1) And DragonBook.Symbols.Type.IsNumeric(p2) Then Return p2
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(x As Access, y As Expr)
		  IdArray= x.IdArray
		  Index= x.Index
		  Expr= y
		  
		  If Check(x.type, y.type) Is Nil Then Error("type error")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(out As Writeable, b As Integer, a As Integer)
		  #pragma Unused b
		  #pragma Unused a
		  Emit out, IdArray.ToString+ " [ "+ Index.Reduce(out).ToString+ " ] = "+ Expr.Reduce(out).ToString
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Expr As Expr
	#tag EndProperty

	#tag Property, Flags = &h0
		IdArray As Id
	#tag EndProperty

	#tag Property, Flags = &h0
		Index As Expr
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
