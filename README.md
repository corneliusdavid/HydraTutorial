# HydraTutorial #

This is a project that takes you step-by-step (through the check-in tags) on learning how to use 
the [RemObjects Hydra](http://www.hydra4.com/) plugin framework to build applications that combine Delphi 
with .NET. The Hydra framework is flexible enough to start with either Delphi or .NET as a host application
and use either Delphi or .NET plugins, or even both in the same application.

This project starts with a simple [Delphi](http://www.embarcadero.com/products/delphi) VCL application and shows
how to make it ready for Hydra plugins, leads you through building a Hydra plugin in Delphi, shows how to pass 
information between the host application and the plugins, and then how to incorporate .NET plugins.  Finally, 
a .NET host application will demonstrate similar concepts but starting with .NET and incorporating .NET and Delphi.

## Development Environment ##

Delphi 2010 Professional and [Visual Studio 2013 Community Edition](https://www.visualstudio.com/en-us/products/visual-studio-community-vs.aspx) 
were used to build these plugins. Hydra works with Delphi 7 all they way up to the latest version, 
Delphi XE8 and .NET language generating CLR code.  For the .NET tutorials, 
[Oxygene](http://elementscompiler.com/elements/oxygene/), a modern object-oriented Pascal compiler for Visual Studio
(also from RemObjects Software) is used, but the concepts are equally applicable to C# or Visual Basic.
