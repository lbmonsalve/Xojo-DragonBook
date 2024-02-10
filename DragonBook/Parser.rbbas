#tag Class
Protected Class Parser
	#tag Method, Flags = &h21
		Private Function Assing() As DragonBook.Inter.Stmt
		  Dim s As DragonBook.Inter.Stmt
		  Dim t As DragonBook.Lexical.Token= look
		  
		  Match DragonBook.Lexical.Tag.ID.ToInteger
		  Dim id As DragonBook.Inter.Id= top.Get(t)
		  If id Is Nil Then Error(t.ToString+ " undeclared")
		  
		  If look.GetTag= Asc("=") Then // S -> id = E ;
		    Move
		    s= New DragonBook.Inter.Set(id, Bool)
		  Else // S -> L = E ;
		    Dim x As DragonBook.Inter.Access= Offset(id)
		    Match Asc("=")
		    s= New DragonBook.Inter.SetElem(x, Bool)
		  End If
		  
		  Match Asc(";")
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Block() As DragonBook.Inter.Stmt
		  // block -> { decls stmts }
		  Match Asc("{")
		  Dim savedEnv As DragonBook.Symbols.Env= top
		  top= New DragonBook.Symbols.Env(top)
		  Decls
		  Dim s As DragonBook.Inter.Stmt= Stmts
		  Match Asc("}")
		  top= savedEnv
		  
		  Return s
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Bool() As DragonBook.Inter.Expr
		  Dim x As DragonBook.Inter.Expr= Join
		  While look.GetTag= DragonBook.Lexical.Tag.OR_.ToInteger
		    Dim tok As DragonBook.Lexical.Token= look
		    Move
		    x= New DragonBook.Inter.OrStmt(tok, x, Join)
		  Wend
		  
		  Return x
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(lex As Lexer, Optional output As Writeable)
		  Self.lex= lex
		  Move
		  
		  If output Is Nil Then
		    #if TargetConsole
		      Out= stdout
		    #elseif TargetDesktop
		      Out= TextOutputStream.Create(SpecialFolder.Documents.Child("dragonbook.out"))
		    #endif
		  Else
		    Out= output
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Decls()
		  // D -> type ID ;
		  While look.GetTag= DragonBook.Lexical.Tag.BASIC.ToInteger
		    Dim p As DragonBook.Symbols.Type= Type
		    Dim tok As DragonBook.Lexical.Token= look
		    Match DragonBook.Lexical.Tag.ID.ToInteger
		    Match Asc(";")
		    top.Put tok, New DragonBook.Inter.Id(DragonBook.Lexical.Word(tok), p, used)
		    used= used+ p.GetWidth
		  Wend
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Dims(p As DragonBook.Symbols.Type) As DragonBook.Symbols.Type
		  Match Asc("[")
		  Dim tok As DragonBook.Lexical.Token= look
		  Match DragonBook.Lexical.Tag.NUM.ToInteger
		  Match Asc("]")
		  
		  If look.GetTag= Asc("[") Then p= Dims(p)
		  
		  Return New DragonBook.Symbols.Arr(DragonBook.Lexical.Num(tok).Value, p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Equality() As DragonBook.Inter.Expr
		  Dim x As DragonBook.Inter.Expr= Rel
		  While look.GetTag= DragonBook.Lexical.Tag.EQ.ToInteger Or look.GetTag= DragonBook.Lexical.Tag.NE.ToInteger
		    Dim tok As DragonBook.Lexical.Token= look
		    Move
		    x= New DragonBook.Inter.Rel(tok, x, Rel)
		  Wend
		  
		  Return x
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Error(s As String)
		  Dim exc As New RuntimeException
		  exc.Message= "near line "+ Str(lex.GetLine)+ ": "+ s
		  
		  Raise exc
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Expr() As DragonBook.Inter.Expr
		  Dim x As DragonBook.Inter.Expr= Term
		  While look.GetTag= Asc("+") Or look.GetTag= asc("-")
		    Dim tok As DragonBook.Lexical.Token= look
		    Move
		    x= New DragonBook.Inter.Arith(tok, x, Term)
		  Wend
		  
		  Return x
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Factor() As DragonBook.Inter.Expr
		  Dim x As DragonBook.Inter.Expr
		  Select Case look.GetTag
		  Case Asc("(")
		    Move
		    x= Bool
		    Match Asc(")")
		    Return x
		  Case DragonBook.Lexical.Tag.NUM.ToInteger
		    x= New DragonBook.Inter.Constant(look, DragonBook.Symbols.Type.Int)
		    Move
		    Return x
		  Case DragonBook.Lexical.Tag.REAL.ToInteger
		    x= New DragonBook.Inter.Constant(look, DragonBook.Symbols.Type.Float)
		    Move
		    Return x
		  Case DragonBook.Lexical.Tag.TRUE_.ToInteger
		    x= DragonBook.Inter.Constant.True_
		    Move
		    Return x
		  Case DragonBook.Lexical.Tag.FALSE_.ToInteger
		    x= DragonBook.Inter.Constant.False_
		    Move
		    Return x
		  Case DragonBook.Lexical.Tag.ID.ToInteger
		    Dim s As String= look.ToString
		    Dim id As DragonBook.Inter.Id= top.Get(look)
		    If id Is Nil Then Error(look.toString+ " undeclared")
		    Move
		    If look.GetTag<> Asc("[") Then
		      Return id
		    Else
		      Return Offset(id)
		    End If
		  Case Else
		    Error "syntax error"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Join() As DragonBook.Inter.Expr
		  Dim x As DragonBook.Inter.Expr= Equality
		  While look.GetTag= DragonBook.Lexical.Tag.AND_.ToInteger
		    Dim tok As DragonBook.Lexical.Token= look
		    Move
		    x= New DragonBook.Inter.AndStmt(tok, x, Equality)
		  Wend
		  
		  Return x
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Match(t As Integer)
		  If look.GetTag= t Then
		    Move
		  Else
		    Error "Syntax Error"
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Move()
		  look= lex.Scan
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Offset(a As DragonBook.Inter.Id) As DragonBook.Inter.Access
		  Dim i, w, t1, t2, loc As DragonBook.Inter.Expr // I -> [E] | [E] I
		  
		  Dim type As DragonBook.Symbols.Type= a.type
		  Match Asc("[") // first index, I -> [ E ]
		  i= Bool
		  Match Asc("]")
		  type= DragonBook.Symbols.Arr(type).OfType
		  w= New DragonBook.Inter.Constant(type.GetWidth)
		  t1= New DragonBook.Inter.Arith(New DragonBook.Lexical.Token(Asc("*")), i, w)
		  loc= t1
		  
		  While look.GetTag= Asc("[") // multi-dimensional I -> [ E ] I
		    Match Asc("[")
		    i= Bool
		    Match Asc("]")
		    type= DragonBook.Symbols.Arr(type).OfType
		    w= New DragonBook.Inter.Constant(type.GetWidth)
		    t1= New DragonBook.Inter.Arith(New DragonBook.Lexical.Token(Asc("*")), i, w)
		    t1= New DragonBook.Inter.Arith(New DragonBook.Lexical.Token(Asc("+")), loc, t1)
		    loc= t2
		  Wend
		  
		  Return New DragonBook.Inter.Access(a, loc, type)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Program()
		  // program -> block
		  Dim s As DragonBook.Inter.Stmt= Block
		  
		  Dim begin As Integer= s.Newlabel
		  Dim after As Integer= s.Newlabel
		  s.Emitlabel begin
		  s.Gen begin, after
		  s.Emitlabel after
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Rel() As DragonBook.Inter.Expr
		  Dim x As DragonBook.Inter.Expr= Expr
		  Select Case look.GetTag
		  Case Asc("<"), DragonBook.Lexical.Tag.LE.ToInteger, DragonBook.Lexical.Tag.GE.ToInteger, Asc(">")
		    Dim tok As DragonBook.Lexical.Token= look
		    Move
		    Return New DragonBook.Inter.Rel(tok, x, Expr)
		  End Select
		  
		  Return x
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Stmt() As DragonBook.Inter.Stmt
		  Dim x As DragonBook.Inter.Expr
		  Dim s, s1, s2 As DragonBook.Inter.Stmt
		  Dim savedStmt As DragonBook.Inter.Stmt // save enclosing loop for breaks
		  
		  Select Case look.GetTag
		  Case Asc(";")
		    Move
		    Return DragonBook.Inter.Stmt.Null
		  Case DragonBook.Lexical.Tag.IF_.ToInteger
		    Match DragonBook.Lexical.Tag.IF_.ToInteger
		    Match Asc("(")
		    x= Bool
		    Match Asc(")")
		    s1= Stmt
		    If look.GetTag<> DragonBook.Lexical.Tag.ELSE_.ToInteger Then Return New DragonBook.Inter.IfStmt(x, s1)
		    Match DragonBook.Lexical.Tag.ELSE_.ToInteger
		    s1= Stmt
		    Return New DragonBook.Inter.ElseStmt(x, s1, s2)
		  Case DragonBook.Lexical.Tag.WHILE_.ToInteger
		    Dim whilenode As New DragonBook.Inter.WhileStmt
		    savedStmt = DragonBook.Inter.Stmt.Enclosing
		    DragonBook.Inter.Stmt.Enclosing= whilenode
		    Match DragonBook.Lexical.Tag.WHILE_.ToInteger
		    Match Asc("(")
		    x= Bool
		    Match Asc(")")
		    s1= Stmt
		    whilenode.Init x, s1
		    DragonBook.Inter.Stmt.Enclosing = savedStmt  // reset Stmt.Enclosing
		    Return whilenode
		  Case DragonBook.Lexical.Tag.DO_.ToInteger
		    Dim donode As New DragonBook.Inter.DoStmt
		    savedStmt = DragonBook.Inter.Stmt.Enclosing
		    DragonBook.Inter.Stmt.Enclosing= donode
		    Match DragonBook.Lexical.Tag.DO_.ToInteger
		    s1= Stmt
		    Match DragonBook.Lexical.Tag.WHILE_.ToInteger
		    Match Asc("(")
		    x= Bool
		    Match Asc(")")
		    Match Asc(";")
		    donode.Init s1, x
		    DragonBook.Inter.Stmt.Enclosing = savedStmt  // reset Stmt.Enclosing
		    Return donode
		  Case DragonBook.Lexical.Tag.BREAK_.ToInteger
		    Match DragonBook.Lexical.Tag.BREAK_.ToInteger
		    Match Asc(";")
		    Return New DragonBook.Inter.BreakStmt
		  Case Asc("{")
		    Return Block
		  Case Else
		    Return Assing
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Stmts() As DragonBook.Inter.Stmt
		  If look.GetTag= Asc("}") Then Return DragonBook.Inter.Stmt.Null
		  Return New DragonBook.Inter.Seq(Stmt, Stmts)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Term() As DragonBook.Inter.Expr
		  Dim x As DragonBook.Inter.Expr= Unary
		  While look.GetTag= Asc("*") Or look.GetTag= asc("/")
		    Dim tok As DragonBook.Lexical.Token= look
		    Move
		    x= New DragonBook.Inter.Arith(tok, x, Unary)
		  Wend
		  
		  Return x
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Type() As DragonBook.Symbols.Type
		  Dim p As DragonBook.Symbols.Type= DragonBook.Symbols.Type(look)
		  Match DragonBook.Lexical.Tag.BASIC.ToInteger
		  If look.GetTag<> Asc("[") Then Return p
		  
		  Return Dims(p)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Unary() As DragonBook.Inter.Expr
		  If look.GetTag= Asc("-") Then
		    Move
		    Return New DragonBook.Inter.Unary(DragonBook.Lexical.Word.Minus, Unary)
		  ElseIf look.GetTag= Asc("!") Then
		    Dim tok As DragonBook.Lexical.Token= look
		    Move
		    Return New DragonBook.Inter.NotStmt(tok, Unary)
		  Else
		    Return Factor
		  End If
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private lex As Lexer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private look As DragonBook.Lexical.Token
	#tag EndProperty

	#tag Property, Flags = &h0
		Shared Out As Writeable
	#tag EndProperty

	#tag Property, Flags = &h21
		Private top As DragonBook.Symbols.Env
	#tag EndProperty

	#tag Property, Flags = &h21
		Private used As Integer
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
			InheritedFrom="Object"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
