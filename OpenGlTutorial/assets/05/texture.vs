#version 330 core

// Cinder passes in position and other inputs based on semantics.
// Notice that the type 'vec3' matches what we have in C++.
layout(location = 0) in vec3 ciPosition;
//layout(location = 1) in vec3 ciColor;
layout(location = 2) in vec2 ciTexCoord0;

// Pass in our custom model-view-projection matrix here.
uniform mat4 uMVP;

//out vec3 vColor;
out vec2 vTexCoord;

void main()
{
  gl_Position = uMVP * vec4( ciPosition, 1.0 );
//  vColor = (ciColor + vec3( 1 )) / 2.0f;
  vTexCoord = ciTexCoord0;
}
