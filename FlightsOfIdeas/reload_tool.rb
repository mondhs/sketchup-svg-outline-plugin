###########################################################
#
#    Google Sketchup Flights of Ideas Tools
#    Copyright (C) 2009 Simon Beard (Flights Of Ideas)
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
###########################################################


toolbar = UI::Toolbar.new "FlightsOfIdeas"
cmd = UI::Command.new("Reload SVG Code") {
  SKETCHUP_CONSOLE.clear
  load 'FlightsOfIdeas/svgExport.rb'
}
path = Sketchup.find_support_file "reload-bw.png", "#{FLIGHTS_OF_IDEAS_DIR}/Images/"
cmd.small_icon = path
cmd.large_icon = path
cmd.tooltip = "Reload SVG Code"
cmd.menu_text = "Reload SVG Code"
toolbar = toolbar.add_item cmd
toolbar.show