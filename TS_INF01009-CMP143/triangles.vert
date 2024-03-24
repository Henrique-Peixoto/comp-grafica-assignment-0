#version 450 core

layout(location = 0) in vec2 vPosition;
out vec4 vertexColor;

void main() {
  gl_Position = vec4(vPosition, 0.0, 1.0);

  if (vPosition.x < 0.0 && vPosition.y < 0.0) {
    vertexColor = vec4(1.0, 0.0, 0.0, 1.0);
  } else if (vPosition.x > 0.0 && vPosition.y < 0.0) {
    vertexColor = vec4(0.0, 1.0, 0.0, 1.0);
  } else {
  	vertexColor = vec4(0.0, 0.0, 1.0, 1.0);
  }
}

