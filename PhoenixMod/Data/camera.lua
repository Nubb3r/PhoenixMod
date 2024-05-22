--	Interpolation in camera motion and camera snapping
--
--	*Rate = rate to interpolate
--	*Base = base to perform interpolation in (2.71828 for linear, must be >1)
--	*Threshold = threshold to start performing interpolation
--
SlideTargetRate=4
SlideTargetBase=2
--SlideTargetThreshold=1

SlideDistRate=1
SlideDistBase=5
--SlideDistThreshold=1

SlideOrbitRate=10
SlideOrbitBase=1.01
--SlideOrbitThreshold=1

SlideDeclRate=10
SlideDeclBase=1.01
--SlideDeclThreshold=1

--	Controls the speed of the zoom with the double button press
DistRateMouse=0.50

--	Controls the speed of the zoom on the wheel
DistRateWheelZoomIn=0.80
DistRateWheelZoomOut=1.2

--	Mouse rotation speed : scales the mouse motion to perform the camera rotation
DeclRateMouse=-4
--	up-down	
OrbitRateMouse=-3
--	left-right

--	This is as close to the terrain that the eye can get, unless focused on a
--	point that is closer to the terrain than this.
DistGroundMin=0.1

--	When focused onto a point on the terrain this is the ammount (in meters)
--	that the target is raised above the terrain by.
DistGroundTargetHeight=1.0

--	This is the closest that you can zoom in when you are focused at point
--	on the terrain.
DistMinGround=1.0

--	Declination range : max angle you can look at a target from above/below
DeclAbove=80.000000
DeclBelow=-45.000000

--	Pan scaling : panning velocity scaling

-- Panning speed at the default zoom height.
PanScaleMouseDefZ=125
PanScaleKeyboardDefZ=125
PanScaleScreenDefZ=75

-- Panning speed at the minimum zoom height.
PanScaleMouseMinZ=0
PanScaleKeyboardMinZ=15
PanScaleScreenMinZ=0.000001

-- Panning acceleration
-- To turn acceleration off, use the following values:
--     PanAccelerate=0.0
--     PanStartSpeedScalar=1.0
PanAccelerate=1.0
PanStartSpeedScalar=0.55
PanMaxSpeedScalar=3.0

--	General camera parameters
--	How wide the view is.
FieldOfView=60.000000
--	How close things can be to the camera (in meters, should not go below 1)
ClipNear=0.1
--	How far away we can see (in meters)
ClipFar=3600
--	How much the near plane moves in based on camera height
NearPlaneShifter=0.035


-- This limits how far out you can zoom while focused on entities
EntityMinViewAngle=0.03		--	in radians

	
-- The default height or distance from the ground or target that the camera starts at.
DefaultHeight = 40 -- THIS IS 35 in NORMAL COH
--	Distance ranges in meters (may be influenced by selected object size)
DistMin=1
DistMax=60 -- THIS IS 40 in NORMAL COH



-- The default declination that the camera starts it.  This is in degrees from the ground (0 would be pointed at the horizon)
DefaultDeclination = 43 --38

-- The default heading for the camera, i.e. which direction it is looking, north south etc.
DefaultAngle = -45

-- the camera model that is being used in the game
--
-- 0.0 means a pure homeworld camera, no panning
-- 1.0 means an eye panning camera, no target focus
-- 2.0 means a target panning camera.
-- 3.0 means a target panning camera, but with smoother panning height adjustment.
--
CameraMode = 3.0

-- Use this to enable/disable rotation, 1.0 means you can 0.0 means you can't
RotationEnabled = 1.0

-- Use this to enable/disable declination, 1.0 means you can 0.0 means you can't
DeclinationEnabled = 1.0

-- Use this to enable/disable auto zooming, 1.0 means you can 0.0 means you can't
ZoomLocked = 1

-- NISlet overrides
NISletDistMin=0.25
NISletDistMax=2000
NISletDistGroundMin=1.0
NISletDistMinGround=0.5
NISletDeclBelow=-45.000000
NISletDeclAbove=80.000000

--
--	unused
--
TrackElastic=1.000000
TrackBoundScale=1.750000

