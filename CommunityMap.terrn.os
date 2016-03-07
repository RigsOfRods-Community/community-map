caelum_sky_system CommunityMap.terrn.os
{
    // J2000
    julian_day 2457560
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
    ground_fog_density_multiplier 0.0015
	scene_fog_density_multiplier 0.0015

    sun {
        ambient_multiplier 0.5 0.5 0.5
        diffuse_multiplier 3 3 2.7
        specular_multiplier 5 5 5

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
            coverage 0.175
        }
    }
}