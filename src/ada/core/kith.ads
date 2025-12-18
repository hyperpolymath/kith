-- SPDX-License-Identifier: AGPL-3.0-or-later
-- SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
--
-- Kith - Main package specification
-- A modular, Ada-powered TUI for managing .well-known directories

package Kith is

   --  Application version
   Version : constant String := "0.1.0";

   --  Application name
   Name : constant String := "kith";

   --  Initialize the application
   procedure Initialize;

   --  Run the main application loop
   procedure Run;

   --  Finalize and cleanup
   procedure Finalize;

end Kith;
