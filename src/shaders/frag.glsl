#version 450 core

in vec3 fragColor;
in vec2 fragUV;
in vec3 fragNormal;

out vec4 outColor;

layout (binding=0) uniform sampler2D tex;   // attach tex to texture unit 0

void main(){
      vec3 texColor = texture(tex, fragUV).rgb;
      outColor = vec4(texColor, 1.0);


}