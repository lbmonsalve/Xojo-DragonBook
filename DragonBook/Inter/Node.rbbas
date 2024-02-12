#tag Class
Protected Class Node
	#tag Method, Flags = &h0
		 Shared Sub Emit(out As Writeable, s As String)
		  out.Write Chr(9)+ s+ EndOfLine
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Sub Emitlabel(out As Writeable, i As Integer)
		  out.Write "L"+ Str(i)+ ":"
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub Error(s As String, line As Integer = 0)
		  Dim exc As New RuntimeException
		  If line= 0 Then
		    exc.Message= s
		  Else
		    exc.Message= "near line "+ Str(line)+ ": "+ s
		  End If
		  
		  Raise exc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function Newlabel() As Integer
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
