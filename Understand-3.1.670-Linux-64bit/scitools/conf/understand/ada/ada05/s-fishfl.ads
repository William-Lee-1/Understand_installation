------------------------------------------------------------------------------
--                                                                          --
--                         GNAT COMPILER COMPONENTS                         --
--                                                                          --
--           S Y S T E M . F A T _ I E E E _ S H O R T _ F L O A T          --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--          Copyright (C) 1992-2005 Free Software Foundation, Inc.          --
--                                                                          --
-- GNAT is free software;  you can  redistribute it  and/or modify it under --
-- terms of the  GNU General Public License as published  by the Free Soft- --
-- ware  Foundation;  either version 2,  or (at your option) any later ver- --
-- sion.  GNAT is distributed in the hope that it will be useful, but WITH- --
-- OUT ANY WARRANTY;  without even the  implied warranty of MERCHANTABILITY --
-- or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License --
-- for  more details.  You should have  received  a copy of the GNU General --
-- Public License  distributed with GNAT;  see file COPYING.  If not, write --
-- to  the  Free Software Foundation,  51  Franklin  Street,  Fifth  Floor, --
-- Boston, MA 02110-1301, USA.                                              --
--                                                                          --
--
--
--
--
--
--
--
-- GNAT was originally developed  by the GNAT team at  New York University. --
-- Extensive contributions were provided by Ada Core Technologies Inc.      --
--                                                                          --
------------------------------------------------------------------------------

--  This package contains an instantiation of the floating-point attribute
--  runtime routines for IEEE short float. This is used on VMS targest where
--  we can't just use Float, since this may have been mapped to Vax_Float
--  using a Float_Representation configuration pragma.

with System.Fat_Gen;

package System.Fat_IEEE_Short_Float is
   pragma Pure;

   type Fat_IEEE_Short is digits 6;
   pragma Float_Representation (IEEE_Float, Fat_IEEE_Short);

   --  Note the only entity from this package that is acccessed by Rtsfind
   --  is the name of the package instantiation. Entities within this package
   --  (i.e. the individual floating-point attribute routines) are accessed
   --  by name using selected notation.

   package Attr_IEEE_Short is new System.Fat_Gen (Fat_IEEE_Short);

end System.Fat_IEEE_Short_Float;
