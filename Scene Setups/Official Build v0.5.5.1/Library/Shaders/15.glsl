
   _8Č	”čNµ=Öī2%ś§                	                                           d      6%                                                                            :      '                                                       ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’    ’’’’                                                        ’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’                 
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      6%          æu69¶æu69¶+2+’ų                                                                                         
                 
   	                                             `                         ’’’’    ’’’’’’’’’’’’                                      ’   ’’’’   ’’’’’’’’’’’’’’’’’’’’’’’’                                             Q                          ’’’’    ’’’’’’’’’’’’                                     ’   ’’’’   ’’’’’’’’’’’’’’’’’’’’’’’’                               
                                       ’’’’    ’’’’’’’’’’’’                                     ’   ’’’’    ’’’’’’’’’’’’’’’’’’’’’’’’                                                                      ’’’’    ’’’’’’’’’’’’                                     ’   ’’’’   ’’’’’’’’’’’’’’’’’’’’’’’’                                  ,          \                          ’’’’    ’’’’’’’’’’’’                                     ’      ’’’’’’’’’’’’’’’’’’’’’’’’’’’’                                  3          \                          ’’’’    ’’’’’’’’’’’’                                     ’       ’’’’’’’’’’’’’’’’’’’’’’’’’’’’                                                                               ?  ?  ?  ?  ?                                                                                                                                skybox u_Color u_Exposure u_GammaCorrection u_Proj u_View 
                      Q                     a_Position        	              Q                          ’’’’’’’’   
          R                          ’’’’’’’’TexCoords gl_Position                                               color 
                  ’’’’Q                   a_Position 	                  ’’’’Q                   TexCoords                       R                    color    !!NVvp5.0
OPTION NV_internal;
OPTION NV_bindless_texture;
PARAM c[8] = { program.local[0..7] };
ATTRIB vertex_attrib[] = { vertex.attrib[0..0] };
OUTPUT result_attrib[] = { result.attrib[0..0] };
TEMP R0, R1;
TEMP T;
MUL.F R0, vertex.attrib[0].y, c[1];
MAD.F R0, vertex.attrib[0].x, c[0], R0;
MAD.F R0, vertex.attrib[0].z, c[2], R0;
ADD.F R0, R0, c[3];
MUL.F R1, R0.y, c[5];
MAD.F R1, R0.x, c[4], R1;
MAD.F R1, R0.z, c[6], R1;
MAD.F result.position, R0.w, c[7], R1;
MUL.F result.attrib[0].xyz, vertex.attrib[0], {1, -1, 0, 0}.xyxw;
END
                                                                                                                                               ’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’                                                                                                                                        ’’’’’’’’E  !!NVfp5.0
OPTION NV_internal;
OPTION NV_gpu_program_fp64;
OPTION NV_bindless_texture;
PARAM c[4] = { program.local[0..3] };
ATTRIB fragment_attrib[] = { fragment.attrib[0..0] };
TEMP R0, R1;
LONG TEMP D0;
TEMP T;
OUTPUT result_color0 = result.color;
PK64.U D0.x, c[3];
TEX.F R0, fragment.attrib[0], handle(D0.x), CUBE;
MOV.F R1.w, {1, 0, 0, 0}.x;
MOV.F R1.xyz, c[1];
MUL.F R1, R0, R1;
MUL.F R1, R1, c[0].x;
RCP.F R0.x, c[2].x;
POW.F result_color0.x, R1.x, R0.x;
POW.F result_color0.y, R1.y, R0.x;
POW.F result_color0.z, R1.z, R0.x;
POW.F result_color0.w, R1.w, {1, 0, 0, 0}.x;
END
     ?              ?  ?  ?      ?                                                                                                           ’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’’                                                                                                                                      ’’’’’’’’                        