model Test_Betrieb
  EMOSYN.Transformator.Dy05_1MVA_ABB_DYHK dy05_1MVA_ABB_DYHK1 annotation(
    Placement(visible = true, transformation(origin = {-84, -2}, extent = {{-18, -18}, {18, 18}}, rotation = 0)));
  EMOSYN.Netz.Netz netz1 annotation(
    Placement(visible = true, transformation(origin = {-131, -3}, extent = {{-17, -17}, {17, 17}}, rotation = 0)));
  EMOSYN.Ladesaeulen.Simple_Charger simple_Charger1(Pout_mess(fixed = true),Re_Charger(fixed = true), Ueff_mess(fixed = true))  annotation(
    Placement(visible = true, transformation(origin = {24, 3.55271e-15}, extent = {{-22, -22}, {22, 22}}, rotation = 0)));
  EMOSYN.Bus.Simple_Bus simple_Bus1 annotation(
    Placement(visible = true, transformation(origin = {92, -3.55271e-15}, extent = {{-28, -28}, {28, 28}}, rotation = 0)));
equation
  connect(simple_Bus1.controlBusVehicle, simple_Charger1.controlBusCharger) annotation(
    Line(points = {{116, 28}, {116, 28}, {116, 32}, {54, 32}, {54, 0}, {46, 0}, {46, 0}}, color = {255, 204, 51}, thickness = 0.5));
  connect(simple_Bus1.pin_p, simple_Charger1.pin_p) annotation(
    Line(points = {{64, 16}, {48, 16}, {48, 14}, {46, 14}}, color = {0, 0, 255}));
  connect(simple_Bus1.pin_n, simple_Charger1.pin_n) annotation(
    Line(points = {{64, -17}, {55, -17}, {55, -14}, {46, -14}}, color = {0, 0, 255}));
  connect(netz1.positivePlug1, dy05_1MVA_ABB_DYHK1.positivePlug1) annotation(
    Line(points = {{-114, 7.54}, {-114, 7.54}, {-114, 7.54}, {-108, 7.54}, {-108, -2.46}, {-105, -2.46}, {-105, -2.46}, {-102, -2.46}}, color = {85, 170, 255}));
  connect(simple_Charger1.positivePlug1, dy05_1MVA_ABB_DYHK1.positivePlug2) annotation(
    Line(points = {{2, 14}, {-6, 14}, {-6, 12}, {-66, 12}, {-66, 9}}, color = {85, 170, 255}));
  connect(simple_Charger1.negativePlug1, dy05_1MVA_ABB_DYHK1.negativePlug1) annotation(
    Line(points = {{2, -14}, {-4, -14}, {-4, -13}, {-66, -13}}, color = {85, 170, 255}));
  annotation(
    uses(Modelica(version = "3.2.3")));end Test_Betrieb;
