/// This file is generated, do not edit!
/// See `bin/copy.dart` for more information.

/// Path: ./template\ppt\slides\photo_3_up.xml.mustache
const String template = r'''/// This file is generated, do not edit!
/// See `bin/copy.dart` for more information.

/// Path: ./template/ppt/slides/photo_3_up.xml.mustache
const String template = r'''<?xml version="1.0" encoding="UTF-8"?>
<p:sld xmlns:a="http://schemas.openxmlformats.org/drawingml/2006/main"
    xmlns:r="http://schemas.openxmlformats.org/officeDocument/2006/relationships"
    xmlns:p="http://schemas.openxmlformats.org/presentationml/2006/main">
    <p:cSld>
        {{>slide-background}}
        <p:spTree>
            <p:nvGrpSpPr>
                <p:cNvPr id="1" name=""/>
                <p:cNvGrpSpPr/>
                <p:nvPr/>
            </p:nvGrpSpPr>
            <p:grpSpPr>
                <a:xfrm>
                    <a:off x="0" y="0"/>
                    <a:ext cx="0" cy="0"/>
                    <a:chOff x="0" y="0"/>
                    <a:chExt cx="0" cy="0"/>
                </a:xfrm>
            </p:grpSpPr>
            <p:pic>
                <p:nvPicPr>
                    {{#image1}}
                    <p:cNvPr id="{{new-id}}" name="{{image1.name}}" descr="{{image1.description}}"/>
                    {{/image1}}
                    {{^image1}}
                    <p:cNvPr id="{{new-id}}" name="Image 1" descr="Image 1"/>
                    {{/image1}}
                    <p:cNvPicPr>
                        <a:picLocks noGrp="1"/>
                    </p:cNvPicPr>
                    <p:nvPr>
                        <p:ph type="pic" idx="21"/>
                    </p:nvPr>
                </p:nvPicPr>
                <p:blipFill>
                    <a:blip r:embed="rId{{imageId1}}">
                        <a:extLst/>
                    </a:blip>
                    <a:stretch>
                        <a:fillRect/>
                    </a:stretch>
                </p:blipFill>
                <p:spPr>
                  <a:xfrm>
                    <a:off x="1772330" y="722295"/>
                    <a:ext cx="6567291" cy="11020500"/>
                  </a:xfrm>
                  <a:prstGeom prst="rect">
                    <a:avLst/>
                  </a:prstGeom>
                </p:spPr>
            </p:pic>
            <p:pic>
                <p:nvPicPr>
                    {{#image2}}
                    <p:cNvPr id="{{new-id}}" name="{{image2.name}}" descr="{{image2.description}}"/>
                    {{/image2}}
                    {{^image2}}
                    <p:cNvPr id="{{new-id}}" name="Image 2" descr="Image 2"/>
                    {{/image2}}
                    <p:cNvPicPr>
                        <a:picLocks noGrp="1"/>
                    </p:cNvPicPr>
                    <p:nvPr>
                        <p:ph type="pic" idx="22"/>
                    </p:nvPr>
                </p:nvPicPr>
                <p:blipFill>
                    <a:blip r:embed="rId{{imageId2}}">
                        <a:extLst/>
                    </a:blip>
                    <a:stretch>
                        <a:fillRect/>
                    </a:stretch>
                </p:blipFill>
                <p:spPr>
                  <a:xfrm>
                    <a:off x="9028516" y="722295"/>
                    <a:ext cx="6567291" cy="11020500"/>
                  </a:xfrm>
                  <a:prstGeom prst="rect">
                    <a:avLst/>
                  </a:prstGeom>
                </p:spPr>
            </p:pic>
            <p:pic>
                <p:nvPicPr>
                    {{#image3}}
                    <p:cNvPr id="{{new-id}}" name="{{image3.name}}" descr="{{image3.description}}"/>
                    {{/image3}}
                    {{^image3}}
                    <p:cNvPr id="{{new-id}}" name="Image 3" descr="Image 3"/>
                    {{/image3}}
                    <p:cNvPicPr>
                        <a:picLocks noGrp="1"/>
                    </p:cNvPicPr>
                    <p:nvPr>
                        <p:ph type="pic" idx="23"/>
                    </p:nvPr>
                </p:nvPicPr>
                <p:blipFill>
                    <a:blip r:embed="rId{{imageId3}}">
                        <a:extLst/>
                    </a:blip>
                    <a:stretch>
                        <a:fillRect/>
                    </a:stretch>
                </p:blipFill>
                <p:spPr>
                  <a:xfrm>
                    <a:off x="16284702" y="679163"/>
                    <a:ext cx="6567291" cy="11020500"/>
                  </a:xfrm>
                  <a:prstGeom prst="rect">
                    <a:avLst/>
                  </a:prstGeom>
                </p:spPr>
            </p:pic>
<<<<<<< HEAD
=======
            <!-- Title on top layer -->
            {{#title}}
            <p:sp>
                <p:nvSpPr>
                    <p:cNvPr id="{{new-id}}" name="SLIDE TITLE"/>
                    <p:cNvSpPr txBox="1"/>
                    <p:nvPr/>
                </p:nvSpPr>
                <p:spPr>
                    <a:xfrm>
                        <a:off x="1070250" y="1024200"/>
                        <a:ext cx="10800000" cy="400000"/>
                    </a:xfrm>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
                <p:txBody>
                    <a:bodyPr anchor="t"/>
                    <a:lstStyle>
                        <a:lvl1pPr algn="l">
                            <a:defRPr sz="8400"/>
                        </a:lvl1pPr>
                    </a:lstStyle>
                    {{>text-value}}
                </p:txBody>
            </p:sp>
            {{/title}}

            <!-- Description body text -->
            {{#description}}
            <p:sp>
                <p:nvSpPr>
                    <p:cNvPr id="{{new-id}}" name="Description"/>
                    <p:cNvSpPr txBox="1">
                        <a:spLocks noGrp="1"/>
                    </p:cNvSpPr>
                    <p:nvPr>
                        <p:ph type="body" idx="1"/>
                    </p:nvPr>
                </p:nvSpPr>
                <p:spPr>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
                <p:txBody>
                    <a:bodyPr/>
                    <a:lstStyle/>
                    {{>text-value}}
                </p:txBody>
            </p:sp>
            {{/description}}

            <!-- Description body text -->
            {{#description}}
            <p:sp>
                <p:nvSpPr>
                    <p:cNvPr id="{{new-id}}" name="Description"/>
                    <p:cNvSpPr txBox="1">
                        <a:spLocks noGrp="1"/>
                    </p:cNvSpPr>
                    <p:nvPr>
                        <p:ph type="body" idx="1"/>
                    </p:nvPr>
                </p:nvSpPr>
                <p:spPr>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
                <p:txBody>
                    <a:bodyPr/>
                    <a:lstStyle/>
                    {{>text-value}}
                </p:txBody>
            </p:sp>
            {{/description}}

            <!-- Page number as image next to the logo (top-right) -->
            {{#imageId4}}
            <p:pic>
                <p:nvPicPr>
                    <p:cNvPr id="{{new-id}}" name="Page Number" descr="Page Number Badge"/>
                    <p:cNvPicPr>
                        <a:picLocks noGrp="1"/>
                    </p:cNvPicPr>
                    <p:nvPr/>
                </p:nvPicPr>
                <p:blipFill>
                    <a:blip r:embed="rId{{imageId4}}">
                        <a:extLst/>
                    </a:blip>
                    <a:stretch>
                        <a:fillRect/>
                    </a:stretch>
                </p:blipFill>
                <p:spPr>
                    <a:xfrm>
                        <a:off x="21400000" y="504000"/>
                        <a:ext cx="1905000" cy="635000"/>
                    </a:xfrm>
                    <a:prstGeom prst="ellipse">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
            </p:pic>
            {{/imageId4}}

            <!-- Logo image (top-right, below page number) -->
            {{#imageId5}}
            <p:pic>
                <p:nvPicPr>
                    <p:cNvPr id="{{new-id}}" name="Logo" descr="Company Logo"/>
                    <p:cNvPicPr>
                        <a:picLocks noGrp="1" noChangeAspect="1"/>
                    </p:cNvPicPr>
                    <p:nvPr/>
                </p:nvPicPr>
                <p:blipFill>
                    <a:blip r:embed="rId{{imageId5}}">
                        <a:extLst/>
                    </a:blip>
                    <a:stretch>
                        <a:fillRect/>
                    </a:stretch>
                </p:blipFill>
                <p:spPr>
                    <a:xfrm>
                        <a:off x="20200000" y="311000"/>
                        <a:ext cx="889000" cy="889000"/>
                    </a:xfrm>
                    <a:prstGeom prst="rect">
                        <a:avLst/>
                    </a:prstGeom>
                </p:spPr>
            </p:pic>
            {{/imageId5}}

>>>>>>> b174b2bc5d3c8c08ac0da99d526146eded274d6d
            {{>speaker-notes}}
        </p:spTree>
    </p:cSld>
    <p:clrMapOvr>
        <a:masterClrMapping/>
    </p:clrMapOvr>
<<<<<<< HEAD
    <p:transition xmlns:p14="http://schemas.microsoft.com/office/powerpoint/2010/main" spd="med" advClick="1"/>
</p:sld>''';''';
=======
    <p:transition spd="med"/>
</p:sld>''';
>>>>>>> b174b2bc5d3c8c08ac0da99d526146eded274d6d
