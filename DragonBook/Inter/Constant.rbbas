#tag Class
Protected Class Constant
Inherits DragonBook.Inter.Expr
	#tag Method, Flags = &h1000
		Sub Constructor(i As Integer)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(tok As DragonBook.Lexical.Token, p As DragonBook.Symbols.Type) -- From Expr
		  // Constructor() -- From Node
		  Super.Constructor New DragonBook.Lexical.Num(i), DragonBook.Symbols.Type.Bool
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Jumping(t As Integer, f As Integer)
		  If Self Is True_ And t<> 0 Then
		    Emit "goto L"+ Str(t)
		  ElseIf Self Is False_ And f<> 0 Then
		    Emit "goto L"+ Str(f)
		  End If
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Constant
			  If value Is Nil Then value= New Constant(DragonBook.Lexical.Word.False_, DragonBook.Symbols.Type.Bool)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared False_ As Constant
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Static value As Constant
			  If value Is Nil Then value= New Constant(DragonBook.Lexical.Word.True_, DragonBook.Symbols.Type.Bool)
			  
			  Return value
			End Get
		#tag EndGetter
		Shared True_ As Constant
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
