#tag Class
Protected Class Env
	#tag Method, Flags = &h0
		Sub Constructor(prev As Env)
		  table= New Dictionary
		  Self.prev= prev
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get(w As DragonBook.Lexical.Token) As DragonBook.Inter.Id
		  Dim env As DragonBook.Symbols.Env= Self
		  Do
		    Dim found As Variant= env.Table.Lookup(w, Nil)
		    If Not (found Is Nil) Then Return DragonBook.Inter.Id(found)
		    env= env.Prev
		  Loop Until env Is Nil
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Put(w As DragonBook.Lexical.Token, i As DragonBook.Inter.Id)
		  table.Value(w)= i
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Prev As Env
	#tag EndProperty

	#tag Property, Flags = &h0
		Table As Dictionary
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
