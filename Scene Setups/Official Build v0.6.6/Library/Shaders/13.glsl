
   ��GcL�e,�ĹIC�                	                                  `      >                                                                                                                                         ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����                                                        ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                                                                                                              >          �u��69���u��69���[�Os                                                                                                                               
   	                         ^�                         ����    ������������                                      �   ����    ������������������������                                                screenTexture                       P�                     aPos                   R�                          ��������gl_Position 	                                              FragColor                   ����P�                   aPos        ����       ����R�                   gl_FragCoord 	                      R�                    FragColor  �   !!NVvp5.0
OPTION NV_internal;
OPTION NV_bindless_texture;
ATTRIB vertex_attrib[] = { vertex.attrib[0..0] };
TEMP T;
MOV.F result.position.xy, vertex.attrib[0];
MOV.F result.position.zw, {0, 1, 0, 0}.xyxy;
END
                ��������������������������������                                                                                                                                        ���������  !!NVfp5.0
OPTION NV_internal;
OPTION NV_gpu_program_fp64;
OPTION NV_bindless_texture;
PARAM c[1] = { program.local[0] };
ATTRIB fragment_position = fragment.position;
TEMP R0;
LONG TEMP D0;
TEMP T;
OUTPUT result_color0 = result.color;
PK64.U D0.x, c[0];
TXQ R0.xy, {0, 0, 0, 0}, handle(D0.x), 2D;
I2F.S R0.xy, R0;
RCP.F32 R0.y, R0.y;
RCP.F32 R0.x, R0.x;
MUL.F32 R0.xy, fragment.position, R0;
TEX.F result_color0, R0, handle(D0.x), 2D;
END
                                                                                                                                                  �������������������������������                                                                                                                                       ��������                        