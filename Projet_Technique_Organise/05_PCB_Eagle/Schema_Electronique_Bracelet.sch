<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.6.2">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="1" fill="3" visible="no" active="no"/>
<layer number="3" name="Route3" color="4" fill="3" visible="no" active="no"/>
<layer number="4" name="Route4" color="1" fill="4" visible="no" active="no"/>
<layer number="5" name="Route5" color="4" fill="4" visible="no" active="no"/>
<layer number="6" name="Route6" color="1" fill="8" visible="no" active="no"/>
<layer number="7" name="Route7" color="4" fill="8" visible="no" active="no"/>
<layer number="8" name="Route8" color="1" fill="2" visible="no" active="no"/>
<layer number="9" name="Route9" color="4" fill="2" visible="no" active="no"/>
<layer number="10" name="Route10" color="1" fill="7" visible="no" active="no"/>
<layer number="11" name="Route11" color="4" fill="7" visible="no" active="no"/>
<layer number="12" name="Route12" color="1" fill="5" visible="no" active="no"/>
<layer number="13" name="Route13" color="4" fill="5" visible="no" active="no"/>
<layer number="14" name="Route14" color="1" fill="6" visible="no" active="no"/>
<layer number="15" name="Route15" color="4" fill="6" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="con-amp-quick" urn="urn:adsk.eagle:library:125">
<description>&lt;b&gt;AMP Connectors, Type QUICK&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="08PA" urn="urn:adsk.eagle:footprint:5944/1" library_version="2">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<wire x1="-9.906" y1="8.763" x2="9.906" y2="8.763" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="8.763" x2="-9.906" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="8.509" x2="-8.001" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="8.509" x2="-7.62" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="8.128" x2="-7.239" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="8.509" x2="7.239" y2="8.509" width="0.1524" layer="21"/>
<wire x1="7.239" y1="8.509" x2="7.62" y2="8.128" width="0.1524" layer="21"/>
<wire x1="7.62" y1="8.128" x2="8.001" y2="8.509" width="0.1524" layer="21"/>
<wire x1="8.001" y1="8.509" x2="9.906" y2="8.509" width="0.1524" layer="21"/>
<wire x1="9.906" y1="8.509" x2="9.906" y2="8.763" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="8.509" x2="-8.001" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="8.128" x2="-7.62" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="8.509" x2="-7.239" y2="5.842" width="0.1524" layer="21"/>
<wire x1="9.906" y1="5.842" x2="9.906" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-8.001" y1="5.842" x2="-7.874" y2="5.842" width="0.1524" layer="21"/>
<wire x1="8.001" y1="8.509" x2="8.001" y2="5.842" width="0.1524" layer="21"/>
<wire x1="8.001" y1="5.842" x2="8.636" y2="5.842" width="0.1524" layer="21"/>
<wire x1="8.636" y1="5.842" x2="9.144" y2="5.842" width="0.1524" layer="21"/>
<wire x1="9.144" y1="5.842" x2="9.906" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.239" y1="8.509" x2="7.239" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.239" y1="5.842" x2="7.366" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.366" y1="5.842" x2="7.62" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.62" y1="8.128" x2="7.62" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.62" y1="5.842" x2="7.874" y2="5.842" width="0.1524" layer="21"/>
<wire x1="7.874" y1="5.842" x2="8.001" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="5.842" x2="-7.366" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="5.842" x2="-7.239" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="5.842" x2="-7.62" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-0.381" x2="-8.382" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-9.906" y1="-0.127" x2="-9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-9.906" y1="8.509" x2="-9.906" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-9.906" y1="5.842" x2="-9.906" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-9.398" y1="-0.381" x2="-9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-9.398" y1="-0.381" x2="-9.906" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-7.874" y1="-0.127" x2="-8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-7.874" y1="5.842" x2="-7.874" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-7.874" y1="-0.127" x2="-7.874" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-8.382" y1="-0.381" x2="-8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-9.906" y1="5.842" x2="-9.144" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="5.842" x2="-8.636" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="5.842" x2="-8.001" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.143" y1="8.001" x2="1.397" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.397" y1="8.001" x2="1.524" y2="7.366" width="0.1524" layer="21"/>
<wire x1="1.524" y1="7.366" x2="1.016" y2="7.366" width="0.1524" layer="21"/>
<wire x1="1.016" y1="7.366" x2="1.143" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.016" y1="7.366" x2="1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.524" y1="7.366" x2="1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.524" y1="5.842" x2="2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="2.286" y1="5.842" x2="2.794" y2="5.842" width="0.1524" layer="21"/>
<wire x1="2.794" y1="5.842" x2="3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.556" y1="5.842" x2="4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.064" y1="5.842" x2="4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.826" y1="5.842" x2="5.334" y2="5.842" width="0.1524" layer="21"/>
<wire x1="5.334" y1="5.842" x2="6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.096" y1="5.842" x2="6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.604" y1="5.842" x2="7.239" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-7.239" y1="5.842" x2="-6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="5.842" x2="-6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="5.842" x2="-5.334" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="5.842" x2="-4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="5.842" x2="-4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="5.842" x2="-3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="5.842" x2="-2.794" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="5.842" x2="-2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="5.842" x2="-1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="5.842" x2="-1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.842" x2="-0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="5.842" x2="0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0.254" y1="5.842" x2="1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.016" y1="5.842" x2="1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="8.763" y1="8.001" x2="9.017" y2="8.001" width="0.1524" layer="21"/>
<wire x1="9.017" y1="8.001" x2="9.144" y2="7.366" width="0.1524" layer="21"/>
<wire x1="9.144" y1="7.366" x2="8.636" y2="7.366" width="0.1524" layer="21"/>
<wire x1="8.636" y1="7.366" x2="8.763" y2="8.001" width="0.1524" layer="21"/>
<wire x1="8.636" y1="7.366" x2="8.636" y2="5.842" width="0.1524" layer="21"/>
<wire x1="9.144" y1="7.366" x2="9.144" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="8.001" x2="-1.143" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="8.001" x2="-1.016" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="7.366" x2="-1.524" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="7.366" x2="-1.397" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="7.366" x2="-1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="7.366" x2="-1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.683" y1="8.001" x2="3.937" y2="8.001" width="0.1524" layer="21"/>
<wire x1="3.937" y1="8.001" x2="4.064" y2="7.366" width="0.1524" layer="21"/>
<wire x1="4.064" y1="7.366" x2="3.556" y2="7.366" width="0.1524" layer="21"/>
<wire x1="3.556" y1="7.366" x2="3.683" y2="8.001" width="0.1524" layer="21"/>
<wire x1="3.556" y1="7.366" x2="3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.064" y1="7.366" x2="4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.223" y1="8.001" x2="6.477" y2="8.001" width="0.1524" layer="21"/>
<wire x1="6.477" y1="8.001" x2="6.604" y2="7.366" width="0.1524" layer="21"/>
<wire x1="6.604" y1="7.366" x2="6.096" y2="7.366" width="0.1524" layer="21"/>
<wire x1="6.096" y1="7.366" x2="6.223" y2="8.001" width="0.1524" layer="21"/>
<wire x1="6.096" y1="7.366" x2="6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.604" y1="7.366" x2="6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.937" y1="8.001" x2="-3.683" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-3.683" y1="8.001" x2="-3.556" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="7.366" x2="-4.064" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="7.366" x2="-3.937" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="7.366" x2="-4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="7.366" x2="-3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="8.001" x2="-6.223" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.223" y1="8.001" x2="-6.096" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="7.366" x2="-6.604" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="7.366" x2="-6.477" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-6.604" y1="7.366" x2="-6.604" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="7.366" x2="-6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-9.017" y1="8.001" x2="-8.763" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-8.763" y1="8.001" x2="-8.636" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="7.366" x2="-9.144" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="7.366" x2="-9.017" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-9.144" y1="7.366" x2="-9.144" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="7.366" x2="-8.636" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-8.636" y1="-0.381" x2="-8.636" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-8.636" y1="-0.381" x2="-9.144" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="-0.381" x2="-9.144" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-9.144" y1="-0.127" x2="-9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-8.382" y1="-0.127" x2="-8.636" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.127" x2="-7.874" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-7.366" y1="5.842" x2="-7.366" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-0.381" x2="-5.842" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.127" x2="-6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-7.366" y1="-0.127" x2="-7.366" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-6.858" y1="-0.381" x2="-6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.858" y1="-0.381" x2="-7.366" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.127" x2="-5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="5.842" x2="-5.334" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="-0.127" x2="-5.334" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-5.842" y1="-0.381" x2="-5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.381" x2="-6.096" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.381" x2="-6.604" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.381" x2="-6.604" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.604" y1="-0.127" x2="-6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-5.842" y1="-0.127" x2="-6.096" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.127" x2="-5.334" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="5.842" x2="-4.826" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-0.381" x2="-3.302" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.127" x2="-4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.127" x2="-4.826" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-4.318" y1="-0.381" x2="-4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.318" y1="-0.381" x2="-4.826" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.127" x2="-3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="5.842" x2="-2.794" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="-0.127" x2="-2.794" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-3.302" y1="-0.381" x2="-3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.381" x2="-3.556" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.381" x2="-4.064" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.381" x2="-4.064" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.127" x2="-4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.302" y1="-0.127" x2="-3.556" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-2.794" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="5.842" x2="-2.286" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.381" x2="-0.762" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-2.286" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.381" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="-0.381" x2="-2.286" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.127" x2="-0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="5.842" x2="-0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.127" x2="-0.254" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.381" x2="-0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.381" x2="-1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.381" x2="-1.524" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.381" x2="-1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.127" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-0.127" x2="-1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="-0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="0.254" y1="5.842" x2="0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-0.381" x2="1.778" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="0.254" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.381" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.762" y1="-0.381" x2="0.254" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.127" x2="1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.286" y1="5.842" x2="2.286" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-0.127" x2="2.286" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.381" x2="1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.381" x2="1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.381" x2="1.016" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.381" x2="1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.127" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-0.127" x2="1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.127" x2="2.286" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.794" y1="5.842" x2="2.794" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-0.381" x2="4.318" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.127" x2="3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.127" x2="2.794" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="3.302" y1="-0.381" x2="3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="3.302" y1="-0.381" x2="2.794" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.127" x2="4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.826" y1="5.842" x2="4.826" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="4.826" y1="-0.127" x2="4.826" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="4.318" y1="-0.381" x2="4.318" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.381" x2="4.064" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.381" x2="3.556" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.381" x2="3.556" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.127" x2="3.302" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.318" y1="-0.127" x2="4.064" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.127" x2="4.826" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="5.334" y1="5.842" x2="5.334" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-0.381" x2="6.858" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.127" x2="5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.127" x2="5.334" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="5.842" y1="-0.381" x2="5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.842" y1="-0.381" x2="5.334" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="7.366" y1="-0.127" x2="6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="7.366" y1="5.842" x2="7.366" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="7.366" y1="-0.127" x2="7.366" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="6.858" y1="-0.381" x2="6.858" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.381" x2="6.604" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.604" y1="-0.381" x2="6.096" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.381" x2="6.096" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.127" x2="5.842" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.858" y1="-0.127" x2="6.604" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="7.874" y1="-0.127" x2="7.366" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="7.874" y1="5.842" x2="7.874" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="9.906" y1="-0.381" x2="9.398" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="7.874" y1="-0.127" x2="8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="7.874" y1="-0.127" x2="7.874" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="8.382" y1="-0.381" x2="8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="8.382" y1="-0.381" x2="7.874" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="9.906" y1="-0.127" x2="9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="9.906" y1="5.842" x2="9.906" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="9.398" y1="-0.381" x2="9.398" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="9.144" y1="-0.381" x2="9.144" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="9.144" y1="-0.381" x2="8.636" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="8.636" y1="-0.381" x2="8.636" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="8.636" y1="-0.127" x2="8.382" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="9.398" y1="-0.127" x2="9.144" y2="-0.127" width="0.1524" layer="51"/>
<pad name="1" x="-8.89" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="2" x="-6.35" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="3" x="-3.81" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="4" x="-1.27" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="5" x="1.27" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="6" x="3.81" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="7" x="6.35" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="8" x="8.89" y="0" drill="0.9144" shape="long" rot="R90"/>
<text x="-9.271" y="1.3208" size="1.27" layer="21" ratio="10">1</text>
<text x="8.1788" y="1.2192" size="1.27" layer="21" ratio="10">8</text>
<text x="-9.906" y="9.1694" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-9.906" y="-2.3114" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.016" y1="5.842" x2="1.524" y2="7.366" layer="21"/>
<rectangle x1="1.143" y1="7.366" x2="1.397" y2="8.001" layer="21"/>
<rectangle x1="1.397" y1="7.366" x2="1.524" y2="7.62" layer="21"/>
<rectangle x1="1.016" y1="7.366" x2="1.143" y2="7.62" layer="21"/>
<rectangle x1="8.636" y1="5.842" x2="9.144" y2="7.366" layer="21"/>
<rectangle x1="8.763" y1="7.366" x2="9.017" y2="8.001" layer="21"/>
<rectangle x1="9.017" y1="7.366" x2="9.144" y2="7.62" layer="21"/>
<rectangle x1="8.636" y1="7.366" x2="8.763" y2="7.62" layer="21"/>
<rectangle x1="-1.524" y1="5.842" x2="-1.016" y2="7.366" layer="21"/>
<rectangle x1="-1.397" y1="7.366" x2="-1.143" y2="8.001" layer="21"/>
<rectangle x1="-1.143" y1="7.366" x2="-1.016" y2="7.62" layer="21"/>
<rectangle x1="-1.524" y1="7.366" x2="-1.397" y2="7.62" layer="21"/>
<rectangle x1="3.556" y1="5.842" x2="4.064" y2="7.366" layer="21"/>
<rectangle x1="3.683" y1="7.366" x2="3.937" y2="8.001" layer="21"/>
<rectangle x1="3.937" y1="7.366" x2="4.064" y2="7.62" layer="21"/>
<rectangle x1="3.556" y1="7.366" x2="3.683" y2="7.62" layer="21"/>
<rectangle x1="6.096" y1="5.842" x2="6.604" y2="7.366" layer="21"/>
<rectangle x1="6.223" y1="7.366" x2="6.477" y2="8.001" layer="21"/>
<rectangle x1="6.477" y1="7.366" x2="6.604" y2="7.62" layer="21"/>
<rectangle x1="6.096" y1="7.366" x2="6.223" y2="7.62" layer="21"/>
<rectangle x1="-4.064" y1="5.842" x2="-3.556" y2="7.366" layer="21"/>
<rectangle x1="-3.937" y1="7.366" x2="-3.683" y2="8.001" layer="21"/>
<rectangle x1="-3.683" y1="7.366" x2="-3.556" y2="7.62" layer="21"/>
<rectangle x1="-4.064" y1="7.366" x2="-3.937" y2="7.62" layer="21"/>
<rectangle x1="-6.604" y1="5.842" x2="-6.096" y2="7.366" layer="21"/>
<rectangle x1="-6.477" y1="7.366" x2="-6.223" y2="8.001" layer="21"/>
<rectangle x1="-6.223" y1="7.366" x2="-6.096" y2="7.62" layer="21"/>
<rectangle x1="-6.604" y1="7.366" x2="-6.477" y2="7.62" layer="21"/>
<rectangle x1="-9.144" y1="5.842" x2="-8.636" y2="7.366" layer="21"/>
<rectangle x1="-9.017" y1="7.366" x2="-8.763" y2="8.001" layer="21"/>
<rectangle x1="-8.763" y1="7.366" x2="-8.636" y2="7.62" layer="21"/>
<rectangle x1="-9.144" y1="7.366" x2="-9.017" y2="7.62" layer="21"/>
</package>
<package name="05PA" urn="urn:adsk.eagle:footprint:5941/1" library_version="2">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<wire x1="-6.096" y1="8.763" x2="6.096" y2="8.763" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="8.763" x2="-6.096" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="8.509" x2="-4.191" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="8.509" x2="-3.81" y2="8.128" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="8.128" x2="-3.429" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="8.509" x2="3.429" y2="8.509" width="0.1524" layer="21"/>
<wire x1="3.429" y1="8.509" x2="3.81" y2="8.128" width="0.1524" layer="21"/>
<wire x1="3.81" y1="8.128" x2="4.191" y2="8.509" width="0.1524" layer="21"/>
<wire x1="4.191" y1="8.509" x2="6.096" y2="8.509" width="0.1524" layer="21"/>
<wire x1="6.096" y1="8.509" x2="6.096" y2="8.763" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="8.509" x2="-4.191" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="8.128" x2="-3.81" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="8.509" x2="-3.429" y2="5.842" width="0.1524" layer="21"/>
<wire x1="6.096" y1="5.842" x2="6.096" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-4.191" y1="5.842" x2="-4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.191" y1="8.509" x2="4.191" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.429" y1="8.509" x2="3.429" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.81" y1="8.128" x2="3.81" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="5.842" x2="-3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="5.842" x2="-3.429" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="5.842" x2="-3.81" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-0.381" x2="-4.572" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="-0.127" x2="-5.588" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="8.509" x2="-6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-6.096" y1="5.842" x2="-6.096" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-5.588" y1="-0.381" x2="-5.588" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-5.588" y1="-0.381" x2="-6.096" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="-0.127" x2="-4.572" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.064" y1="5.842" x2="-4.064" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-4.064" y1="-0.127" x2="-4.064" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-4.572" y1="-0.381" x2="-4.572" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-6.096" y1="5.842" x2="-5.334" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="5.842" x2="-4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="5.842" x2="-4.191" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.953" y1="8.001" x2="5.207" y2="8.001" width="0.1524" layer="21"/>
<wire x1="5.207" y1="8.001" x2="5.334" y2="7.366" width="0.1524" layer="21"/>
<wire x1="5.334" y1="7.366" x2="4.826" y2="7.366" width="0.1524" layer="21"/>
<wire x1="4.826" y1="7.366" x2="4.953" y2="8.001" width="0.1524" layer="21"/>
<wire x1="4.826" y1="7.366" x2="4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="5.334" y1="7.366" x2="5.334" y2="5.842" width="0.1524" layer="21"/>
<wire x1="5.334" y1="5.842" x2="6.096" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-3.429" y1="5.842" x2="-2.794" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="5.842" x2="-2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="5.842" x2="-1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="4.826" y1="5.842" x2="5.334" y2="5.842" width="0.1524" layer="21"/>
<wire x1="2.413" y1="8.001" x2="2.667" y2="8.001" width="0.1524" layer="21"/>
<wire x1="2.667" y1="8.001" x2="2.794" y2="7.366" width="0.1524" layer="21"/>
<wire x1="2.794" y1="7.366" x2="2.286" y2="7.366" width="0.1524" layer="21"/>
<wire x1="2.286" y1="7.366" x2="2.413" y2="8.001" width="0.1524" layer="21"/>
<wire x1="2.286" y1="7.366" x2="2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="2.794" y1="7.366" x2="2.794" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-0.127" y1="8.001" x2="0.127" y2="8.001" width="0.1524" layer="21"/>
<wire x1="0.127" y1="8.001" x2="0.254" y2="7.366" width="0.1524" layer="21"/>
<wire x1="0.254" y1="7.366" x2="-0.254" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="7.366" x2="-0.127" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="7.366" x2="-0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0.254" y1="7.366" x2="0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.667" y1="8.001" x2="-2.413" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-2.413" y1="8.001" x2="-2.286" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="7.366" x2="-2.794" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="7.366" x2="-2.667" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-2.794" y1="7.366" x2="-2.794" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="7.366" x2="-2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-5.207" y1="8.001" x2="-4.953" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-4.953" y1="8.001" x2="-4.826" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="7.366" x2="-5.334" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="7.366" x2="-5.207" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-5.334" y1="7.366" x2="-5.334" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="7.366" x2="-4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-4.826" y1="-0.381" x2="-4.826" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.826" y1="-0.381" x2="-5.334" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.381" x2="-5.334" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-5.334" y1="-0.127" x2="-5.588" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-4.572" y1="-0.127" x2="-4.826" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.127" x2="-4.064" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-3.556" y1="5.842" x2="-3.556" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.381" x2="-2.032" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.127" x2="-3.048" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.556" y1="-0.127" x2="-3.556" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-3.048" y1="-0.381" x2="-3.048" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-3.048" y1="-0.381" x2="-3.556" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.127" x2="-2.032" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="5.842" x2="-1.524" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="-0.127" x2="-1.524" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-2.032" y1="-0.381" x2="-2.032" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.381" x2="-2.286" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.381" x2="-2.794" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.381" x2="-2.794" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.794" y1="-0.127" x2="-3.048" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.032" y1="-0.127" x2="-2.286" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.127" x2="-1.524" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.842" x2="-1.016" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.381" x2="0.508" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.127" x2="-0.508" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.127" x2="-1.016" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-0.508" y1="-0.381" x2="-0.508" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.508" y1="-0.381" x2="-1.016" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.127" x2="0.508" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.016" y1="5.842" x2="1.016" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="1.016" y1="-0.127" x2="1.016" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0.508" y1="-0.381" x2="0.508" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.381" x2="0.254" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.381" x2="-0.254" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.381" x2="-0.254" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.127" x2="-0.508" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.508" y1="-0.127" x2="0.254" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.127" x2="1.016" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="1.524" y1="5.842" x2="1.524" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="3.556" y1="-0.381" x2="3.048" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.127" x2="2.032" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.127" x2="1.524" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="2.032" y1="-0.381" x2="2.032" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.032" y1="-0.381" x2="1.524" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="3.556" y1="-0.127" x2="3.048" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="3.556" y1="5.842" x2="3.556" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="3.556" y1="-0.127" x2="3.556" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="3.048" y1="-0.381" x2="3.048" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.381" x2="2.794" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.794" y1="-0.381" x2="2.286" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.381" x2="2.286" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.127" x2="2.032" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="3.048" y1="-0.127" x2="2.794" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.127" x2="3.556" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="4.064" y1="5.842" x2="4.064" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="6.096" y1="-0.381" x2="5.588" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.127" x2="4.572" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.064" y1="-0.127" x2="4.064" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="4.572" y1="-0.381" x2="4.572" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.572" y1="-0.381" x2="4.064" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="6.096" y1="-0.127" x2="5.588" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="6.096" y1="5.842" x2="6.096" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="5.588" y1="-0.381" x2="5.588" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.381" x2="5.334" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.334" y1="-0.381" x2="4.826" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.381" x2="4.826" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.826" y1="-0.127" x2="4.572" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="5.588" y1="-0.127" x2="5.334" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="4.064" y1="5.842" x2="4.826" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.556" y1="5.842" x2="3.81" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.429" y1="5.842" x2="3.556" y2="5.842" width="0.1524" layer="21"/>
<wire x1="3.81" y1="5.842" x2="4.064" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.524" y1="5.842" x2="3.429" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.016" y1="5.842" x2="1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.842" x2="1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="5.842" x2="-1.016" y2="5.842" width="0.1524" layer="21"/>
<pad name="1" x="-5.08" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="2" x="-2.54" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="3" x="0" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="4" x="2.54" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="5" x="5.08" y="0" drill="0.9144" shape="long" rot="R90"/>
<text x="-5.461" y="1.3208" size="1.27" layer="21" ratio="10">1</text>
<text x="-6.096" y="9.1694" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-6.096" y="-2.1844" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<text x="4.4958" y="1.2192" size="1.27" layer="21" ratio="10">5</text>
<rectangle x1="4.826" y1="5.842" x2="5.334" y2="7.366" layer="21"/>
<rectangle x1="4.953" y1="7.366" x2="5.207" y2="8.001" layer="21"/>
<rectangle x1="5.207" y1="7.366" x2="5.334" y2="7.62" layer="21"/>
<rectangle x1="4.826" y1="7.366" x2="4.953" y2="7.62" layer="21"/>
<rectangle x1="2.286" y1="5.842" x2="2.794" y2="7.366" layer="21"/>
<rectangle x1="2.413" y1="7.366" x2="2.667" y2="8.001" layer="21"/>
<rectangle x1="2.667" y1="7.366" x2="2.794" y2="7.62" layer="21"/>
<rectangle x1="2.286" y1="7.366" x2="2.413" y2="7.62" layer="21"/>
<rectangle x1="-0.254" y1="5.842" x2="0.254" y2="7.366" layer="21"/>
<rectangle x1="-0.127" y1="7.366" x2="0.127" y2="8.001" layer="21"/>
<rectangle x1="0.127" y1="7.366" x2="0.254" y2="7.62" layer="21"/>
<rectangle x1="-0.254" y1="7.366" x2="-0.127" y2="7.62" layer="21"/>
<rectangle x1="-2.794" y1="5.842" x2="-2.286" y2="7.366" layer="21"/>
<rectangle x1="-2.667" y1="7.366" x2="-2.413" y2="8.001" layer="21"/>
<rectangle x1="-2.413" y1="7.366" x2="-2.286" y2="7.62" layer="21"/>
<rectangle x1="-2.794" y1="7.366" x2="-2.667" y2="7.62" layer="21"/>
<rectangle x1="-5.334" y1="5.842" x2="-4.826" y2="7.366" layer="21"/>
<rectangle x1="-5.207" y1="7.366" x2="-4.953" y2="8.001" layer="21"/>
<rectangle x1="-4.953" y1="7.366" x2="-4.826" y2="7.62" layer="21"/>
<rectangle x1="-5.334" y1="7.366" x2="-5.207" y2="7.62" layer="21"/>
</package>
<package name="02PA" urn="urn:adsk.eagle:footprint:5939/1" library_version="2">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<wire x1="-2.286" y1="8.763" x2="-2.286" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="8.509" x2="-0.381" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="8.509" x2="0" y2="8.128" width="0.1524" layer="21"/>
<wire x1="0" y1="8.128" x2="0.381" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="8.509" x2="-0.381" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0" y1="8.128" x2="0" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0.381" y1="8.509" x2="0.381" y2="5.842" width="0.1524" layer="21"/>
<wire x1="2.286" y1="5.842" x2="2.286" y2="8.509" width="0.1524" layer="21"/>
<wire x1="-0.381" y1="5.842" x2="-0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0" y1="5.842" x2="0.254" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0.254" y1="5.842" x2="0.381" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="5.842" x2="0" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.381" x2="-0.762" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="-0.127" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="8.509" x2="-2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-2.286" y1="5.842" x2="-2.286" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-1.778" y1="-0.381" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.778" y1="-0.381" x2="-2.286" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="-0.127" x2="-0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.254" y1="5.842" x2="-0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="-0.254" y1="-0.127" x2="-0.254" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="-0.762" y1="-0.381" x2="-0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="5.842" x2="-1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="5.842" x2="-1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="5.842" x2="-0.381" y2="5.842" width="0.1524" layer="21"/>
<wire x1="0.381" y1="5.842" x2="1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.016" y1="5.842" x2="1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.524" y1="5.842" x2="2.286" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.143" y1="8.001" x2="1.397" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.397" y1="8.001" x2="1.524" y2="7.366" width="0.1524" layer="21"/>
<wire x1="1.524" y1="7.366" x2="1.016" y2="7.366" width="0.1524" layer="21"/>
<wire x1="1.016" y1="7.366" x2="1.143" y2="8.001" width="0.1524" layer="21"/>
<wire x1="1.016" y1="7.366" x2="1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="1.524" y1="7.366" x2="1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.397" y1="8.001" x2="-1.143" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-1.143" y1="8.001" x2="-1.016" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="7.366" x2="-1.524" y2="7.366" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="7.366" x2="-1.397" y2="8.001" width="0.1524" layer="21"/>
<wire x1="-1.524" y1="7.366" x2="-1.524" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="7.366" x2="-1.016" y2="5.842" width="0.1524" layer="21"/>
<wire x1="-1.016" y1="-0.381" x2="-1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.016" y1="-0.381" x2="-1.524" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.381" x2="-1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-1.524" y1="-0.127" x2="-1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-0.762" y1="-0.127" x2="-1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="-0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="0.254" y1="5.842" x2="0.254" y2="-0.127" width="0.1524" layer="21"/>
<wire x1="2.286" y1="-0.381" x2="1.778" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.254" y1="-0.127" x2="0.254" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="0.762" y1="-0.381" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="0.762" y1="-0.381" x2="0.254" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="2.286" y1="-0.127" x2="1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="2.286" y1="5.842" x2="2.286" y2="-0.381" width="0.1524" layer="21"/>
<wire x1="1.778" y1="-0.381" x2="1.778" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.381" x2="1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.524" y1="-0.381" x2="1.016" y2="-0.381" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.381" x2="1.016" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.016" y1="-0.127" x2="0.762" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="1.778" y1="-0.127" x2="1.524" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="-2.286" y1="8.763" x2="2.286" y2="8.763" width="0.1524" layer="21"/>
<wire x1="0.381" y1="8.509" x2="2.286" y2="8.509" width="0.1524" layer="21"/>
<wire x1="2.286" y1="8.509" x2="2.286" y2="8.763" width="0.1524" layer="21"/>
<pad name="1" x="-1.27" y="0" drill="0.9144" shape="long" rot="R90"/>
<pad name="2" x="1.27" y="0" drill="0.9144" shape="long" rot="R90"/>
<text x="-1.651" y="1.3208" size="1.27" layer="21" ratio="10">1</text>
<text x="-2.286" y="9.1694" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-2.286" y="-2.1844" size="1.27" layer="27" ratio="10">&gt;VALUE</text>
<rectangle x1="1.016" y1="5.842" x2="1.524" y2="7.366" layer="21"/>
<rectangle x1="1.143" y1="7.366" x2="1.397" y2="8.001" layer="21"/>
<rectangle x1="1.397" y1="7.366" x2="1.524" y2="7.62" layer="21"/>
<rectangle x1="1.016" y1="7.366" x2="1.143" y2="7.62" layer="21"/>
<rectangle x1="-1.524" y1="5.842" x2="-1.016" y2="7.366" layer="21"/>
<rectangle x1="-1.397" y1="7.366" x2="-1.143" y2="8.001" layer="21"/>
<rectangle x1="-1.143" y1="7.366" x2="-1.016" y2="7.62" layer="21"/>
<rectangle x1="-1.524" y1="7.366" x2="-1.397" y2="7.62" layer="21"/>
</package>
</packages>
<packages3d>
<package3d name="08PA" urn="urn:adsk.eagle:package:5975/1" type="box" library_version="2">
<description>AMP QUICK CONNECTOR</description>
<packageinstances>
<packageinstance name="08PA"/>
</packageinstances>
</package3d>
<package3d name="05PA" urn="urn:adsk.eagle:package:5972/1" type="box" library_version="2">
<description>AMP QUICK CONNECTOR</description>
<packageinstances>
<packageinstance name="05PA"/>
</packageinstances>
</package3d>
<package3d name="02PA" urn="urn:adsk.eagle:package:5970/1" type="box" library_version="2">
<description>AMP QUICK CONNECTOR</description>
<packageinstances>
<packageinstance name="02PA"/>
</packageinstances>
</package3d>
</packages3d>
<symbols>
<symbol name="M08" urn="urn:adsk.eagle:symbol:5921/1" library_version="2">
<wire x1="1.27" y1="-10.16" x2="-5.08" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="-2.54" x2="0" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-5.08" x2="0" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="-7.62" x2="0" y2="-7.62" width="0.6096" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="-5.08" y2="-10.16" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-10.16" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-5.08" y1="12.7" x2="1.27" y2="12.7" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="2.54" x2="0" y2="2.54" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="0" x2="0" y2="0" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="5.08" x2="0" y2="5.08" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="7.62" x2="0" y2="7.62" width="0.6096" layer="94"/>
<wire x1="-1.27" y1="10.16" x2="0" y2="10.16" width="0.6096" layer="94"/>
<text x="-5.08" y="-12.7" size="1.778" layer="96">&gt;VALUE</text>
<text x="-5.08" y="13.462" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="5.08" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="5.08" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="5.08" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="5.08" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="5.08" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="5.08" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="5.08" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="5.08" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M05" urn="urn:adsk.eagle:symbol:5914/1" library_version="2">
<wire x1="3.81" y1="-7.62" x2="-2.54" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-2.54" x2="2.54" y2="-2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="2.54" y2="-5.08" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="-2.54" y2="-7.62" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="7.62" x2="3.81" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="5.08" x2="2.54" y2="5.08" width="0.6096" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<text x="-2.54" y="-10.16" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="8.382" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="M02" urn="urn:adsk.eagle:symbol:5909/1" library_version="2">
<wire x1="3.81" y1="-2.54" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="1.27" y1="2.54" x2="2.54" y2="2.54" width="0.6096" layer="94"/>
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.6096" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="-2.54" y2="-2.54" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-2.54" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<wire x1="-2.54" y1="5.08" x2="3.81" y2="5.08" width="0.4064" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96">&gt;VALUE</text>
<text x="-2.54" y="5.842" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MA08" urn="urn:adsk.eagle:component:6021/2" prefix="SL" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="M08" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="08PA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
<connect gate="G$1" pin="6" pad="6"/>
<connect gate="G$1" pin="7" pad="7"/>
<connect gate="G$1" pin="8" pad="8"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5975/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA05" urn="urn:adsk.eagle:component:6027/2" prefix="SL" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="M05" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="05PA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
<connect gate="G$1" pin="3" pad="3"/>
<connect gate="G$1" pin="4" pad="4"/>
<connect gate="G$1" pin="5" pad="5"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5972/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="0" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MA02" urn="urn:adsk.eagle:component:6011/2" prefix="SL" uservalue="yes" library_version="2">
<description>&lt;b&gt;AMP QUICK CONNECTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="M02" x="-2.54" y="0"/>
</gates>
<devices>
<device name="" package="02PA">
<connects>
<connect gate="G$1" pin="1" pad="1"/>
<connect gate="G$1" pin="2" pad="2"/>
</connects>
<package3dinstances>
<package3dinstance package3d_urn="urn:adsk.eagle:package:5970/1"/>
</package3dinstances>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="" constant="no"/>
<attribute name="OC_FARNELL" value="unknown" constant="no"/>
<attribute name="OC_NEWARK" value="unknown" constant="no"/>
<attribute name="POPULARITY" value="1" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="docu-dummy" urn="urn:adsk.eagle:library:215">
<description>Dummy symbols</description>
<packages>
</packages>
<symbols>
<symbol name="RESISTOR" urn="urn:adsk.eagle:symbol:13162/1" library_version="3">
<wire x1="-2.54" y1="-0.889" x2="2.54" y2="-0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="0.889" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="2.54" y1="-0.889" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-0.889" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="0.889" width="0.254" layer="94"/>
<wire x1="-5.08" y1="0" x2="-2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="R" urn="urn:adsk.eagle:component:13171/1" prefix="R" library_version="3">
<description>&lt;b&gt;RESISTOR&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="RESISTOR" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<groups>
<schematic_group name="ESP32"/>
</groups>
<parts>
<part name="SL1" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA08" device="" package3d_urn="urn:adsk.eagle:package:5975/1" value="ESP32_LEFT"/>
<part name="SL2" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA08" device="" package3d_urn="urn:adsk.eagle:package:5975/1" value="ESP32_RIGHT"/>
<part name="SL3" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA05" device="" package3d_urn="urn:adsk.eagle:package:5972/1" value="MAX30102"/>
<part name="SL4" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA08" device="" package3d_urn="urn:adsk.eagle:package:5975/1" value="MPU6050"/>
<part name="SL5" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA02" device="" package3d_urn="urn:adsk.eagle:package:5970/1" value="BUZZER"/>
<part name="SL9" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA02" device="" package3d_urn="urn:adsk.eagle:package:5970/1" value="ON_OFF_SWITCH"/>
<part name="SL10" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA02" device="" package3d_urn="urn:adsk.eagle:package:5970/1" value="POWER_INPUT"/>
<part name="SL11" library="con-amp-quick" library_urn="urn:adsk.eagle:library:125" deviceset="MA02" device="" package3d_urn="urn:adsk.eagle:package:5970/1" value="POWER_INPUT"/>
<part name="R2" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
<part name="R3" library="docu-dummy" library_urn="urn:adsk.eagle:library:215" deviceset="R" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="SL1" gate="G$1" x="152.4" y="96.52" smashed="yes" rot="MR0" grouprefs="ESP32">
<attribute name="NAME" x="157.48" y="109.982" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="SL2" gate="G$1" x="167.64" y="96.52" smashed="yes" grouprefs="ESP32">
<attribute name="NAME" x="162.56" y="109.982" size="1.778" layer="95"/>
</instance>
<instance part="SL3" gate="G$1" x="177.8" y="71.12" smashed="yes" rot="R90">
<attribute name="NAME" x="169.418" y="68.58" size="1.778" layer="95" rot="R90"/>
</instance>
<instance part="SL4" gate="G$1" x="195.58" y="96.52" smashed="yes" rot="MR0">
<attribute name="NAME" x="200.66" y="109.982" size="1.778" layer="95" rot="MR0"/>
</instance>
<instance part="SL5" gate="G$1" x="129.54" y="101.6" smashed="yes" rot="MR180">
<attribute name="NAME" x="127" y="95.758" size="1.778" layer="95" rot="MR180"/>
</instance>
<instance part="SL9" gate="G$1" x="129.54" y="76.2" smashed="yes">
<attribute name="NAME" x="127" y="82.042" size="1.778" layer="95"/>
</instance>
<instance part="SL10" gate="G$1" x="172.72" y="127" smashed="yes" rot="R270">
<attribute name="NAME" x="178.562" y="129.54" size="1.778" layer="95" rot="R270"/>
</instance>
<instance part="SL11" gate="G$1" x="129.54" y="109.22" smashed="yes">
<attribute name="NAME" x="127" y="115.062" size="1.778" layer="95"/>
</instance>
<instance part="R2" gate="G$1" x="185.42" y="109.22" smashed="yes" rot="R90"/>
<instance part="R3" gate="G$1" x="177.8" y="111.76" smashed="yes" rot="R90"/>
</instances>
<busses>
</busses>
<nets>
<net name="NC_MPU_XDA" class="0">
<segment>
<pinref part="SL2" gate="G$1" pin="4"/>
<pinref part="SL4" gate="G$1" pin="5"/>
<wire x1="190.5" y1="99.06" x2="185.42" y2="99.06" width="0.1524" layer="91"/>
<wire x1="185.42" y1="99.06" x2="185.42" y2="96.52" width="0.1524" layer="91"/>
<wire x1="185.42" y1="96.52" x2="177.8" y2="96.52" width="0.1524" layer="91"/>
<wire x1="177.8" y1="96.52" x2="172.72" y2="96.52" width="0.1524" layer="91"/>
<wire x1="177.8" y1="96.52" x2="177.8" y2="86.36" width="0.1524" layer="91"/>
<junction x="177.8" y="96.52"/>
<wire x1="177.8" y1="106.68" x2="177.8" y2="96.52" width="0.1524" layer="91"/>
<pinref part="SL3" gate="G$1" pin="4"/>
<wire x1="175.26" y1="78.74" x2="175.26" y2="86.36" width="0.1524" layer="91"/>
<wire x1="175.26" y1="86.36" x2="177.8" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="NC_MPU_XCL" class="0">
<segment>
<pinref part="SL2" gate="G$1" pin="5"/>
<wire x1="172.72" y1="99.06" x2="182.88" y2="99.06" width="0.1524" layer="91"/>
<wire x1="182.88" y1="99.06" x2="182.88" y2="101.6" width="0.1524" layer="91"/>
<pinref part="SL4" gate="G$1" pin="6"/>
<wire x1="182.88" y1="101.6" x2="185.42" y2="101.6" width="0.1524" layer="91"/>
<wire x1="185.42" y1="101.6" x2="187.96" y2="101.6" width="0.1524" layer="91"/>
<wire x1="187.96" y1="101.6" x2="190.5" y2="101.6" width="0.1524" layer="91"/>
<wire x1="187.96" y1="81.28" x2="187.96" y2="101.6" width="0.1524" layer="91"/>
<junction x="187.96" y="101.6"/>
<wire x1="185.42" y1="104.14" x2="185.42" y2="101.6" width="0.1524" layer="91"/>
<junction x="185.42" y="101.6"/>
<pinref part="SL3" gate="G$1" pin="3"/>
<wire x1="187.96" y1="81.28" x2="177.8" y2="81.28" width="0.1524" layer="91"/>
<wire x1="177.8" y1="81.28" x2="177.8" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="SL4" gate="G$1" pin="8"/>
<wire x1="190.5" y1="106.68" x2="190.5" y2="114.3" width="0.1524" layer="91"/>
<wire x1="190.5" y1="114.3" x2="208.28" y2="114.3" width="0.1524" layer="91"/>
<wire x1="208.28" y1="114.3" x2="208.28" y2="78.74" width="0.1524" layer="91"/>
<wire x1="208.28" y1="78.74" x2="190.5" y2="78.74" width="0.1524" layer="91"/>
<wire x1="190.5" y1="78.74" x2="190.5" y2="63.5" width="0.1524" layer="91"/>
<wire x1="190.5" y1="63.5" x2="119.38" y2="63.5" width="0.1524" layer="91"/>
<wire x1="119.38" y1="63.5" x2="119.38" y2="88.9" width="0.1524" layer="91"/>
<wire x1="119.38" y1="88.9" x2="134.62" y2="88.9" width="0.1524" layer="91"/>
<wire x1="134.62" y1="88.9" x2="134.62" y2="96.52" width="0.1524" layer="91"/>
<wire x1="177.8" y1="119.38" x2="177.8" y2="116.84" width="0.1524" layer="91"/>
<wire x1="177.8" y1="119.38" x2="180.34" y2="119.38" width="0.1524" layer="91"/>
<wire x1="180.34" y1="119.38" x2="180.34" y2="132.08" width="0.1524" layer="91"/>
<wire x1="180.34" y1="132.08" x2="167.64" y2="132.08" width="0.1524" layer="91"/>
<pinref part="SL10" gate="G$1" pin="1"/>
<wire x1="172.72" y1="119.38" x2="167.64" y2="121.92" width="0.1524" layer="91"/>
<wire x1="167.64" y1="121.92" x2="165.1" y2="121.92" width="0.1524" layer="91"/>
<wire x1="185.42" y1="114.3" x2="185.42" y2="124.46" width="0.1524" layer="91"/>
<wire x1="185.42" y1="124.46" x2="182.88" y2="124.46" width="0.1524" layer="91"/>
<wire x1="182.88" y1="124.46" x2="182.88" y2="134.62" width="0.1524" layer="91"/>
<wire x1="182.88" y1="134.62" x2="165.1" y2="134.62" width="0.1524" layer="91"/>
<wire x1="165.1" y1="134.62" x2="165.1" y2="121.92" width="0.1524" layer="91"/>
<junction x="165.1" y="121.92"/>
<wire x1="167.64" y1="132.08" x2="167.64" y2="121.92" width="0.1524" layer="91"/>
<junction x="167.64" y="121.92"/>
<wire x1="165.1" y1="121.92" x2="144.78" y2="121.92" width="0.1524" layer="91"/>
<wire x1="144.78" y1="93.98" x2="144.78" y2="96.52" width="0.1524" layer="91"/>
<wire x1="144.78" y1="96.52" x2="144.78" y2="99.06" width="0.1524" layer="91"/>
<wire x1="144.78" y1="99.06" x2="144.78" y2="121.92" width="0.1524" layer="91"/>
<wire x1="134.62" y1="96.52" x2="144.78" y2="96.52" width="0.1524" layer="91"/>
<junction x="144.78" y="96.52"/>
<pinref part="SL3" gate="G$1" pin="1"/>
<wire x1="182.88" y1="78.74" x2="190.5" y2="78.74" width="0.1524" layer="91"/>
<junction x="190.5" y="78.74"/>
<pinref part="SL1" gate="G$1" pin="3"/>
<wire x1="147.32" y1="93.98" x2="144.78" y2="93.98" width="0.1524" layer="91"/>
<pinref part="SL5" gate="G$1" pin="2"/>
<wire x1="137.16" y1="99.06" x2="144.78" y2="99.06" width="0.1524" layer="91"/>
<junction x="144.78" y="99.06"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="SL5" gate="G$1" pin="1"/>
<wire x1="137.16" y1="101.6" x2="147.32" y2="101.6" width="0.1524" layer="91"/>
<pinref part="SL1" gate="G$1" pin="6"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="SL9" gate="G$1" pin="1"/>
<pinref part="SL1" gate="G$1" pin="1"/>
<wire x1="137.16" y1="76.2" x2="147.32" y2="76.2" width="0.1524" layer="91"/>
<wire x1="147.32" y1="76.2" x2="147.32" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="SL11" gate="G$1" pin="2"/>
<pinref part="SL1" gate="G$1" pin="8"/>
<wire x1="137.16" y1="111.76" x2="139.7" y2="111.76" width="0.1524" layer="91"/>
<wire x1="139.7" y1="111.76" x2="147.32" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="SL10" gate="G$1" pin="2"/>
<pinref part="SL2" gate="G$1" pin="6"/>
<wire x1="175.26" y1="119.38" x2="175.26" y2="101.6" width="0.1524" layer="91"/>
<wire x1="175.26" y1="101.6" x2="172.72" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LED" class="0">
<segment>
<pinref part="SL4" gate="G$1" pin="7"/>
<wire x1="190.5" y1="104.14" x2="187.96" y2="104.14" width="0.1524" layer="91"/>
<wire x1="187.96" y1="104.14" x2="187.96" y2="116.84" width="0.1524" layer="91"/>
<wire x1="187.96" y1="116.84" x2="215.9" y2="116.84" width="0.1524" layer="91"/>
<wire x1="215.9" y1="116.84" x2="215.9" y2="137.16" width="0.1524" layer="91"/>
<wire x1="215.9" y1="137.16" x2="121.92" y2="137.16" width="0.1524" layer="91"/>
<wire x1="121.92" y1="137.16" x2="121.92" y2="91.44" width="0.1524" layer="91"/>
<pinref part="SL9" gate="G$1" pin="2"/>
<wire x1="137.16" y1="78.74" x2="144.78" y2="78.74" width="0.1524" layer="91"/>
<wire x1="144.78" y1="78.74" x2="144.78" y2="91.44" width="0.1524" layer="91"/>
<pinref part="SL1" gate="G$1" pin="2"/>
<wire x1="144.78" y1="91.44" x2="147.32" y2="91.44" width="0.1524" layer="91"/>
<junction x="144.78" y="91.44"/>
<pinref part="SL11" gate="G$1" pin="1"/>
<wire x1="137.16" y1="109.22" x2="139.7" y2="109.22" width="0.1524" layer="91"/>
<wire x1="139.7" y1="109.22" x2="139.7" y2="91.44" width="0.1524" layer="91"/>
<wire x1="139.7" y1="91.44" x2="144.78" y2="91.44" width="0.1524" layer="91"/>
<junction x="139.7" y="91.44"/>
<wire x1="121.92" y1="91.44" x2="139.7" y2="91.44" width="0.1524" layer="91"/>
<pinref part="SL3" gate="G$1" pin="2"/>
<wire x1="180.34" y1="78.74" x2="144.78" y2="78.74" width="0.1524" layer="91"/>
<junction x="144.78" y="78.74"/>
</segment>
</net>
<net name="N$14" class="0">
<segment>
<pinref part="SL2" gate="G$1" pin="1"/>
<pinref part="SL3" gate="G$1" pin="5"/>
<wire x1="172.72" y1="88.9" x2="172.72" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports the association of 3D packages
with devices in libraries, schematics, and board files. Those 3D
packages will not be understood (or retained) with this version.
</note>
<note version="9.5" severity="warning">
Since Version 9.5, EAGLE supports persistent groups with
schematics, and board files. Those persistent groups
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
