caelum_sky_system CommunityMapSnow.terrn.os
{
    // J2000
    julian_day 2457441
    time_scale 1
	latitude 46 18 52
    longitude 6 57 46

    point_starfield {
        magnitude_scale 2.51189
        mag0_pixel_size 16
        min_pixel_size 4
        max_pixel_size 6
    }

    manage_ambient_light true
    minimum_ambient_light 0.1 0.1 0.3

    manage_scene_fog yes
    ground_fog_density_multiplier 1
	scene_fog_density_multiplier 0.015

    sun {
        ambient_multiplier 0.5 0.5 0.5
        diffuse_multiplier 1.5 1.5 1.35
        specular_multiplier 2.5 2.5 2.5

        auto_disable_threshold 0.05
        auto_disable true
    }

    moon {
        ambient_multiplier 0.2 0.2 0.2
        diffuse_multiplier 1 1 .9
        specular_multiplier 1 1 1

        auto_disable_threshold 0.05
        auto_disable true
    }
	
    sky_dome {
        haze_enabled no
        sky_gradients_image EarthClearSky2.png
        atmosphere_depth_image AtmosphereDepth.png
    }

    cloud_system {
        cloud_layer {
            height 3000
            coverage 1
			cloud_uv_factor 500
        }
    }

	precipitation {        
		intensity 0.05       
		texture precipitation_snow.png              
		wind_speed .1 0 .1               
		camera_speed_scale 0.01 0.01 0.01		        
	}
}