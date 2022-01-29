model Test_Betrieb
  EMOSYN.Transformator.Dy05_1MVA_ABB_DYHK dy05_1MVA_ABB_DYHK1 annotation(
    Placement(visible = true, transformation(origin = {-36, -10}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  EMOSYN.Netz.Netz netz1(t_fail_end = 3500, t_fail_start = 200)  annotation(
    Placement(visible = true, transformation(origin = {-83, -21}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  EMOSYN.Ladesaeulen.Simple_Charger simple_Charger1(Pout_mess(fixed = false),Re_Charger(fixed = false), Ueff_mess(fixed = false))  annotation(
    Placement(visible = true, transformation(origin = {26, 2}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
  EMOSYN.Bus.Simple_Bus simple_Bus1(SOC_Start = 10)  annotation(
    Placement(visible = true, transformation(origin = {88, 2}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
equation
  connect(simple_Bus1.pin_n, simple_Charger1.pin_n) annotation(
    Line(points = {{66, -11.2}, {48, -11.2}}, color = {0, 0, 255}));
  connect(simple_Bus1.pin_p, simple_Charger1.pin_p) annotation(
    Line(points = {{66, 15.2}, {48, 15.2}}, color = {0, 0, 255}));
  connect(simple_Bus1.controlBusVehicle, simple_Charger1.controlBusCharger) annotation(
    Line(points = {{66, 2}, {48, 2}}, color = {255, 204, 51}, thickness = 0.5));
  connect(dy05_1MVA_ABB_DYHK1.positivePlug2, simple_Charger1.positivePlug1) annotation(
    Line(points = {{-18, 0.8}, {4, 0.8}, {4, 2}}, color = {85, 170, 255}));
  connect(netz1.positivePlug1, dy05_1MVA_ABB_DYHK1.positivePlug1) annotation(
    Line(points = {{-66, -10.46}, {-54, -10.46}}, color = {85, 170, 255}));
  annotation(
    uses(Modelica(version = "3.2.3")));end Test_Betrieb;
