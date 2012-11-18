#tag Class
Protected Class ThreadRunner
Inherits Thread
	#tag Event
		Sub Run()
		  func.Invoke()
		End Sub
	#tag EndEvent


	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub Callback()
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h1000
		Sub Constructor(f As Callback)
		  func = f
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private func As Callback
	#tag EndProperty


End Class
#tag EndClass
