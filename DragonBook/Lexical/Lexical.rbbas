#tag Module
Protected Module Lexical
	#tag Enum, Name = Tag, Type = Integer, Flags = &h1
		AND_ = 256
		  BASIC = 257
		  BREAK_ = 258
		  DO_ = 259
		  ELSE_ = 260
		  EQ = 261
		  FALSE_ = 262
		  GE = 263
		  ID = 264
		  IF_ = 265
		  INDEX = 266
		  LE = 267
		  MINUS = 268
		  NE = 269
		  NUM = 270
		  OR_ = 271
		  REAL = 272
		  TEMP = 273
		  TRUE_ = 274
		WHILE_ = 275
	#tag EndEnum


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
End Module
#tag EndModule
