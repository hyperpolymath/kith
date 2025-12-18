-- SPDX-License-Identifier: AGPL-3.0-or-later
-- SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
--
-- Kith - Main package body

with Ada.Text_IO; use Ada.Text_IO;
with TUI;         use TUI;

package body Kith is

   --  Initialize the application
   procedure Initialize is
   begin
      Put_Line ("Initializing " & Name & " v" & Version);
   end Initialize;

   --  Run the main application loop
   procedure Run is
   begin
      Show_Menu;
   end Run;

   --  Finalize and cleanup
   procedure Finalize is
   begin
      Put_Line ("Goodbye from " & Name & "!");
   end Finalize;

end Kith;
