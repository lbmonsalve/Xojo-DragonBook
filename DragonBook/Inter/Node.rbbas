#tag Class
Protected Class Node
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
		Sub Error(s As String, line As Integer = 0)
		  Dim exc As New RuntimeException
		  exc.Message= "near line "+ Str(line)+ ": "+ s
		  
		  Raise exc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Newlabel() As Integer
		  Labels= Labels+ 1
		  
		  Return Labels
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub ResetLabels()
		  Labels= 0
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shared Labels As Integer
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
