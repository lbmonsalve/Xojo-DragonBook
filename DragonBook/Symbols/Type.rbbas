#tag Class
Protected Class Type
Inherits DragonBook.Lexical.Word
	#tag Method, Flags = &h1000
		Sub Constructor(s As String, tag As Integer, w As Integer)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(s As String, tag As Integer) -- From Word
		  // Constructor(t As Integer) -- From Token
		  Super.Constructor(s, tag)
		  width= w
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetWidth() As Integer
		  Return width
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function IsNumeric(p As Type) As Boolean
		  Return p= Type.Char Or p= Type.Int Or p= Type.Float
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Max(left As Type, right As Type) As Type
		  If Not IsNumeric(left) Or Not IsNumeric(right) Then Return Nil
		  If (left= Type.Float Or right= Type.Float) Then Return Type.Float
		  If (left= Type.Int Or right= Type.Int) Then Return Type.Int
		  
		  Return Type.Char
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Type
			  If value Is Nil Then value= New Type("bool", DragonBook.Lexical.Tag.BASIC.ToInteger, 1)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Bool As Type
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Type
			  If value Is Nil Then value= New Type("char", DragonBook.Lexical.Tag.BASIC.ToInteger, 1)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Char As Type
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Type
			  If value Is Nil Then value= New Type("float", DragonBook.Lexical.Tag.BASIC.ToInteger, 8)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Float As Type
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Type
			  If value Is Nil Then value= New Type("int", DragonBook.Lexical.Tag.BASIC.ToInteger, 4)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Int As Type
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private width As Integer
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
