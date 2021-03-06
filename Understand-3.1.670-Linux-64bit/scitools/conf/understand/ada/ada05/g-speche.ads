------------------------------------------------------------------------------
--                                                                          --
--                         GNAT RUN-TIME COMPONENTS                         --
--                                                                          --
--                 G N A T . S P E L L I N G _ C H E C K E R                --
--                                                                          --
--                                 S p e c                                  --
--                                                                          --
--                     Copyright (C) 1998-2005 AdaCore                      --
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

--  Spelling checker

--  This package provides a utility routine for checking for bad spellings

package GNAT.Spelling_Checker is
   pragma Pure;

   function Is_Bad_Spelling_Of
     (Found  : String;
      Expect : String)
      return   Boolean;
   --  Determines if the string Found is a plausible misspelling of the
   --  string Expect. Returns True for an exact match or a probably
   --  misspelling, False if no near match is detected. This routine
   --  is case sensitive, so the caller should fold both strings to
   --  get a case insensitive match.
   --
   --  Note: the spec of this routine is deliberately rather vague. This
   --  routine is the one used by GNAT itself to detect misspelled keywords
   --  and identifiers, and is heuristically adjusted to be appropriate to
   --  this usage. It will work well in any similar case of named entities
   --  with relatively short mnemonic names.

end GNAT.Spelling_Checker;
