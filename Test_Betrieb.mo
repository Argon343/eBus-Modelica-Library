model Test_Betrieb
  EMOSYN.Transformator.Dy05_1MVA_ABB_DYHK dy05_1MVA_ABB_DYHK1 annotation(
    Placement(visible = true, transformation(origin = {-36, -4}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  EMOSYN.Netz.Netz netz1(t_fail_end = 2000, t_fail_start = 300)  annotation(
    Placement(visible = true, transformation(origin = {-83, -15}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  EMOSYN.Ladesaeulen.Simple_Charger simple_Charger1(Pout_mess(fixed = false),Re_Charger(fixed = false), Ueff_mess(fixed = false))  annotation(
    Placement(visible = true, transformation(origin = {16, 8}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
  EMOSYN.Bus.Simple_Bus simple_Bus1 annotation(
    Placement(visible = true, transformation(origin = {78, 8}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
equation
  connect(simple_Bus1.controlBusVehicle, simple_Charger1.controlBusCharger) annotation(
    Line(points = {{56, 8}, {38, 8}}, color = {255, 204, 51}, thickness = 0.5));
  connect(simple_Bus1.pin_p, simple_Charger1.pin_p) annotation(
    Line(points = {{56, 21}, {38, 21}}, color = {0, 0, 255}));
  connect(simple_Bus1.pin_n, simple_Charger1.pin_n) annotation(
    Line(points = {{56, -5}, {38, -5}}, color = {0, 0, 255}));
  connect(simple_Charger1.positivePlug1, dy05_1MVA_ABB_DYHK1.positivePlug2) annotation(
    Line(points = {{-6, 8}, {-18, 8}, {-18, 7}}, color = {85, 170, 255}));
  connect(netz1.positivePlug1, dy05_1MVA_ABB_DYHK1.positivePlug1) annotation(
    Line(points = {{-66, -4}, {-54, -4}}, color = {85, 170, 255}));
  annotation(
    uses(Modelica(version = "3.2.3")));end Test_Betrieb;
