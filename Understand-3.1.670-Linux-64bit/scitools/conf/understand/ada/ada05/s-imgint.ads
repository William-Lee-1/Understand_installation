------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                       S Y S T E M . I M G _ I N T                        --
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

--  This package contains the routines for supporting the Image attribute for
--  signed integer types up to Size Integer'Size, and also for conversion
--  operations required in Text_IO.Integer_IO for such types.

package System.Img_Int is
   pragma Pure;

   function Image_Integer (V : Integer) return String;
   --  Computes Integer'Image (V) and returns the result

   procedure Set_Image_Integer
     (V : Integer;
      S : out String;
      P : in out Natural);
   --  Sets the image of V starting at S (P + 1) with no leading spaces (i.e.
   --  Text_IO format where Width = 0), starting at S (P + 1), updating P
   --  to point to the last character stored. The caller promises that the
   --  buffer is large enough and no check is made for this (Constraint_Error
   --  will not be necessarily raised if this is violated since it is perfectly
   --  valid to compile this unit with checks off).

end System.Img_Int;
