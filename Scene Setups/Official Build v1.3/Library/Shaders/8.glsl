
   R�gcw?I�y���̑�+                	                                       `   �  J$                                                                                                                                              4                                                                                           ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����    ����                                                                                                ��������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������                         
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  J$              �u��69���u��69����&��'��                                                                                                                                         
                                                                                 R�                          ����    ������������                                      �      ����������������������������                                                     \�                          ����    ������������                                     �       ����������������������������                                                    \�                          ����    ������������                                     �      ����������������������������                                                    \�                          ����    ������������$                                     �      ����������������������������                                                                               �?                                                                                                                                                                                                u_Color u_Model u_Proj u_View 
                      Q�                     a_Position                      R�                          ��������             R�                          ��������v_Color gl_Position                                               color 
                  ����Q�                   a_Position                   ����R�                   v_Color                       R�                    color  g  !!NVvp5.0
OPTION NV_internal;
OPTION NV_bindless_texture;
PARAM c[13] = { program.local[0..12] };
ATTRIB vertex_attrib[] = { vertex.attrib[0..0] };
OUTPUT result_attrib[] = { result.attrib[0..0] };
TEMP R0, R1;
TEMP T;
MUL.F R0.xyz, vertex.attrib[0].y, c[1];
MAD.F R0.xyz, vertex.attrib[0].x, c[0], R0;
MAD.F R0.xyz, vertex.attrib[0].z, c[2], R0;
ADD.F R0.xyz, R0, c[3];
MUL.F R1, R0.y, c[5];
MAD.F R1, R0.x, c[4], R1;
MAD.F R0, R0.z, c[6], R1;
ADD.F R0, R0, c[7];
MUL.F R1, R0.y, c[9];
MAD.F R1, R0.x, c[8], R1;
MAD.F R1, R0.z, c[10], R1;
MAD.F result.position, R0.w, c[11], R1;
MOV.F result.attrib[0], c[12];
END
                                                                                                                                                                                                                 �?                                                            ��������������������������������                                                                                                                                        ���������   !!NVfp5.0
OPTION NV_internal;
OPTION NV_bindless_texture;
ATTRIB fragment_attrib[] = { fragment.attrib[0..0] };
TEMP T;
OUTPUT result_color0 = result.color;
MOV.F result_color0, fragment.attrib[0];
END
                    ��������������������������������                                                                                                                                        ��������                        