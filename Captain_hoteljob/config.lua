Config                            = {}

Config.DrawDistance               = 100.0

Config.NPCJobEarnings             = {min = 650, max = 850}
Config.MinimumDistance            = 500 -- Minimum NPC job destination distance from the pickup in GTA units, a higher number prevents nearby destionations.

Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false

Config.Locale                     = 'fr'

Config.AuthorizedVehicles = {

	{
		model = 'Stretch',
		label = 'Limousine'
	},
	{
		model = 'tailgater2',
		label = 'Berline'
	}

}

Config.Zones = {

	VehicleSpawner = {
		Pos   = {x = 380.82, y = -11.72, z = 82.98},
		Size  = {x = 1.0, y = 1.0, z = 1.0},
		Color = {r = 255, g = 0, b = 0},
		Type  = 36, Rotate = true
	},

	VehicleSpawnPoint = {
		Pos   = {x = 372.147, y = -12.25, z = 82.98},
		Size    = {x = 1.5, y = 1.5, z = 1.0},
		Type    = -1, Rotate = false,
		Heading = 36.12
	},

	VehicleDeleter = {
		Pos   = {x = 369.57, y = -15.08, z = 81.99},
		Size  = {x = 1.0, y = 1.0, z = 0.50},
		Color = {r = 255, g = 0, b = 0},
		Type  = 1, Rotate = false
	},

	HotelActions = {
		Pos   = {x = 342.67, y = 37.54, z = -91.93},
		Size  = {x = 1.0, y = 1.0, z = 1.0},
		Color = {r = 255, g = 0, b = 0},
		Type  = 20, Rotate = true
	},

	Cloakroom = {
		Pos     = {x = 394.88, y = -20.65, z = 91.93},
		Size    = {x = 1.0, y = 1.0, z = 1.0},
		Color   = {r = 255, g = 0, b = 0},
		Type    = 21, Rotate = true
	}

}