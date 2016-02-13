caelum_sky_system CommunityMap.terrn.os

{


    sun
 	{

        ambient_multiplier 0.5 0.5 0.5

        diffuse_multiplier 3 3 2.7

        specular_multiplier 0.35 0.35 0.35


        auto_disable_threshold 0.05

        auto_disable true

    }


    moon
	{

        ambient_multiplier 0.2 0.2 0.2

        diffuse_multiplier 1 1 .9

        specular_multiplier 0.1 0.1 0.1


        auto_disable_threshold 0.05

        auto_disable true

	}


    sky_dome
	{

        haze_enabled no

        sky_gradients_image WhiteSky.dds

        atmosphere_depth_image AtmosphereDepth.png

	}

}

