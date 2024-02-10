#tag Class
Protected Class Arr
Inherits DragonBook.Symbols.Type
	#tag Method, Flags = &h1000
		Sub Constructor(size As Integer, p As DragonBook.Symbols.Type)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(s As String, tag As Integer, w As Integer) -- From Type
		  // Constructor(s As String, tag As Integer) -- From Word
		  // Constructor(t As Integer) -- From Token
		  Super.Constructor("[]", DragonBook.Lexical.Tag.INDEX.ToInteger, size* p.GetWidth)
		  Self.Size= size
		  OfType= p
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return "["+ Str(Size)+ "] "+ OfType.ToString
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		OfType As DragonBook.Symbols.Type
	#tag EndProperty

	#tag Property, Flags = &h0
		Size As Integer = 1
	#tag EndProperty


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
			Name="Size"
			Group="Behavior"
			InitialValue="1"
			Type="Integer"
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
