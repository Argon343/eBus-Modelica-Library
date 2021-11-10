model Test_Trafo
  EMOSYN.Netz.Netz netz1 annotation(
    Placement(visible = true, transformation(origin = {-92, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  EMOSYN.Transformator.Dy05_1MVA_ABB_DYHK dy05_1MVA_ABB_DYHK1 annotation(
    Placement(visible = true, transformation(origin = {-54, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Electrical.QuasiStationary.MultiPhase.Sensors.VoltageSensor voltageSensor1 annotation(
    Placement(visible = true, transformation(origin = {-14, 0}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
equation
  connect(voltageSensor1.plug_n, dy05_1MVA_ABB_DYHK1.negativePlug1) annotation(
    Line(points = {{-14, -10}, {-30, -10}, {-30, -6}, {-44, -6}, {-44, -6}}, color = {85, 170, 255}));
  connect(voltageSensor1.plug_p, dy05_1MVA_ABB_DYHK1.positivePlug2) annotation(
    Line(points = {{-14, 10}, {-32, 10}, {-32, 6}, {-44, 6}, {-44, 6}}, color = {85, 170, 255}));
  connect(netz1.positivePlug1, dy05_1MVA_ABB_DYHK1.positivePlug1) annotation(
    Line(points = {{-82, 6}, {-64, 6}, {-64, 0}, {-64, 0}}, color = {85, 170, 255}));
annotation(
    uses(Modelica(version = "3.2.3")));end Test_Trafo;
