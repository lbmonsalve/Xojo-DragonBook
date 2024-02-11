#tag Class
Protected Class Node
	#tag Method, Flags = &h0
		Sub Constructor()
		  lexline= Lexer.line
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Emit(s As String)
		  OutPrintLn Chr(9)+ s
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Emitlabel(i As Integer)
		  OutPrint "L"+ Str(i)+ ":"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Error(s As String)
		  Dim exc As New RuntimeException
		  exc.Message= "near line "+ Str(lexline)+ ": "+ s
		  
		  Raise exc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Newlabel() As Integer
		  Labels= Labels+ 1
		  
		  Return Labels
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Shared Labels As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private lexline As Integer
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
