#tag ClassProtected Class RetryTimerInherits Timer	#tag Event		Sub Action()		  pCallback.Invoke()		  		End Sub	#tag EndEvent	#tag DelegateDeclaration, Flags = &h0		Delegate Sub ActionCallback()	#tag EndDelegateDeclaration	#tag Method, Flags = &h1000		Sub Constructor(period As Integer, callback As ActionCallback, mode As Integer = Timer.ModeMultiple)		  		  pCallback = callback		  		  me.Mode = mode		  me.Period = period		  me.Enabled = True		  		End Sub	#tag EndMethod	#tag Property, Flags = &h21		Private pCallback As ActionCallback	#tag EndProperty	#tag ViewBehavior		#tag ViewProperty			Name="Index"			Visible=true			Group="ID"			Type="Integer"		#tag EndViewProperty		#tag ViewProperty			Name="Left"			Visible=true			Group="Position"			Type="Integer"		#tag EndViewProperty		#tag ViewProperty			Name="Mode"			Visible=true			Group="Behavior"			InitialValue="2"			Type="Integer"			EditorType="Enum"			#tag EnumValues				"0 - Off"				"1 - Single"				"2 - Multiple"			#tag EndEnumValues		#tag EndViewProperty		#tag ViewProperty			Name="Name"			Visible=true			Group="ID"			Type="String"		#tag EndViewProperty		#tag ViewProperty			Name="Period"			Visible=true			Group="Behavior"			InitialValue="1000"			Type="Integer"		#tag EndViewProperty		#tag ViewProperty			Name="Super"			Visible=true			Group="ID"			Type="String"		#tag EndViewProperty		#tag ViewProperty			Name="Top"			Visible=true			Group="Position"			Type="Integer"		#tag EndViewProperty	#tag EndViewBehaviorEnd Class#tag EndClass