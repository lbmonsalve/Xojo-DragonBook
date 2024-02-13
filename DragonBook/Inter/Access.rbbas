#tag Class
Protected Class Access
Inherits DragonBook.Inter.Op
	#tag Method, Flags = &h1000
		Sub Constructor(a As DragonBook.Inter.Id, i As DragonBook.Inter.Expr, p As DragonBook.Symbols.Type)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(tok As DragonBook.Lexical.Token, p As DragonBook.Symbols.Type) -- From Expr
		  // Constructor() -- From Node
		  Super.Constructor New DragonBook.Lexical.Word("[]", Tag.INDEX.ToInteger), p
		  IdArray= a
		  Index= i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Gen(out As Writeable) As DragonBook.Inter.Expr
		  Return New Access(IdArray, Index.Reduce(out), type)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Jumping(out As Writeable, t As Integer, f As Integer)
		  Emitjumps out, Reduce(out).ToString, t, f
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return IdArray.ToString+ "[ "+ Index.ToString+ " ]"
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		IdArray As Id
	#tag EndProperty

	#tag Property, Flags = &h0
		Index As Expr
	#tag EndProperty


	#tag ViewBehavior
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
