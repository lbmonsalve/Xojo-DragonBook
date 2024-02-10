#tag Class
Protected Class Stmt
Inherits DragonBook.Inter.Node
	#tag Method, Flags = &h0
		Sub Gen(b As Integer, a As Integer)
		  // called with labels begin and after
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		after As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mEnclosing Is Nil Then Return Null
			  
			  Return mEnclosing
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mEnclosing= value
			End Set
		#tag EndSetter
		Shared Enclosing As Stmt
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Shared mEnclosing As Stmt
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return New Stmt
			End Get
		#tag EndGetter
		Shared Null As Stmt
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="after"
			Group="Behavior"
			Type="Integer"
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
