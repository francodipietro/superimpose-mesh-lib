/*
 * Copyright (C) 2016-2019 Istituto Italiano di Tecnologia (IIT)
 *
 * This software may be modified and distributed under the terms of the
 * BSD 3-Clause license. See the accompanying LICENSE file for details.
 */

#version 330 core

in vec2 TexCoords;

out vec4 color;

uniform sampler2D texture_diffuse1;

void main()
{
    color = texture(texture_diffuse1, TexCoords);
    // Transform to grayscale keeping 3 ch
    /*
    vec4 c =  texture(texture_diffuse1, TexCoords);
    float gray = dot(c.rgb, vec3(0.299, 0.587, 0.114));
    color = vec4(vec3(gray), 1.0);
    */
}
