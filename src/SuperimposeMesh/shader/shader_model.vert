/*
 * Copyright (C) 2016-2019 Istituto Italiano di Tecnologia (IIT)
 *
 * This software may be modified and distributed under the terms of the
 * BSD 3-Clause license. See the accompanying LICENSE file for details.
 */

#version 330 core

layout (location = 0) in vec3 position;
layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;
layout (location = 3) in vec2 aOffset;

out vec2 TexCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;
uniform vec2 Offset;
uniform vec2 offsets[100];
uniform mat4 models[100];

void main()
{
   gl_Position = projection * view * model * vec4(position, 1.0f);
    // Poses from uniform for isntancing
    //mat4 M = models[gl_InstanceID];
    //gl_Position = projection * view * M * vec4(position, 1.0f);
    // Adding offsets for instancing
    //gl_Position.xy += (Offset + aOffset) * gl_Position.w;
    //vec2 offset = offsets[gl_InstanceID];
    //gl_Position.x += offset.x  * gl_Position.w;
    //gl_Position.y += offset.y  * gl_Position.w;
    TexCoords = texCoords;
    // Invert y axis
    gl_Position.xy *= vec2(1.0, -1.0);

}
