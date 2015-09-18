caelum_sky_system CommunityMapRain.terrn.os

{
    // J2000
    julian_day 2451545.0
    time_scale 1

    point_starfield {
        magnitude_scale 2.51189
        mag0_pixel_size 16
        min_pixel_size 4
        max_pixel_size 6
    }

    manage_ambient_light true
    minimum_ambient_light 0.001 0.2 0.1

    manage_scene_fog yes
    ground_fog_density_multiplier 1
	scene_fog_density_multiplier 0.015

    sun {
        ambient_multiplier 0.001 0.2 0.1
        diffuse_multiplier 0.5 0.5 0.5
        specular_multiplier 0.2 0.2 0.2

        auto_disable_threshold 0.05
        auto_disable true
    }

    moon {
        ambient_multiplier 1 0.2 0.2
        diffuse_multiplier 1 1 .9
        specular_multiplier 1 1 1

        auto_disable_threshold 0.05
        auto_disable true
    }
    sky_dome {
        haze_enabled yes
        sky_gradients_image EarthCloudSky.png
        atmosphere_depth_image AtmosphereDepth.png
    }

    cloud_system
    {
        cloud_layer Low
        {
            height 70
            coverage 0.75
			cloud_uv_factor 1000
        }
		cloud_layer med
        {
            height 100
            coverage 0.75
			cloud_uv_factor 500
        }
		cloud_layer High
        {
            height 130
            coverage 0.75
			cloud_uv_factor 100
        }
    }

	precipitation    
	{        
		intensity 0.1       
		texture precipitation_rain.png        
		// Wind speed. This is not available through the UI.        
		wind_speed .1 0 .1        
		// Slow the camera effect.        
		camera_speed_scale 0.01 0.01 0.01		        
		//falling_direction 0 1 0        
		//wind_speed 0 0 0    
	}
	
}
