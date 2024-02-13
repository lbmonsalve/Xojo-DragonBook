#tag Class
Protected Class Set
Inherits DragonBook.Inter.Stmt
	#tag Method, Flags = &h0
		Function Check(p1 As DragonBook.Symbols.Type, p2 As DragonBook.Symbols.Type) As DragonBook.Symbols.Type
		  If DragonBook.Symbols.Type.IsNumeric(p1) And DragonBook.Symbols.Type.IsNumeric(p2) Then Return p2
		  If p1= DragonBook.Symbols.Type.Bool And p2= DragonBook.Symbols.Type.Bool Then Return p2
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor(i As Id, x As Expr)
		  Id= i
		  Expr= x
		  If Check(i.type, x.type) Is Nil Then Error("type error")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Gen(out As Writeable, b As Integer, a As Integer)
		  #pragma Unused b
		  #pragma Unused a
		  Emit out, Id.ToString+ " = "+ Expr.Gen(out).ToString
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Expr As Expr
	#tag EndProperty

	#tag Property, Flags = &h0
		Id As Id
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
