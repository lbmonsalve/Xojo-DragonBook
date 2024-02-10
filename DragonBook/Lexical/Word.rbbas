#tag Class
Protected Class Word
Inherits DragonBook.Lexical.Token
	#tag Method, Flags = &h1000
		Sub Constructor(s As String, tag As Integer)
		  // Calling the overridden superclass constructor.
		  Super.Constructor(tag)
		  lexeme= s
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetLexeme() As String
		  Return lexeme
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToString() As String
		  Return lexeme
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word("&&", Tag.AND_.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared And_ As Word
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word("==", Tag.EQ.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Eq As Word
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word("false", Tag.FALSE_.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared False_ As Word
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word(">=", Tag.GE.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Ge As Word
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word("<=", Tag.LE.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Le As Word
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private lexeme As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word("minus", Tag.MINUS.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Minus As Word
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word("!=", Tag.NE.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Ne As Word
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word("||", Tag.OR_.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Or_ As Word
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word("t", Tag.TEMP.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared Temp As Word
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Word
			  If value Is Nil Then value= New Word("true", Tag.TRUE_.ToInteger)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared True_ As Word
	#tag EndComputedProperty


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
