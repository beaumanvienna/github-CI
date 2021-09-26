-- premake5.lua
workspace "github-continous-integration"
	architecture "x86_64"
	startproject "CI"
	configurations 
	{ 
		"Debug", 
		"Release" 
	}

project "CI"
	kind "ConsoleApp"
	language "C++"
	cppdialect "C++17"
   	targetdir ("bin/%{prj.name}")
	objdir ("bin-int/%{prj.name}")


	defines
	{
	}

	files 
	{ 
		"src/**.h", 
		"src/**.cpp"
	}

	includedirs 
	{ 
		"src"
	}

	flags
	{
		"MultiProcessorCompile"
	}
