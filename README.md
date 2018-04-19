# EDA playground

A short tuto to use EDA playground (instead of PeakVHDL)

1. Use any browser and open https://www.edaplayground.com (Microsoft Edge works!)  
Please avoid using on phone.  
Click top right "Log in" option and log in with Google/Facebook.  

2. In the left hand panel, expand these two options:  
- "Languages & Libraries"  
- "Tools & Simulators"  

3. Select these options: (this combination works, I haven't tried out anything else)  
- Under "Languages & Libraries"  
  - "Testbench + Design" -> "VHDL" (default is Verilog)  
  - "Libraries" -> leave as it is (nothing by default)  
  - "Top entity" -> type "testbench"  
- Under "Tools & Simulators"  
  - first drop-down box -> "Aldec Riviera Pro 2014.06"  
  - "Compile & Run Options" -> leave as it is  
  - "Run Time" -> leave as it is (default is 10 ns)  
  - "Open EPWave after run" -> set checked (default is unchecked)  

4. Code your heart out in the right panel "design.vhd" file. No need to rename. Sample code for 2 input AND gate:
https://github.com/SayantanRC/eda/blob/master/design.vhd

5. The "testbench.vhd" is a bit different. Here is a sample code for 2 input AND gate (assuming entity name is "and_gate"). Copy paste this code and make changes wherever necessary:  
https://github.com/SayantanRC/eda/blob/master/testbench.vhd  

6. In the bottom half panel, in the "Add a title to help you find your playground", put in the name of your project, the click "Save".  

7. In the top left corner (beside website logo) Click "Run". Wait for it to finish as it's a bit slow. If you are using a 2G connection, please use Jio from any of your friend.  

8. Done! To create a new project, click the website logo and a new project will open. To get back to your old saved projects
- "Playgrounds" (top right corner) -> "Your playgrounds"  

### Changes for structural behaviour

1. All "port map" must have a label. Example:  
  > C1 : AND_2 port map (A, B, F) -- Here C1 is the label.

2. <b>Component</b> must end with <b><i>component</b></i> keyword, not with component name.

3. 
